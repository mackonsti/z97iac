/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20150930-64 [Sep 30 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-IGPU.aml
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
 *     - Original devices (GFX0) (B0D3) and (HECI) renamed via Clover DSDT patching
 *     - Added needed code fixes to (IGPU) (HDAU) and (IMEI) for improved vanilla detection
 */

DefinitionBlock ("SSDT-IGPU.aml", "SSDT", 1, "Clover", "DevInj", 0x00000000)
{
    Method (\_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // Intel Corporation 4th Generation Core Processor Integrated Graphics Controller [8086:0412]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x06)
        {
            "AAPL,ig-platform-id", Buffer (0x04) {0x03, 0x00, 0x22, 0x0D},
            "hda-gfx",             Buffer (0x0A) {"onboard-2"},
            "model",               Buffer (0x2E) {"Intel Corporation HD Graphics 4600 Controller"}
        })
    }

    Method (\_SB.PCI0.HDAU._DSM, 4, NotSerialized)  // Intel Corporation 4th Generation Core Processor HD Audio Controller [8086:0c0c]
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

    Method (\_SB.PCI0.IMEI._DSM, 4, NotSerialized)  // Intel Corporation 9 Series Chipset Family ME Interface [8086:8cba]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x02)  // Intel 8 Series Chipset Family ME Interface [8086:8c3a]
        {
        //  "compatible", Buffer (0x0D) {"pci8086,8c3a"},
        //  "device-id",  Buffer (0x04) {0x3A, 0x8C, 0x00, 0x00},
        //  "IOName",     Buffer (0x0D) {"pci8086,8c3a"},
            "model",      Buffer (0x37) {"Intel Corporation 9 Series Chipset Family ME Interface"}
        })
    }
}

