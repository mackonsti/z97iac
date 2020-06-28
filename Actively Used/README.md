# Active Configuration

List of files used at the moment:

* config.plist → Latest tweaked Clover configuration
* DSDT.aml → Latest edited, improved custom DSDT
* SSDT-EHCI-OFF.aml → Allows to completely disable EHCI controller
* VirtualSMC.efi → Replaces **SMCHelper.efi** (installed by Clover) as VirtualSMC is used instead of FakeSMC
* USBPorts.kext → Updated USB ports injection for XHCI controller **only** (as EHCI is now disabled)

## Important Notes

A typical fix for the problem where *sleep and wake up* results to an apparent reboot:

```
$ cd /Library/Preferences/
$ sudo rm -rf com.apple.PowerManagement*
$ reboot
```

Reference: https://www.tonymacx86.com/threads/solved-sleep-shutdown.260947/
