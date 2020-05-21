/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20150930-64 [Sep 30 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-SATA.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003E8 (1000)
 *     Revision         0x01
 *     Checksum         0x00
 *     OEM ID           "Clover"
 *     OEM Table ID     "1"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20150930 (538249520)
 *
 *     - Original device (SAT0) renamed (SATA) via Clover DSDT patching
 *     - Adds compatibility ID only to (SATA) as (LPCB) is detected natively
 *
 *     References:
 *     /System/Library/Extensions/AppleLPC.kext/Contents/Info.plist
 *     /System/Library/Extensions/AppleAHCIPort.kext/Contents/Info.plist
 */

DefinitionBlock ("SSDT-SATA.aml", "SSDT", 1, "Clover", "DevInj", 0x00003000)
{
//  Method (\_SB.PCI0.LPCB._DSM, 4, NotSerialized)  // Intel Corporation 9 Series Chipset Family Z97 LPC Controller [8086:8cc4]
//  {
//      If (LEqual (Arg2, Zero))
//      {
//          Return (Buffer (One) {0x03})
//      }
//
//      Return (Package (0x0A)  // Intel 8 Series Chipset Family Z87 LPC Controller [8086:8c44]
//      {
//          "device-id",  Buffer (0x04) {0x44, 0x8C, 0x00, 0x00},
//          "compatible", Buffer (0x0D) {"pci8086,8c44"},
//          "IOName",     Buffer (0x0D) {"pci8086,8c44"},
//          "name",       Buffer (0x0D) {"pci8086,8c44"},
//          "model",      Buffer (0x3D) {"Intel Corporation 8 Series Chipset Family Z97 LPC Controller"}
//      })
//  }

    Method (\_SB.PCI0.SATA._DSM, 4, NotSerialized)  // Intel Corporation 9 Series Chipset Family SATA Controller [AHCI Mode] [8086:8c82]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x04)  // Intel 9 Series Chipset Family SATA Controller [8086:8c83]
        {
        //  "device-id",  Buffer (0x04) {0x02, 0x8C, 0x00, 0x00},
            "compatible", Buffer (0x0D) {"pci8086,8c83"},
        //  "IOName",     Buffer (0x0D) {"pci8086,8c83"},
        //  "name",       Buffer (0x0D) {"pci8086,8c83"},
            "model",      Buffer (0x3A) {"Intel Corporation 9 Series Chipset Family SATA Controller"}
        })
    }
}

