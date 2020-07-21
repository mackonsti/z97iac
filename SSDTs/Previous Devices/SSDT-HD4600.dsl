/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20150930-64 [Sep 30 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-HD4600.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000000 (0000)
 *     Revision         0x00
 *     Checksum         0x00
 *     OEM ID           "Clover"
 *     OEM Table ID     "1"
 *     OEM Revision     0x00000000 (00000)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20150930 (538249520)
 *
 *     - Removes device (GFX0) and replaces with (IGPU) for vanilla detection
 *     - Removes device (B0D3) and replaces with (HDAU) for vanilla detection
 */

DefinitionBlock ("SSDT-HD4600.aml", "SSDT", 1, "Clover", "DevInj", 0x00000000)
{
    External (\_SB_.PCI0, DeviceObj)
    External (\_SB_.PCI0.B0D3._ADR, UnknownObj)
    External (\_SB_.PCI0.GFX0._ADR, UnknownObj)

    Scope (\_SB.PCI0)
    {
        Name (GFX0._STA, Zero)

        Device (IGPU)  // Intel Corporation 4th Generation Core Processor Integrated Graphics Controller [8086:0412]
        {
            Name (_ADR, 0x00020000)
            Method (_INI, 0, NotSerialized)
            {
                \_SB.PCI0.GFX0._ADR = Zero
            }

            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One) {0x03})
                }

                Return (Package (0x06)
                {
                    "AAPL,ig-platform-id", Buffer (0x04) {0x03, 0x00, 0x22, 0x0D},
                    "hda-gfx",             Buffer (0x0A) {"onboard-2"},
                    "model",               Buffer (0x39) {"Intel Corporation Integrated HD Graphics 4600 Controller"}
                })
            }
        }

        Name (B0D3._STA, Zero)

        Device (HDAU)  // Intel Corporation 4th Generation Core Processor HD Audio Controller [8086:0c0c]
        {
            Name (_ADR, 0x00030000)
            Method (_INI, 0, NotSerialized)
            {
                \_SB.PCI0.B0D3._ADR = Zero
            }

            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One) {0x03})
                }

                Return (Package (0x08)
                {
                    "device_type", Buffer (0x06) {"audio"},
                    "hda-gfx",     Buffer (0x0A) {"onboard-2"},
                    "layout-id",   Buffer (0x04) {0x01, 0x00, 0x00, 0x00},
                    "model",       Buffer (0x35) {"Intel Corporation Core Processor HD Audio Controller"}
                })
            }
        }
    }
}

