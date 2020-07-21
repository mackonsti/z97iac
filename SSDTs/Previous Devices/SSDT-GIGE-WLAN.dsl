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
 *     - Added to detected network devices (PXSX) minor code fixes for vanilla detection
 */

DefinitionBlock ("SSDT-GIGE.aml", "SSDT", 1, "Clover", "DevInj", 0x00000000)
{
    Method (\_SB.PCI0.RP03.PXSX._DSM, 4, NotSerialized)  // Realtek Semiconductor RTL8111G PCI Express Gigabit Ethernet Controller [10ec:8168]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x06)
        {
            "built-in",    Buffer (0x01) {Zero},
            "device_type", Buffer (0x09) {"Ethernet"},
            "model",       Buffer (0x3B) {"Realtek Semiconductor RTL8111G Gigabit Ethernet Controller"}
        })
    }

    Method (\_SB.PCI0.RP04.PXSX._DSM, 4, NotSerialized)  // Realtek Semiconductor RTL8111G PCI Express Gigabit Ethernet Controller [10ec:8168]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x06)
        {
            "built-in",    Buffer (0x01) {Zero},
            "device_type", Buffer (0x09) {"Ethernet"},
            "model",       Buffer (0x3B) {"Realtek Semiconductor RTL8111G Gigabit Ethernet Controller"}
        })
    }

    Method (\_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)  // Broadcom Corporation BCM4352 802.11ac Wireless Network Adapter [14e4:43b1]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x0A)
        {
            "AAPL,slot-name",      Buffer (0x07) {"Slot-1"},
            "built-in",            Buffer (0x01) {Zero},
            "compatible",          Buffer (0x0D) {"pci14e4,43a0"},
        //  "IOName",              Buffer (0x0D) {"pci14e4,43a0"},
            "device_type",         Buffer (0x08) {"AirPort"},
        //  "device-id",           Buffer (0x04) {0xA0, 0x43, 0x00, 0x00},
        //  "vendor-id",           Buffer (0x04) {0xE4, 0x14, 0x00, 0x00},
        //  "subsystem-id",        Buffer (0x04) {0x34, 0x01, 0x00, 0x00},
        //  "subsystem-vendor-id", Buffer (0x04) {0x6B, 0x10, 0x00, 0x00},
            "model",               Buffer (0x48) {"Broadcom Corporation BCM4352 802.11 a/b/g/n/ac Wireless Network Adapter"}
        })
    }
}

