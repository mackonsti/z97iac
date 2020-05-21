/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20150930-64 [Sep 30 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-HACK.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003E8 (1000)
 *     Revision         0x01
 *     Checksum         0x00
 *     OEM ID           "Releas"
 *     OEM Table ID     "1"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20150930 (538249520)
 *
 *     - Adds other generic devices (MCHC) and (BUS0) for improved I/O device compatibility
 *     - Adds needed device (EC) by MacOS Catalina installation
 */

DefinitionBlock ("SSDT-OTHER.aml", "SSDT", 1, "Clover", "DevInj", 0x00003000)
{
    External (\_SB_.PCI0, DeviceObj)
    External (\_SB_.PCI0.SBUS, DeviceObj)
    External (\_SB_.PCI0.LPCB, DeviceObj)

    Scope (\_SB.PCI0)
    {
        Device (MCHC)  // Intel Corporation Core Processor DRAM Controller [8086:0c00]
        {
            Name (_ADR, Zero)
        }
    }

    Scope (\_SB.PCI0.SBUS)  // Intel Corporation 9 Series Chipset Family SMBus Controller [8086:8ca2]
    {
        Device (BUS0)
        {
            Name (_ADR, Zero)
            Name (_CID, "smbus")

            Device (DVL0)
            {
                Name (_ADR, 0x57)
                Name (_CID, "diagsvault")

                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One) {0x03})
                    }

                    Return (Package (0x02) {"address", 0x57})
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB)  // Intel Corporation 9 Series Chipset Family Z97 LPC Controller [8086:8cc4]
    {
        Device (EC)
        {
            Name (_HID, "EC000000")

            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

