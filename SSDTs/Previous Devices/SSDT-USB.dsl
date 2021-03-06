/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20150930-64 [Sep 30 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-USB.aml
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
 *     - Introduced minor code fixes to (EHC1) (EHC2) and (XHC)
 */

DefinitionBlock ("SSDT-USB.aml", "SSDT", 1, "Clover", "DevInj", 0x00000000)
{
    Method (\_SB.PCI0.EHC1._DSM, 4, NotSerialized)  // Intel Corporation 9 Series Chipset Family USB EHCI Controller #1 [8086:8ca6]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x10)
        {
            "AAPL,current-available",         0x0834,  // 2100mA
            "AAPL,current-extra",             0x0898,  // 2200mA
            "AAPL,current-in-sleep",          0x03E8,  // 1000mA
            "AAPL,current-extra-in-sleep",    0x0640,  // 1600mA
            "AAPL,max-port-current-in-sleep", 0x0834,  // 2100mA
            "AAPL,clock-id",                  Buffer (0x01) {0x01},
            "device_type",                    Buffer (0x05) {"EHCI"},
            "model",                          Buffer (0x3E) {"Intel Corporation 9 Series Chipset Family USB EHCI Controller"}
        })
    }

    Method (\_SB.PCI0.EHC2._DSM, 4, NotSerialized)  // Intel Corporation 9 Series Chipset Family USB EHCI Controller #2 [8086:8cad]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x10)
        {
            "AAPL,current-available",         0x0834,  // 2100mA
            "AAPL,current-extra",             0x0898,  // 2200mA
            "AAPL,current-in-sleep",          0x03E8,  // 1000mA
            "AAPL,current-extra-in-sleep",    0x0640,  // 1600mA
            "AAPL,max-port-current-in-sleep", 0x0834,  // 2100mA
            "AAPL,clock-id",                  Buffer (0x01) {0x02},
            "device_type",                    Buffer (0x05) {"EHCI"},
            "model",                          Buffer (0x3E) {"Intel Corporation 9 Series Chipset Family USB EHCI Controller"}
        })
    }

    Method (\_SB.PCI0.XHC._DSM, 4, NotSerialized)  // Intel Corporation 9 Series Chipset Family USB xHCI Controller [8086:8cb1]
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One) {0x03})
        }

        Return (Package (0x10)
        {
            "AAPL,current-available",         0x0834,  // 2100mA
            "AAPL,current-extra",             0x0898,  // 2200mA
            "AAPL,current-in-sleep",          0x03E8,  // 1000mA
            "AAPL,current-extra-in-sleep",    0x0640,  // 1600mA
            "AAPL,max-port-current-in-sleep", 0x0834,  // 2100mA
            "AAPL,clock-id",                  Buffer (0x01) {0x03},
            "device_type",                    Buffer (0x05) {"XHCI"},
            "model",                          Buffer (0x3E) {"Intel Corporation 9 Series Chipset Family USB XHCI Controller"}
        })
    }
}

