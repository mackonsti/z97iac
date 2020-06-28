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

2. Since the MSI firmware does *not* seemingly support native NVRAM, there is a need for a minimal use of UEFI drivers in Clover:

* ApfsDriverLoader.efi
* AptioMemoryFix.efi
* FSInject.efi
* VirtualSMC.efi

(The UEFI driver **AptioMemoryFix.efi** is the one that allows NVRAM to work in a transparent way, replacing older *OsxAptioFix.efi* driver).

**WARNING:** Sometimes, messing with NVRAM in OpenCore leads to NVRAM corruption in Clover, requiring BIOS reset via CMOS jumper (on the motherboard).