# Active Configuration

List of files used at the moment:

* config.plist → Latest tweaked Clover configuration
* DSDT.aml → Latest edited, improved custom DSDT
* SSDT-EHCI-OFF.aml → Allows to completely disable EHCI controller
* VirtualSMC.efi → Replaces **SMCHelper.efi** (installed by Clover) as VirtualSMC is used instead of FakeSMC
* USBPorts.kext → Updated USB ports injection for XHCI controller **only** (as EHCI is now disabled)

## Important Notes

1. A typical fix for the problem where *sleep and wake up* results to an apparent reboot:

```
$ cd /Library/Preferences/
$ sudo rm -rf com.apple.PowerManagement*
$ reboot
```

Reference: https://www.tonymacx86.com/threads/solved-sleep-shutdown.260947/

2. It seems that the MSI firmware does *not* support native NVRAM, so a minimal use of UEFI drivers in Clover consists of:

* ApfsDriverLoader.efi
* AptioMemoryFix.efi
* FSInject.efi
* VirtualSMC.efi

**Note:** The UEFI driver **AptioMemoryFix.efi** is the one that allows NVRAM to work in a transparent way, replacing older *OsxAptioFix.efi* driver.

**Note:** Neither UEFI driver **HFSPlus.efi** or **VBoxHfs.efi** are needed now, as the main system partition is formatted in APFS thus making use of the *ApfsDriverLoader.efi* driver. However, either driver **is needed** in order to boot from USB, for (re-)installing macOS or experiment with OpenCore!

**WARNING:** Sometimes, messing with NVRAM in OpenCore leads to NVRAM corruption in Clover, requiring BIOS reset via CMOS jumper (on the motherboard) as the system fails to boot.