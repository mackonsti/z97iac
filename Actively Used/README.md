# Actively Used Files

## Current BIOS Revision

E7851IMS.4A0 (v4.10)

## Current Clover Version Installed

These files have been running without issues on the official Clover **r5123.1** release on [Git Hub](https://github.com/CloverHackyColor/CloverBootloader/releases).

## Current Clover Configuration

Most of the configuration keys are set to **false** thus making a minimum needed set of patches, besides any device renaming.<br/>
Most notably, the following keys are used:

**Enabled ACPI/Boot/Kernel/System Options**
* `Name` set to `DSDT.aml` (loads the custom **DSDT.aml** present)
* `AddMCHC` (no longer used; adding device `MCHC` is now included in custom **DSDT.aml** used)
* `DeleteUnused` (no longer used; it normally deletes legacy devices from ACPI table)
* `FixRegions` (finds all floating regions in BIOS and corrects them in custom DSDT)
* `FixHeaders` (sanitizes headers to avoid kernel panics related to unprintable characters)
* `EnableC2`, `EnableC6`, `EnableC7` (enable the C2, C6 and C7 states generator, respectively)
* `PluginType` (allows native CPU power management)
* `NeverHibernate` (improves overall sleep)
* `NoEarlyProgress` (hides any verbose pre-boot output)
* `XMPDetection` (detect eXtreme Memory Profile for RAM since it is also enabled in BIOS)
* `PanicNoKextDump` (avoids kext-dumping in a panic situation for diagnosing problems)
* `InjectKexts` (needed as all kexts now reside in EFI partition)
* `InjectSystemID` (sets the SmUUID as the 'system-id' at boot)

**Note:** User **slice** (one of the Clover developers) confirmed that `DeleteUnused` deletes such legacy devices as
`CRT_`, `DVI_`, `SPKR`, `ECP_`, `LPT_`, `FDC_` that no longer exist anymore in modern motherboards.

**Clover Device Properties**
* Define graphics `AAPL,ig-platform-id` for Intel HD Graphics 4600
* Define audio `layout-id` for Realtek ALC892 HD Audio Controller
* Define the slot / country / device type of the Broadcom BCM4352 Wireless Adapter
* Define a compatible SATA controller (`pci8086,8c83` as Intel 9 Series Chipset)
* Define the `AAPL,slot-name` for PCI devices such as LAN1, LAN2 and MSI Radeon RX 560

**Renamed Devices**

None needed, as some are already present in the edited DSDT while others are taken care of by **AppleALC** and **WhateverGreen**.

## Current SSDTs Used

The `SSDT-EHCI-OFF.aml` is the only SSDT patch needed to completely disable both EHCI controller(s) so that we only use the XHCI controller for all USB ports.

## Important Notes

1. The `VirtualSMC.efi` driver (which is [no longer maintained](https://github.com/acidanthera/VirtualSMC/tree/master/EfiDriver)) is supposed to replace `SMCHelper.efi` that is installed by default with Clover, only if **VirtualSMC** is used instead of **FakeSMC** as we cannot have both. However, a recent comment by user **vit9696** (one of its developers) clarifies its presence and usefulness _only_ for people using FileVault 2. As this is not the scope of this project, _neither_ file is used in this Clover setup.

2. The `FSInject.efi` driver has been removed from this Clover setup as user **slice** (one of the Clover developers) confirmed it is no longer needed, despite being installed with Clover. Previous OS like Lion (10.7) and earler systems could load individual kexts during the boot process, whereas later systems like the recent Mojave (10.14) and Catalina (10.15) use the `unified prelinked kernel` process, thus rendering this Clover driver obsolete. Read more on "[The Early Boot Process](https://developer.apple.com/library/archive/documentation/Darwin/Conceptual/KernelProgramming/booting/booting.html)".

3. A typical fix for the problem where *sleep and wake up* results to an apparent PC reboot, is to delete these preferences and restart macOS:

```
$ cd /Library/Preferences/
$ sudo rm -rf com.apple.PowerManagement*
$ reboot
```

Reference: https://www.tonymacx86.com/threads/solved-sleep-shutdown.260947/

4. It seems that the MSI firmware does *not* support native NVRAM as expected, so a minimal use of UEFI drivers in Clover consists of:

* ApfsDriverLoader.efi
* AptioMemoryFix.efi
* HFSPlus.efi

**Note:** Driver `AptioMemoryFix.efi` is the one that allows NVRAM to work in a transparent way, replacing older `OsxAptioFix.efi` driver.

**Note:** For booting an installed Mojave system or newer, neither driver `HFSPlus.efi` or `VBoxHfs.efi` are needed, as the main system partition is (forcibly) formatted in APFS thus making use of the `ApfsDriverLoader.efi` driver. However, one of these drivers **is needed** when booting from USB for (re-)installing macOS or experiment with OpenCore.

**WARNING:** Sometimes, messing with NVRAM in OpenCore leads to NVRAM corruption in Clover, requiring BIOS reset via CMOS jumper (on the motherboard) as the system fails to boot.
