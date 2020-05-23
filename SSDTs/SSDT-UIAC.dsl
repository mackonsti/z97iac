/*
 * MSI Z97i-AC customization for USBInjectAll.kext
 *
 * Change the UsbConnector or portType as needed to match actual USB configuration:
 *
 *     UsbConnector = 0 for USB 2.0 connector(s)
 *     UsbConnector = 3 for USB 3.0 connector(s)
 *     UsbConnector = 255 for Internal connector(s)
 *
 *     portType = 0 for normal external USB 2.0 port(s)
 *     portType = 2 for internal device(s)
 *
 * Work by RehabMan at https://bitbucket.org/RehabMan/os-x-usb-inject-all/
 * Automation script by CorpNewt at https://github.com/corpnewt/USBMap/
 * Discussion at https://www.reddit.com/r/hackintosh/comments/9wkuc6/script_to_create_ssdtuiacamlinjector_kext/
 *
 */

DefinitionBlock ("SSDT-UIAC.aml", "SSDT", 1, "Clover", "UIAC", 0x00000000)
{
    Device (UIAC)
    {
        Name (_HID, "UIA00000")

        // Hardware location on MSI chassis
        //
        // HS01 - USB 2.0 just under the RIGHT Ethernet socket
        // HS02 - USB 2.0 under the RIGHT Ethernet socket at the bottom
        // HS03 - USB 2.0 just under the LEFT Ethernet socket
        // HS04 - USB 2.0 under the LEFT Ethernet socket at the bottom
        // HS05 - USB 2.0 just under the PS/2 Keyboard socket
        // HS06 - USB 2.0 under the PS/2 Keyboard socket at the bottom
        // HS07 - USB 2.0 internal device for Broadcom Bluetooth module
        // HS08 - Unused
        // HS09 - USB 2.0 Front panel/chassis BOTTOM USB port
        // HS10 - USB 2.0 Front panel/chassis TOP USB port
        // HS11 - Unused
        // HS12 - Unused
        // HS13 - Unused
        // HS14 - Unused
        // SS01 - USB 3.0 just under the RIGHT Ethernet socket
        // SS02 - USB 3.0 under the RIGHT Ethernet socket at the bottom
        // SS03 - USB 3.0 just under the LEFT Ethernet socket
        // SS04 - USB 3.0 under the LEFT Ethernet socket at the bottom
        // SS05 - USB 3.0 Front panel/chassis BOTTOM USB port
        // SS06 - USB 3.0 Front panel/chassis TOP USB port

        Name (RMCF, Package (0x0A)
        {
            "EH01", Package (0x04)
            {
                "port-count", Buffer (0x04) {0x01, Zero, Zero, Zero},  // Last port number used in list
                "ports", Package (0x02)
                {
                    "PR11", Package (0x04)
                    {
                        "UsbConnector", 0xFF,  // Define value depending on needed type i.e. internal or normal
                        "port", Buffer (0x04) {0x01, Zero, Zero, Zero},
                    },
//                  "PR12", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x02, Zero, Zero, Zero},
//                  },
//                  "PR13", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x03, Zero, Zero, Zero},
//                  },
//                  "PR14", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x04, Zero, Zero, Zero},
//                  },
//                  "PR15", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x05, Zero, Zero, Zero},
//                  },
//                  "PR16", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x06, Zero, Zero, Zero},
//                  },
//                  "PR17", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x07, Zero, Zero, Zero},
//                  },
//                  "PR18", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x08, Zero, Zero, Zero},
//                  },
                },
            },

            "EH02", Package (0x04)
            {
                "port-count", Buffer (0x04) {0x01, Zero, Zero, Zero},  // Last port number used in list
                "ports", Package (0x02)
                {
                    "PR21", Package (0x04)
                    {
                        "UsbConnector", 0xFF,  // Define value depending on needed type i.e. internal or normal
                        "port", Buffer (0x04) {0x01, Zero, Zero, Zero},
                    },
//                  "PR22", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x02, Zero, Zero, Zero},
//                  },
//                  "PR23", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x03, Zero, Zero, Zero},
//                  },
//                  "PR24", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x04, Zero, Zero, Zero},
//                  },
//                  "PR25", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x05, Zero, Zero, Zero},
//                  },
//                  "PR26", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x06, Zero, Zero, Zero},
//                  },
//                  "PR27", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x07, Zero, Zero, Zero},
//                  },
//                  "PR28", Package (0x04)
//                  {
//                      "UsbConnector", 0xFF,
//                      "port", Buffer (0x04) {0x08, Zero, Zero, Zero},
//                  },
                },
            },

            "HUB1", Package (0x04)
            {
                "port-count", Buffer (0x04) {0x08, Zero, Zero, Zero},  // Last port number used in list for EH01
                "ports", Package (0x10)
                {
                    "HP11", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x01, Zero, Zero, Zero},
                    },
                    "HP12", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x02, Zero, Zero, Zero},
                    },
                    "HP13", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x03, Zero, Zero, Zero},
                    },
                    "HP14", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x04, Zero, Zero, Zero},
                    },
                    "HP15", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x05, Zero, Zero, Zero},
                    },
                    "HP16", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x06, Zero, Zero, Zero},
                    },
                    "HP17", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x07, Zero, Zero, Zero},
                    },
                    "HP18", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x08, Zero, Zero, Zero},
                    },
                },
            },

            "HUB2", Package (0x04)
            {
                "port-count", Buffer (0x04) {0x06, Zero, Zero, Zero},  // Last port number used in list for EH02
                "ports", Package (0x0C)
                {
                    "HP21", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x01, Zero, Zero, Zero},
                    },
                    "HP22", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x02, Zero, Zero, Zero},
                    },
                    "HP23", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x03, Zero, Zero, Zero},
                    },
                    "HP24", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x04, Zero, Zero, Zero},
                    },
                    "HP25", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x05, Zero, Zero, Zero},
                    },
                    "HP26", Package (0x04)
                    {
                        "portType", Zero,
                        "port", Buffer (0x04) {0x06, Zero, Zero, Zero},
                    },

                  // HP27 does not appear to exist in most published configurations

                  // HP28 does not appear to exist in most published configurations
                },
            },

            "8086_8cb1", Package (0x04)  // Intel Corporation 9 Series Chipset Family USB XHCI Controller [8086:8cb1]
            {
                "port-count", Buffer (0x04) {0x15, Zero, Zero, Zero},  // Last port number used in list
                "ports", Package (0x1E)
                {
                    "HS01", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x01, Zero, Zero, Zero},
                    },
                    "HS02", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x02, Zero, Zero, Zero},
                    },
                    "HS03", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x03, Zero, Zero, Zero},
                    },
                    "HS04", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x04, Zero, Zero, Zero},
                    },
                    "HS05", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x05, Zero, Zero, Zero},
                    },
                    "HS06", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x06, Zero, Zero, Zero},
                    },
                    "HS07", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x07, Zero, Zero, Zero},
                    },
//                  "HS08", Package (0x04)
//                  {
//                      "UsbConnector", 3,
//                      "port", Buffer (0x04) {0x08, Zero, Zero, Zero},
//                  },
                    "HS09", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x09, Zero, Zero, Zero},
                    },
                    "HS10", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x0A, Zero, Zero, Zero},
                    },
//                  "HS11", Package (0x04)
//                  {
//                      "UsbConnector", 3,
//                      "port", Buffer (0x04) {0x0B, Zero, Zero, Zero},
//                  },
//                  "HS12", Package (0x04)
//                  {
//                      "UsbConnector", 3,
//                      "port", Buffer (0x04) {0x0C, Zero, Zero, Zero},
//                  },
//                  "HS13", Package (0x04)
//                  {
//                      "UsbConnector", 3,
//                      "port", Buffer (0x04) {0x0D, Zero, Zero, Zero},
//                  },
//                  "HS14", Package (0x04)
//                  {
//                      "UsbConnector", 3,
//                      "port", Buffer (0x04) {0x0E, Zero, Zero, Zero},
//                  },

                  // HS15 is a phantom port where port address 0x0F is not used

                    "SS01", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x10, Zero, Zero, Zero},
                    },
                    "SS02", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x11, Zero, Zero, Zero},
                    },
                    "SS03", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x12, Zero, Zero, Zero},
                    },
                    "SS04", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x13, Zero, Zero, Zero},
                    },
                    "SS05", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x14, Zero, Zero, Zero},
                    },
                    "SS06", Package (0x04)
                    {
                        "UsbConnector", 3,
                        "port", Buffer (0x04) {0x15, Zero, Zero, Zero},
                   },
               },
           },
        })
    }
}

