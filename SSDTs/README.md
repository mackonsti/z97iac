# Previous SSDTs Used

All the files found here are SSDTs previously used for this hardware. They were mainly used with previous versions of Clover and macOS, too. They are kept for reference purposes.

For the latest files used, see **Actively Used** folder.

Most of the SSDTs here injected a *Method* really, after enabling the respective *patch* in Clover:

	<dict>
		<key>Comment</key>
		<string>Rename _DSM to XDSM</string>
		<key>Disabled</key>
		<false/>
		<key>Find</key>
		<data>
		X0RTTQ==
		</data>
		<key>Replace</key>
		<data>
		WERTTQ==
		</data>
	</dict>

By renaming the native _DSM to XDSM, this allowed for custom Method (_DSM) to be injected via these SSDTs for device properties, mostly prior to macOS Catalina.

* SSDT-GIGE: Injected Methods for devices (LAN1) and (LAN2) properties;
* SSDT-HDEF: Injected Method for device (HDEF) properties and Layout ID;
* SSDT-SATA: Injected Methods for devices (LPCB) and (SATA) for compatibility;
* SSDT-USB: Injected Methods for devices (EH01) (EH02) (XHC) properties;
* SSDT-WLAN: Injected Method for device (ARPT) properties.

Additionally:

* SSDT-EHCI-OFF: A working code-injection that successfully disables the EHCI controller (useful for OpenCore);
* SDST-OTHER: Assign names to devices that appear otherwise nameless in IORegistryExplorer (like MCHC);
* SSDT-UIAC: Motherboard USB ports definition for using with *USBInjectAll.kext* thus solving USB problems;
* SSDT-XOSI: Routing of official _OSI calls in DSDT to XOSI via Clover patch, allowing for OS simulation.
