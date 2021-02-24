# Actively Used Files

## Current NUC BIOS Revision

E7851IMS.4A0 (v4.10)

## Current Clover Version Installed

These files have been running without issues on the official Clover **r5123.1** release on [Git Hub](https://github.com/CloverHackyColor/CloverBootloader/releases).

## Clover Files Used

List of files used at the moment:

* `config.plist` → Latest tweaked Clover configuration used
* `DSDT.aml` → Latest edited, improved and compiled custom `DSDT.dsl` code
* `SSDT-EHCI-OFF.aml` → Allows to completely disable the EHCI controller(s)
* `HFSPlus.efi` → Needed to boot HFS+ partitions like the macOS installer USB
* `USBPorts.kext` → Updated USB ports injection for XHCI controller **only** (as EHCI is now disabled)

## Important Notes

1. The `VirtualSMC.efi` driver (which is [no longer maintained](https://github.com/acidanthera/VirtualSMC/tree/master/EfiDriver)) is supposed to replace `SMCHelper.efi` that is installed by default with Clover, only if **VirtualSMC** is used instead of **FakeSMC** as we cannot have both. However, a recent comment by user **vit9696** (one of its developers) clarifies its presence and usefulness _only_ for people using FileVault 2. As this is not the scope of this project, _neither_ file is used in this Clover setup.

2. The `FSInject.efi` driver has been removed from this Clover setup as user **slice** (one of the Clover developers) confirmed it is no longer needed, despite being installed with Clover. Previous OS like Lion (10.7) and earler systems could load individual kexts during the boot process, whereas later systems like Mojave (10.14) and Catalina (10.15) use the `unified prelinked kernel` process, thus rendering this Clover driver obsolete. Read more on "[The Early Boot Process](https://developer.apple.com/library/archive/documentation/Darwin/Conceptual/KernelProgramming/booting/booting.html)".

3. A typical fix for the problem where *sleep and wake up* results to an apparent reboot, is to delete the preferences and reboot:

```
$ cd /Library/Preferences/
$ sudo rm -rf com.apple.PowerManagement*
$ reboot
```

Reference: https://www.tonymacx86.com/threads/solved-sleep-shutdown.260947/

4. It seems that the MSI firmware does *not* support native NVRAM as expected, so a minimal use of UEFI drivers in Clover consists of:

* ApfsDriverLoader.efi
* AptioMemoryFix.efi

**Note:** The driver `AptioMemoryFix.efi` is the one that allows NVRAM to work in a transparent way, replacing older `OsxAptioFix.efi` driver.

**Note:** For booting an installed system, neither driver `HFSPlus.efi` or `VBoxHfs.efi` are needed, as the main system partition is (forcibly) formatted in APFS thus making use of the **ApfsDriverLoader.efi** driver. However, one of these drivers **is needed** when booting from USB for (re-)installing macOS or experiment with OpenCore.

**WARNING:** Sometimes, messing with NVRAM in OpenCore leads to NVRAM corruption in Clover, requiring BIOS reset via CMOS jumper (on the motherboard) as the system fails to boot.
