/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20150930-64 [Sep 30 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-GIGE.aml
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
 *     - Original devices (PXSX) renamed (LAN1) (LAN2) via Clover DSDT patching
 */

DefinitionBlock ("SSDT-GIGE.aml", "SSDT", 1, "Clover", "DevInj", 0x00000000)
{
    Method (\_SB.PCI0.RP03.LAN1._DSM, 4, NotSerialized)  // Realtek Semiconductor RTL8111G PCI Express Gigabit Ethernet Controller [10ec:8168]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x06)
        {
            "built-in",    Buffer (0x01) {Zero},
            "device_type", Buffer (0x09) {"Ethernet"},
            "model",       Buffer (0x2D) {"Realtek RTL8111G Gigabit Ethernet Controller"}
        })
    }

    Method (\_SB.PCI0.RP04.LAN2._DSM, 4, NotSerialized)  // Realtek Semiconductor RTL8111G PCI Express Gigabit Ethernet Controller [10ec:8168]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x06)
        {
            "built-in",    Buffer (0x01) {Zero},
            "device_type", Buffer (0x09) {"Ethernet"},
            "model",       Buffer (0x2D) {"Realtek RTL8111G Gigabit Ethernet Controller"}
        })
    }
}

