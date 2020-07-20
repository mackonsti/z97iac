# DSDT Code Improvements & Edits

Version 1:
* Compilation without errors

Version 2:
* Compilation without warnings

Version 3:
* Added vanilla Device (MCHC)
* Added vanilla Device (EC)
* Added vanilla Device (PMCR)
* Added vanilla Device (BUS0) (DVL0) in Device (SBUS)
* Disabled Device (H_EC) via Method (_STA)

Version 4:
* Removed Method (_STA) from Device (MATH) to emulate iMac15,1
* Removed IRQNoFlags {8} from Device (RTC) to emulate iMac15,1
* Removed IRQNoFlags {0} from Device (TIMR) to emulate iMac15,1
* Removed Method (_PRW) from Device (PWRB) to emulate iMac15,1

## Various optimisations / Undetected device removals / Method removals

Version 5:
* Removed simple Device (B0D4)
* Removed simple Device (UAR1)
* Removed simple Device (CIR)
* Removed simple Device (NVM0)
* Removed simple Device (SAT1)
* Removed simple Device (WCAM)
* Removed simple Device (ICAM)
* Removed simple Device (GLAN) and reference(s)
* Device (HECI) is renamed to Device (IMEI) via WhateverGreen.kext
* Device (B0D3) is renamed to Device (HDAU) via WhateverGreen.kext
* Device (PXSX) is renamed to Device (ARPT) via AirportBrcmFixup.kext
* Device (SAT0) is renamed to Device (SATA) via Clover hot-patching
* Device (PXSX) is renamed to Device (LAN1) via Clover hot-patching
* Device (PXSX) is renamed to Device (LAN2) via Clover hot-patching

**Note:** Device (GFX0) is renamed to Device (IGPU) via WhateverGreen.kext

Version 6:
* Removed Device (PS2K) (PS2M) and reference(s)
* Renamed Device (PXSX) to Device (LAN1) (LAN2) (ARPT) respectively

Version 7:
* Removed simple Device (NFC)
* Removed simple Device (DFUD)
* Removed Method (_DSM) from Device (RP03)
* Removed Method (_DSM) from Device (RP04)
* Removed Method (_DSM) from Device (RP05)
* Removed Method (_DSM) from Device (PR12) (PR13) (PR14) (PR15) (PR16) (PR17)
* Removed Method (_DSM) from Device (LAN1)
* Removed Method (_DSM) from Device (LAN2)
* Removed Method (_DSM) from Device (ARPT)
* Removed Method (_INI) (_DSM) from Device (HECI)
* Removed Method (_DSM) from Device (HDEF)

Version 8:
* Removed Device (RP06) and reference(s)
* Removed Device (RP07) and reference(s)
* Removed Device (RP08) and reference(s)
* Removed Device (CDPT) (CRGB) in Scope (SSP4)

**Enabled deep sleep and deep idle properties:** per Pike R. Alpha, we can to obtain the following property:<br/>
`IOService:/AppleACPIPlatformExpert/IOPMrootDomain/IOPMDeepIdleSupported=True`

Version 9:
* Renamed Device (SAT0) to Device (SATA)
* Removed Device (BAT0) (BAT1) (BAT2) (LID0) (DOCK) and reference(s)
* Removed Method (_DSM) from Device (RP01)
* Removed Method (_DSM) from Device (RP02)
* Removed Method (_DSM) from Device (TPM) in Scope (LPCB)
* Removed Method (_PRW) from Device (PXSX) (PXSX) (LAN1) (LAN2) (ARPT)
* Removed Method (_PRW) from Device (RP01) (RP02) (RP03) (RP04) (RP05)
* Removed Method (_PRW) from Device (EHC1)
* Removed Method (_PRW) from Device (EHC2)
* Removed Method (_PRW) from Device (XHC)
* Removed Method (_PRW) from Device (HDEF)
* Removed Method (_INI) from Device (RHUB)
* Added code fix in Method (_WAK)
* Added Return (Zero) to fix various compiler warnings

**Regarding any sleep issues:** For each device in `pmset -g output`, GPRW should return `(0x09, 0x04)`<br/>
However, in more recent MacOS X systems, it is better to remove Method (_PRW) completely.
