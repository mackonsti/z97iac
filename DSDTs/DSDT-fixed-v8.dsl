/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT.aml, Fri May 1 15:27:30 2020
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0001294F (76111)
 *     Revision         0x02
 *     Checksum         0x0A
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I"
 *     OEM Revision     0x00000023 (35)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 *
 *     Version 1: Compilation without errors
 *     Version 2: Compilation without warnings
 *     Version 3: Improved Device (SBUS)
 *                Disabled Device (H_EC) via (_STA)
 *                Added vanilla Device (EC)
 *                Added vanilla Device (MCHC)
 *     Version 4: Renamed needed (PXSX) to (LAN1) (LAN2) (ARPT)
 *                Removed (B0D4) (UAR1) (CIR) (GLAN) (NVM0) (SAT1)
 *                        (PAGD) (DFUD) (NFC) (WCAM) (ICAM)
 *     Version 5: Removed (PS2K) (PS2M)
 *                Removed (H_EC) (BAT0) (BAT1) (BAT2) (LID0) (DOCK)
 *     Version 6: Removed (WMI1) and (WMIO)
 *                Renamed (HECI) to (IMEI)
 *                Renamed (HUBN) to (HUB1) and (HUB2) respectively
 *                Removed (CDPT) and (CRGB)
 *                Simplified Device (PR12) (PR13) (PR14) (PR15) (PR16) (PR17)
 *     Version 7: Removed Method (_PS0) and (_PS3) for (XHC) Power States
 *                Removed IRQNoFlags in Device (IPIC) (RTC) (TIMR)
 *                Set Device (HPET) (MATH) always active in Method (_STA)
 *     Version 8: Renamed Device (EHC1) (EHC2) to (EH01) (EH02)
 */

DefinitionBlock ("DSDT.aml", "DSDT", 2, "ALASKA", "A M I", 0x00000023)
{
    External (_PR_.BGIA, FieldUnitObj)
    External (_PR_.BGMA, FieldUnitObj)
    External (_PR_.BGMS, FieldUnitObj)
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.DTSE, FieldUnitObj)
    External (_PR_.DTSF, FieldUnitObj)
    External (_PR_.TRPD, FieldUnitObj)
    External (_PR_.TRPF, FieldUnitObj)
    External (_SB_.IAOE.ECTM)
    External (_SB_.IAOE.IBT1)
    External (_SB_.IAOE.ITMR)
    External (_SB_.IAOE.RCTM)
    External (_SB_.IAOE.WKRS)
    External (_SB_.PCCD)
    External (_SB_.PCCD.PENB)
    External (_SB_.PCI0.B0D3.ABAR, FieldUnitObj)
    External (_SB_.PCI0.B0D3.BARA, IntObj)
    External (_SB_.PCI0.EPON, MethodObj)
    External (_SB_.PCI0.GFX0.CLID, FieldUnitObj)
    External (_SB_.PCI0.GFX0.DD1F)
    External (_SB_.PCI0.GFX0.GLID, MethodObj)
    External (_SB_.PCI0.GFX0.GSCI, MethodObj)
    External (_SB_.PCI0.GFX0.GSSE, FieldUnitObj)
    External (_SB_.PCI0.GFX0.IUEH, MethodObj)
    External (_SB_.PCI0.GFX0.STAT, FieldUnitObj)
    External (_SB_.PCI0.GFX0.TCHE, FieldUnitObj)
//  Removed External (H_EC)
    External (_SB_.PCI0.PAUD.PUAM, MethodObj)
    External (_SB_.PCI0.PEG0.HPME, MethodObj)
    External (_SB_.PCI0.PEG1.HPME, MethodObj)
    External (_SB_.PCI0.PEG2.HPME, MethodObj)
    External (_SB_.PCI0.RP03.SCLK)
    External (_SB_.PCI0.RP04.SCLK)
    External (_SB_.PCI0.RP06.SCLK)
    External (_SB_.PCI0.XHC_.DUAM, MethodObj)
    External (_SB_.TPM_.PTS_, MethodObj)
    External (_TZ_.TZ00)
    External (_TZ_.TZ01)
    External (D1F0)
    External (D1F1)
    External (D1F2)
    External (DIDX, FieldUnitObj)
    External (GSMI, FieldUnitObj)
    External (IGDS, FieldUnitObj)
    External (INIR, MethodObj)
    External (LIDS, FieldUnitObj)
    External (M64B, FieldUnitObj)
    External (M64L, FieldUnitObj)
    External (MDBG, IntObj)
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)
    External (PS0X, MethodObj)
    External (PS2X, MethodObj)
    External (PS3X, MethodObj)
    External (SGMD, FieldUnitObj)

    Name (SP1O, 0x4E)
    Name (IO1B, Zero)
    Name (IO1L, Zero)
    Name (IO2B, 0x0A00)
    Name (IO2L, 0x10)
    Name (IO3B, 0x0A10)
    Name (IO3L, 0x10)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x10)
    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PMBA, 0x1800)
    Name (GPBA, 0x1C00)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (SMCR, 0x1830)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (FLSZ, 0x00680000)
    Name (SRCB, 0xFED1C000)
    Name (RCLN, 0x4000)
    Name (HPAM, One)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (LAPB, 0xFEE00000)
    Name (EGPB, 0xFED19000)
    Name (MCHB, 0xFED10000)
    Name (VTBS, 0xFED90000)
    Name (VTLN, 0x4000)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (MBEC, 0xFFFF)
    Name (SRSI, 0xB2)
    Name (CSMI, 0x61)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FUWS, 0x04)
    Name (FEMD, 0x04)
    Name (BGR, One)
    Name (BFR, 0x02)
    Name (BBR, 0x03)
    Name (BWC, 0x04)
    Name (BWT1, 0x20)
    Name (BFHC, 0x31)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (BGTI, 0x04)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (BW1P, 0x21)
    Name (BW2C, 0x22)
    Name (BW2P, 0x23)
    Name (BSPC, 0x24)
    Name (BSPP, 0x25)
    Name (BICO, 0x27)
    Name (BICC, 0x28)
    Name (BADH, 0x29)
    Name (BHB, 0x30)
    Name (BWB, 0x31)
    Name (BFS3, 0x32)
    Name (BFS4, 0x33)
    Name (BRH, 0x35)
    Name (BFCC, 0x43)
    Name (SBDT, 0x4A)
    Name (BPVC, 0x80)
    Name (BPVP, 0x81)
    Name (BRVC, 0x82)
    Name (BDVC, 0x83)
    Name (BSRC, 0x84)
    Name (BBRC, 0x85)
    Name (BSRP, 0x86)
    Name (BOBT, 0x37)
    Name (SMIA, 0xB2)
    Name (SMIB, 0xB3)
    Name (OFST, 0x35)
    Name (TPMF, Zero)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (TRST, 0x02)
    Name (HIDK, "MSFT0001")
    Name (HIDM, "MSFT0003")
    Name (CIDK, 0x0303D041)
    Name (CIDM, 0x030FD041)
    Name (PMLN, 0x0100)
    Name (GPLN, 0x0400)
    Name (FESI, 0xDB)
    Name (FDSI, 0xDC)
    Name (FSSI, 0xD9)
    Name (SMIP, 0xB2)
    Name (CISI, 0x88)
    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x0000)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)

    OperationRegion (GNVS, SystemMemory, 0xD97F9C18, 0x0362)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16,
        SMIF,   8,
        PRM0,   8,
        PRM1,   8,
        SCIF,   8,
        PRM2,   8,
        PRM3,   8,
        LCKF,   8,
        PRM4,   8,
        PRM5,   8,
        P80D,   32,
        PWRS,   8,
        DBGS,   8,
        THOF,   8,
        ACT1,   8,
        ACTT,   8,
        PSVT,   8,
        TC1V,   8,
        TC2V,   8,
        TSPV,   8,
        CRTT,   8,
        DTSE,   8,
        DTS1,   8,
        DTS2,   8,
        DTSF,   8,
        Offset (0x1E),
        Offset (0x25),
        REVN,   8,
        Offset (0x28),
        APIC,   8,
        TCNT,   8,
        PCP0,   8,
        PCP1,   8,
        PPCM,   8,
        PPMF,   32,
        C67L,   8,
        NATP,   8,
        CMAP,   8,
        CMBP,   8,
        LPTP,   8,
        FDCP,   8,
        CMCP,   8,
        CIRP,   8,
        SMSC,   8,
        W381,   8,
        SMC1,   8,
        EMAE,   8,
        EMAP,   16,
        EMAL,   16,
        Offset (0x42),
        MEFE,   8,
        DSTS,   8,
        TL2F,   32,
        MORD,   8,
        TCGP,   8,
        PPRP,   32,
        PPRQ,   8,
        LPPR,   8,
        GTF0,   56,
        GTF2,   56,
        IDEM,   8,
        GTF1,   56,
        BID,    16,
        PLID,   8,
        ECTG,   8,
        SDPO,   8,
        SKID,   8,
        Offset (0x70),
        OSCC,   8,
        NEXP,   8,
        SBV1,   8,
        SBV2,   8,
        Offset (0x7A),
        DSEN,   8,
        ECON,   8,
        GPIC,   8,
        CTYP,   8,
        L01C,   8,
        VFN0,   8,
        VFN1,   8,
        VFN2,   8,
        VFN3,   8,
        VFN4,   8,
        VFN5,   8,
        VFN6,   8,
        VFN7,   8,
        VFN8,   8,
        VFN9,   8,
        Offset (0x8F),
        ATMC,   8,
        PTMC,   8,
        ATRA,   8,
        PTRA,   8,
        PNHM,   32,
        Offset (0x9F),
        RTIP,   8,
        TSOD,   8,
        ATPC,   8,
        PTPC,   8,
        PFLV,   8,
        BREV,   8,
        PDTS,   8,
        PKGA,   8,
        PAMT,   8,
        AC0F,   8,
        AC1F,   8,
        DTS3,   8,
        DTS4,   8,
        SHFQ,   32,
        LTR1,   8,
        LTR2,   8,
        LTR3,   8,
        LTR4,   8,
        LTR5,   8,
        LTR6,   8,
        LTR7,   8,
        LTR8,   8,
        OBF1,   8,
        OBF2,   8,
        OBF3,   8,
        OBF4,   8,
        OBF5,   8,
        OBF6,   8,
        OBF7,   8,
        OBF8,   8,
        XHCI,   8,
        XTUB,   32,
        XTUS,   32,
        XMPB,   32,
        DDRF,   8,
        RTD3,   8,
        PEP0,   8,
        PEP3,   8,
        DPTF,   8,
        SADE,   8,
        SACR,   8,
        SAHT,   8,
        PCHD,   8,
        PCHC,   8,
        PCHH,   8,
        CTDP,   8,
        LPMP,   8,
        LPMV,   8,
        ECEU,   8,
        TGFG,   16,
        MEMD,   8,
        MEMC,   8,
        MEMH,   8,
        FND1,   8,
        FND2,   8,
        AMBD,   8,
        AMAT,   8,
        AMPT,   8,
        AMCT,   8,
        AMHT,   8,
        SKDE,   8,
        SKAT,   8,
        SKPT,   8,
        SKCT,   8,
        SKHT,   8,
        EFDE,   8,
        EFAT,   8,
        EFPT,   8,
        EFCT,   8,
        EFHT,   8,
        VRDE,   8,
        VRAT,   8,
        VRPT,   8,
        VRCT,   8,
        VRHT,   8,
        DPAP,   8,
        DPPP,   8,
        DPCP,   8,
        DCMP,   8,
        TRTV,   8,
        LPOE,   8,
        LPOP,   8,
        LPOS,   8,
        LPOW,   8,
        LPER,   8,
        PPSZ,   32,
        DISE,   8,
        BGMA,   64,
        BGMS,   8,
        BGIA,   16,
        ICNF,   8,
        DSP0,   32,
        DSP1,   32,
        NFCE,   8,
        DFUE,   8,
        CODS,   8,
        SNHE,   8,
        S0ID,   8,
        CTDB,   8,
        DKSM,   8,
        SIO1,   8,
        SIO2,   8,
        SPBA,   16,
        Offset (0x1FF),
        ULCK,   8,
        WIFD,   8,
        WFAT,   8,
        WFPT,   8,
        WFCT,   8,
        WFHT,   8,
        XHPR,   8,
        SDS0,   16,
        SDS1,   16,
        SDS2,   8,
        SDS3,   8,
        SDS4,   8,
        SDS5,   8,
        RIC0,   8,
        PEPY,   8,
        DVS0,   8,
        DVS1,   8,
        DVS2,   8,
        DVS3,   8,
        GBSX,   8,
        IUBE,   8,
        IUCE,   8,
        IUDE,   8,
        ECNO,   8,
        AUDD,   16,
        DSPD,   16,
        IC0D,   16,
        IC1D,   16,
        IC1S,   16,
        VRRD,   16,
        PSCP,   8,
        RWAG,   8,
        I20D,   16,
        I21D,   16,
        PLT0,   8,
        RCG0,   16,
        ECDB,   8,
        P2ME,   8,
        SSH0,   16,
        SSL0,   16,
        SSD0,   16,
        FMH0,   16,
        FML0,   16,
        FMD0,   16,
        FPH0,   16,
        FPL0,   16,
        FPD0,   16,
        SSH1,   16,
        SSL1,   16,
        SSD1,   16,
        FMH1,   16,
        FML1,   16,
        FMD1,   16,
        FPH1,   16,
        FPL1,   16,
        FPD1,   16,
        M0C0,   16,
        M1C0,   16,
        M2C0,   16,
        M0C1,   16,
        M1C1,   16,
        M2C1,   16,
        M0C2,   16,
        M1C2,   16,
        M0C3,   16,
        M1C3,   16,
        M0C4,   16,
        M1C4,   16,
        M0C5,   16,
        M1C5,   16,
        TBSF,   8,
        GIRQ,   32,
        DMTP,   8,
        DMTD,   8,
        DMSH,   8,
        LANP,   8,
        Offset (0x27E),
        SHSB,   8,
        PLCS,   8,
        PLVL,   16,
        GN1E,   8,
        G1AT,   8,
        G1PT,   8,
        G1CT,   8,
        G1HT,   8,
        GN2E,   8,
        G2AT,   8,
        G2PT,   8,
        G2CT,   8,
        G2HT,   8,
        WWSD,   8,
        CVSD,   8,
        SSDD,   8,
        INLD,   8,
        IFAT,   8,
        IFPT,   8,
        IFCT,   8,
        IFHT,   8,
        ANCS,   8,
        SHTP,   8,
        BCV4,   8,
        WTVX,   8,
        WITX,   8,
        APFU,   8,
        SOHP,   8,
        NOHP,   8,
        TBSE,   8,
        WKFN,   8,
        PEPC,   16,
        VRSD,   16,
        PB1E,   8,
        GNID,   8,
        WAND,   8,
        WWAT,   8,
        WWPT,   8,
        WWCT,   8,
        WWHT,   8,
        MPL0,   16,
        GR13,   8,
        CHGE,   8,
        Offset (0x2B2),
        SAC3,   8,
        PCH3,   8,
        MEM3,   8,
        AMC3,   8,
        SKC3,   8,
        EFC3,   8,
        VRC3,   8,
        WFC3,   8,
        G1C3,   8,
        G2C3,   8,
        IFC3,   8,
        WWC3,   8,
        WGC3,   8,
        SPST,   8,
        GN3E,   8,
        G3AT,   8,
        G3PT,   8,
        G3CT,   8,
        G3HT,   8,
        GN4E,   8,
        G4AT,   8,
        G4PT,   8,
        G4CT,   8,
        G4HT,   8,
        GN5E,   8,
        G5AT,   8,
        G5PT,   8,
        G5CT,   8,
        G5HT,   8,
        GN6E,   8,
        G6AT,   8,
        G6PT,   8,
        G6CT,   8,
        G6HT,   8,
        ECLP,   8,
        Offset (0x2D6),
        G3C3,   8,
        G4C3,   8,
        G5C3,   8,
        G6C3,   8,
        S1DE,   8,
        S1AT,   8,
        S1PT,   8,
        S1CT,   8,
        S1HT,   8,
        S2DE,   8,
        S2AT,   8,
        S2PT,   8,
        S2CT,   8,
        S2HT,   8,
        S3DE,   8,
        S3AT,   8,
        S3PT,   8,
        S3CT,   8,
        S3HT,   8,
        S4DE,   8,
        S4AT,   8,
        S4PT,   8,
        S4CT,   8,
        S4HT,   8,
        S5DE,   8,
        S5AT,   8,
        S5PT,   8,
        S5CT,   8,
        S5HT,   8,
        S6DE,   8,
        S6AT,   8,
        S6PT,   8,
        S6CT,   8,
        S6HT,   8,
        S7DE,   8,
        S7AT,   8,
        S7PT,   8,
        S7CT,   8,
        S7HT,   8,
        S1S3,   8,
        S2S3,   8,
        S3S3,   8,
        S4S3,   8,
        S5S3,   8,
        S6S3,   8,
        S7S3,   8,
        PSME,   8,
        PDT1,   8,
        PLM1,   16,
        PTW1,   16,
        PDT2,   8,
        PLM2,   16,
        PTW2,   16,
        DDT1,   8,
        DDP1,   8,
        DLI1,   16,
        DPL1,   16,
        DTW1,   16,
        DMI1,   16,
        DMA1,   16,
        DMT1,   16,
        DDT2,   8,
        DDP2,   8,
        DLI2,   16,
        DPL2,   16,
        DTW2,   16,
        DMI2,   16,
        DMA2,   16,
        DMT2,   16,
        WIFE,   8,
        DOM1,   8,
        LIM1,   16,
        TIM1,   16,
        DOM2,   8,
        LIM2,   16,
        TIM2,   16,
        DOM3,   8,
        LIM3,   16,
        TIM3,   16,
        TRD0,   8,
        TRL0,   8,
        TRD1,   8,
        TRL1,   8,
        DACT,   8,
        MPL1,   16,
        MPL2,   16,
        SATS,   16,
        PCTS,   16,
        SKTS,   16,
        TBTS,   8,
        ECGP,   8,
        IVDF,   8,
        WDM1,   8,
        CID1,   16,
        WDM2,   8,
        CID2,   16,
        ECR1,   8,
        DRMB,   64,
        EMOD,   8,
        INSC,   8
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x1B)
        {
            Package (0x04)
            {
                0x001FFFFF,
                Zero,
                LNKF,
                Zero
            },

            Package (0x04)
            {
                0x001FFFFF,
                One,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0x001FFFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0x001FFFFF,
                0x03,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x0014FFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x001DFFFF,
                Zero,
                LNKH,
                Zero
            },

            Package (0x04)
            {
                0x001AFFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x001BFFFF,
                Zero,
                LNKG,
                Zero
            },

            Package (0x04)
            {
                0x0019FFFF,
                Zero,
                LNKE,
                Zero
            },

            Package (0x04)
            {
                0x0016FFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x0016FFFF,
                One,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0x0016FFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0x0016FFFF,
                0x03,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0x001CFFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x001CFFFF,
                One,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0x001CFFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0x001CFFFF,
                0x03,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0x0001FFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x0001FFFF,
                One,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0x0001FFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0x0001FFFF,
                0x03,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0x0003FFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x0004FFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x0004FFFF,
                One,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0x0004FFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0x0004FFFF,
                0x03,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0x0002FFFF,
                Zero,
                LNKA,
                Zero
            }
        })
        Name (AR00, Package (0x1B)
        {
            Package (0x04)
            {
                0x001FFFFF,
                Zero,
                Zero,
                0x15
            },

            Package (0x04)
            {
                0x001FFFFF,
                One,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0x001FFFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0x001FFFFF,
                0x03,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x0014FFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x001DFFFF,
                Zero,
                Zero,
                0x17
            },

            Package (0x04)
            {
                0x001AFFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x001BFFFF,
                Zero,
                Zero,
                0x16
            },

            Package (0x04)
            {
                0x0019FFFF,
                Zero,
                Zero,
                0x14
            },

            Package (0x04)
            {
                0x0016FFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x0016FFFF,
                One,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0x0016FFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0x0016FFFF,
                0x03,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0x001CFFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x001CFFFF,
                One,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0x001CFFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0x001CFFFF,
                0x03,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0x0001FFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x0001FFFF,
                One,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0x0001FFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0x0001FFFF,
                0x03,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0x0003FFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x0004FFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x0004FFFF,
                One,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0x0004FFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0x0004FFFF,
                0x03,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0x0002FFFF,
                Zero,
                Zero,
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKD,
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKA,
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKB,
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKC,
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKD,
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKA,
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x10
            }
        })
        Name (PR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKB,
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x11
            }
        })
        Name (PR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKC,
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x12
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKD,
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x13
            }
        })
        Name (PR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKA,
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x10
            }
        })
        Name (PR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                LNKB,
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF,
                Zero,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0xFFFF,
                One,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0xFFFF,
                0x02,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0xFFFF,
                0x03,
                Zero,
                0x11
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40),
                EPEN,   1,
                    ,   11,
                EPBR,   20,
                Offset (0x48),
                MHEN,   1,
                    ,   14,
                MHBR,   17,
                Offset (0x50),
                GCLK,   1,
                Offset (0x54),
                D0EN,   1,
                D1F2,   1,
                D1F1,   1,
                D1F0,   1,
                Offset (0x60),
                PXEN,   1,
                PXSZ,   2,
                    ,   23,
                PXBR,   6,
                Offset (0x68),
                DIEN,   1,
                    ,   11,
                DIBR,   20,
                Offset (0x70),
                    ,   20,
                MEBR,   12,
                Offset (0x80),
                PMLK,   1,
                    ,   3,
                PM0H,   2,
                Offset (0x81),
                PM1L,   2,
                    ,   2,
                PM1H,   2,
                Offset (0x82),
                PM2L,   2,
                    ,   2,
                PM2H,   2,
                Offset (0x83),
                PM3L,   2,
                    ,   2,
                PM3H,   2,
                Offset (0x84),
                PM4L,   2,
                    ,   2,
                PM4H,   2,
                Offset (0x85),
                PM5L,   2,
                    ,   2,
                PM5H,   2,
                Offset (0x86),
                PM6L,   2,
                    ,   2,
                PM6H,   2,
                Offset (0x87),
                Offset (0xA8),
                    ,   20,
                TUUD,   19,
                Offset (0xBC),
                    ,   20,
                TLUD,   12,
                Offset (0xC8),
                    ,   7,
                HTSE,   1
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xE0000000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000010000, // Range Minimum
                    0x000000000001FFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000010000, // Length
                    ,, _Y0F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFE101000,         // Range Minimum
                    0xFE113FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00013000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Name (EP_B, Zero)
            Name (MH_B, Zero)
            Name (PC_B, Zero)
            Name (PC_L, Zero)
            Name (DM_B, Zero)
            Method (GEPB, 0, Serialized)
            {
                If ((EP_B == Zero))
                {
                    EP_B = (EPBR << 0x0C)
                }

                Return (EP_B) /* \_SB_.PCI0.EP_B */
            }

            Method (GMHB, 0, Serialized)
            {
                If ((MH_B == Zero))
                {
                    MH_B = (MHBR << 0x0F)
                }

                Return (MH_B) /* \_SB_.PCI0.MH_B */
            }

            Method (GPCB, 0, Serialized)
            {
                If ((PC_B == Zero))
                {
                    PC_B = (PXBR << 0x1A)
                }

                Return (PC_B) /* \_SB_.PCI0.PC_B */
            }

            Method (GPCL, 0, Serialized)
            {
                If ((PC_L == Zero))
                {
                    PC_L = (0x10000000 >> PXSZ) /* \_SB_.PCI0.PXSZ */
                }

                Return (PC_L) /* \_SB_.PCI0.PC_L */
            }

            Method (GDMB, 0, Serialized)
            {
                If ((DM_B == Zero))
                {
                    DM_B = (DIBR << 0x0C)
                }

                Return (DM_B) /* \_SB_.PCI0.DM_B */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Local0 = GPCL ()
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                PBMX = ((Local0 >> 0x14) - 0x02)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                PBLN = ((Local0 >> 0x14) - One)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                M1MX = 0xFEAFFFFF
                M1MN = (TLUD << 0x14)
                M1LN = ((M1MX - M1MN) + One)
                If ((OSYS <= 0x07D3))
                {
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._LEN, MSLN)  // Fixed Compiler Warning
                    MSLN = Zero
                }
                Else
                {
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._LEN, M2LN)  // _LEN: Length
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MIN, M2MN)  // _MIN: Minimum Base Address
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MAX, M2MX)  // _MAX: Maximum Base Address
                    M2LN = M64L /* External reference */
                    M2MN = M64B /* External reference */
                    M2MX = ((M2MN + M2LN) - One)
                }

                Return (BUF0) /* \_SB_.PCI0.BUF0 */
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                ElseIf ((OSYS >= 0x07DC))
                {
                    If ((XCNT == Zero))
                    {
                        ^XHC.XSEL ()
                        XCNT++
                    }
                }

                If ((Arg0 == GUID))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If ((NEXP == Zero))
                    {
                        CTRL &= 0xFFFFFFF8
                    }

                    If (NEXP)
                    {
                        If (~(CDW1 & One))
                        {
                            If ((CTRL & One))
                            {
                                NHPG ()
                            }

                            If ((CTRL & 0x04))
                            {
                                NPME ()
                            }
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (^^AR00) /* \_SB_.AR00 */
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (^^PR00) /* \_SB_.PR00 */
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (^^AR02) /* \_SB_.AR02 */
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (^^PR02) /* \_SB_.PR02 */
                }

                Method (AR04, 0, NotSerialized)
                {
                    Return (^^AR04) /* \_SB_.AR04 */
                }

                Method (PR04, 0, NotSerialized)
                {
                    Return (^^PR04) /* \_SB_.PR04 */
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (^^AR05) /* \_SB_.AR05 */
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (^^PR05) /* \_SB_.PR05 */
                }

                Method (AR06, 0, NotSerialized)
                {
                    Return (^^AR06) /* \_SB_.AR06 */
                }

                Method (PR06, 0, NotSerialized)
                {
                    Return (^^PR06) /* \_SB_.PR06 */
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (^^AR07) /* \_SB_.AR07 */
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (^^PR07) /* \_SB_.PR07 */
                }

                Method (AR08, 0, NotSerialized)
                {
                    Return (^^AR08) /* \_SB_.AR08 */
                }

                Method (PR08, 0, NotSerialized)
                {
                    Return (^^PR08) /* \_SB_.PR08 */
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (^^AR09) /* \_SB_.AR09 */
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (^^PR09) /* \_SB_.PR09 */
                }

                Method (AR0E, 0, NotSerialized)
                {
                    Return (^^AR0E) /* \_SB_.AR0E */
                }

                Method (PR0E, 0, NotSerialized)
                {
                    Return (^^PR0E) /* \_SB_.PR0E */
                }

                Method (AR0F, 0, NotSerialized)
                {
                    Return (^^AR0F) /* \_SB_.AR0F */
                }

                Method (PR0F, 0, NotSerialized)
                {
                    Return (^^PR0F) /* \_SB_.PR0F */
                }

                Method (AR0A, 0, NotSerialized)
                {
                    Return (^^AR0A) /* \_SB_.AR0A */
                }

                Method (PR0A, 0, NotSerialized)
                {
                    Return (^^PR0A) /* \_SB_.PR0A */
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (^^AR0B) /* \_SB_.AR0B */
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (^^PR0B) /* \_SB_.PR0B */
                }

                Device (PEG0)
                {
                    Name (_ADR, 0x00010000)  // _ADR: Address
                    Device (PEGP)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }

                Device (PEG1)
                {
                    Name (_ADR, 0x00010001)  // _ADR: Address
                    Device (PEGP)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }

                Device (PEG2)
                {
                    Name (_ADR, 0x00010002)  // _ADR: Address
                    Device (PEGP)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }

                Device (B0D3)  // Intel Corporation 4th Generation Core Processor HD Audio Controller [8086:0c0c]
                {
                    Name (_ADR, 0x00030000)  // _ADR: Address
                }

                Device (GFX0)  // Intel Corporation 4th Generation Core Processor Integrated Graphics Controller [8086:0412]
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                }

                // Removed Device (B0D4)

                Device (MCHC)  // Intel Corporation Core Processor DRAM Controller [8086:0c00]
                {
                    Name (_ADR, 0x00000000)  // _ADR: Address
                }
            }

            Device (TPMX)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0xFED40000,         // Address Base
                        0x00005000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (CRS) /* \_SB_.PCI0.TPMX.CRS_ */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (TPMF)
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }
            }

            Device (LPCB)  // Intel Corporation 9 Series Chipset Family Z97 LPC Controller [8086:8cc4]
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C01") /* System Board */)  // _CID: Compatible ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y10)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        HPAE = HPAM /* \HPAM */
                        Return (0x0F)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y10._BAS, HPT0)  // _BAS: Base Address
                            If ((HPAS == One))
                            {
                                HPT0 = 0xFED01000
                            }

                            If ((HPAS == 0x02))
                            {
                                HPT0 = 0xFED02000
                            }

                            If ((HPAS == 0x03))
                            {
                                HPT0 = 0xFED03000
                            }
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    //  IRQNoFlags ()
                    //      {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x1F)
                    }
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x1800,             // Range Minimum
                            0x1800,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (LDR2)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((PCHS == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                    //  IRQNoFlags ()
                    //      {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                    //  IRQNoFlags ()
                    //      {0}
                    })
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D") /* ACPI Motherboard Resources */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x1854,             // Range Minimum
                            0x1854,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0) /* \_SB_.PCI0.LPCB.CWDT.BUF0 */
                    }
                }

                Device (SIO1)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x0111)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y11)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y12)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y13)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y14)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y15)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (((SP1O < 0x03F0) && (SP1O > 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._MIN, GPI0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._MAX, GPI1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._LEN, GPIL)  // _LEN: Length
                            GPI0 = SP1O /* \SP1O */
                            GPI1 = SP1O /* \SP1O */
                            GPIL = 0x02
                        }

                        If (IO1B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y12._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y12._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y12._LEN, GPL1)  // _LEN: Length
                            GP10 = IO1B /* \IO1B */
                            GP11 = IO1B /* \IO1B */
                            GPL1 = IO1L /* \IO1L */
                        }

                        If (IO2B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y13._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y13._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y13._LEN, GPL2)  // _LEN: Length
                            GP20 = IO2B /* \IO2B */
                            GP21 = IO2B /* \IO2B */
                            GPL2 = IO2L /* \IO2L */
                        }

                        If (IO3B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y14._MIN, GP30)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y14._MAX, GP31)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y14._LEN, GPL3)  // _LEN: Length
                            GP30 = IO3B /* \IO3B */
                            GP31 = IO3B /* \IO3B */
                            GPL3 = IO3L /* \IO3L */
                        }

                        If (IO4B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y15._MIN, GP40)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y15._MAX, GP41)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y15._LEN, GPL4)  // _LEN: Length
                            GP40 = IO4B /* \IO4B */
                            GP41 = IO4B /* \IO4B */
                            GPL4 = IO4L /* \IO4L */
                        }

                        Return (CRS) /* \_SB_.PCI0.LPCB.SIO1.CRS_ */
                    }

                    Name (DCAT, Package (0x11)
                    {
                        0x02,
                        0x03,
                        One,
                        0xFF,
                        0xFF,
                        0xFF,
                        0xFF,
                        0xFF,
                        0xFF,
                        0xFF,
                        0x05,
                        0xFF,
                        0xFF,
                        0xFF,
                        0x05,
                        0xFF,
                        0x06
                    })
                    Mutex (MUT0, 0x00)
                    Method (ENFG, 1, NotSerialized)
                    {
                        Acquire (MUT0, 0xFFFF)  // Fixed Compiler Warning
                        INDX = 0x87
                        INDX = 0x87
                        LDN = Arg0
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        INDX = 0xAA
                        Release (MUT0)
                    }

                    Method (LPTM, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Local0 = (OPT0 & 0x02)
                        EXFG ()
                        Return (Local0)
                    }

                    Method (UHID, 1, NotSerialized)
                    {
                        If ((Arg0 == Zero))
                        {
                            Return (0x0105D041)
                        }

                        ENFG (CGLD (Arg0))
                        Local0 = (OPT1 & 0x30)
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x1005D041)
                        }
                        Else
                        {
                            Return (0x0105D041)
                        }
                    }

                    OperationRegion (IOID, SystemIO, SP1O, 0x02)
                    Field (IOID, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8,
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x07),
                        LDN,    8,
                        Offset (0x10),
                        CR10,   8,
                        CR11,   8,
                        CR12,   8,
                        CR13,   8,
                        CR14,   8,
                        Offset (0x1A),
                        CR1A,   8,
                        CR1B,   8,
                        CR1C,   8,
                        CR1D,   8,
                        Offset (0x22),
                        SCF2,   8,
                        SCF3,   8,
                        SCF4,   8,
                        SCF5,   8,
                        SCF6,   8,
                        SCF7,   8,
                        SCF8,   8,
                        CKCF,   8,
                        SCFA,   8,
                        SCFB,   8,
                        SCFC,   8,
                        SCFD,   8,
                        SCFE,   8,
                        SCFF,   8,
                        ACTR,   8,
                        Offset (0x60),
                        IOAH,   8,
                        IOAL,   8,
                        IOH2,   8,
                        IOL2,   8,
                        Offset (0x70),
                        INTR,   4,
                        INTT,   4,
                        Offset (0x74),
                        DMCH,   8,
                        Offset (0xE0),
                        RGE0,   8,
                        RGE1,   8,
                        RGE2,   8,
                        RGE3,   8,
                        RGE4,   8,
                        RGE5,   8,
                        RGE6,   8,
                        RGE7,   8,
                        RGE8,   8,
                        RGE9,   8,
                        Offset (0xF0),
                        OPT0,   8,
                        OPT1,   8,
                        OPT2,   8,
                        OPT3,   8,
                        OPT4,   8,
                        OPT5,   8,
                        OPT6,   8,
                        OPT7,   8,
                        OPT8,   8,
                        OPT9,   8
                    }

                    Method (CGLD, 1, NotSerialized)
                    {
                        Return (DerefOf (DCAT [Arg0]))
                    }

                    Method (DSTA, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Local0 = ACTR /* \_SB_.PCI0.LPCB.SIO1.ACTR */
                        If ((Local0 == 0xFF))
                        {
                            Return (Zero)
                        }

                        Local0 &= One
                        If ((Arg0 < 0x10))
                        {
                            IOST |= (Local0 << Arg0)
                        }

                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf ((Arg0 < 0x10))
                        {
                            If (((One << Arg0) & IOST))
                            {
                                Return (0x0D)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                        Else
                        {
                            Local0 = ((IOAH << 0x08) | IOAL) /* \_SB_.PCI0.LPCB.SIO1.IOAL */
                            If (Local0)
                            {
                                Return (0x0D)
                            }

                            Return (Zero)
                        }

                        EXFG ()
                    }

                    Method (DCNT, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        If (((DMCH < 0x04) && ((Local1 = (DMCH & 0x03)) != Zero)))
                        {
                            RDMA (Arg0, Arg1, Local1++)
                        }

                        ACTR = Arg1
                        Local1 = (IOAH << 0x08)
                        Local1 |= IOAL
                        RRIO (Arg0, Arg1, Local1, 0x08)
                        EXFG ()
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y18)
                        IRQNoFlags (_Y16)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y17)
                            {}
                    })
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y16._INT, IRQM)  // _INT: Interrupts
                    CreateByteField (CRS1, \_SB.PCI0.LPCB.SIO1._Y17._DMA, DMAM)  // _DMA: Direct Memory Access
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y18._MIN, IO11)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y18._MAX, IO12)  // _MAX: Maximum Base Address
                    CreateByteField (CRS1, \_SB.PCI0.LPCB.SIO1._Y18._LEN, LEN1)  // _LEN: Length
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1B)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1C)
                        IRQNoFlags (_Y19)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1A)
                            {}
                    })
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y19._INT, IRQE)  // _INT: Interrupts
                    CreateByteField (CRS2, \_SB.PCI0.LPCB.SIO1._Y1A._DMA, DMAE)  // _DMA: Direct Memory Access
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y1B._MIN, IO21)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y1B._MAX, IO22)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.LPCB.SIO1._Y1B._LEN, LEN2)  // _LEN: Length
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y1C._MIN, IO31)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y1C._MAX, IO32)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.LPCB.SIO1._Y1C._LEN, LEN3)  // _LEN: Length
                    Method (DCRS, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IO11 = (IOAH << 0x08)
                        IO11 |= IOAL /* \_SB_.PCI0.LPCB.SIO1.IO11 */
                        IO12 = IO11 /* \_SB_.PCI0.LPCB.SIO1.IO11 */
                        LEN1 = 0x08
                        If (INTR)
                        {
                            IRQM = (One << INTR) /* \_SB_.PCI0.LPCB.SIO1.INTR */
                        }
                        Else
                        {
                            IRQM = Zero
                        }

                        If (((DMCH > 0x03) || (Arg1 == Zero)))
                        {
                            DMAM = Zero
                        }
                        Else
                        {
                            Local1 = (DMCH & 0x03)
                            DMAM = (One << Local1)
                        }

                        EXFG ()
                        Return (CRS1) /* \_SB_.PCI0.LPCB.SIO1.CRS1 */
                    }

                    Method (DCR2, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IO21 = (IOAH << 0x08)
                        IO21 |= IOAL /* \_SB_.PCI0.LPCB.SIO1.IO21 */
                        IO22 = IO21 /* \_SB_.PCI0.LPCB.SIO1.IO21 */
                        LEN2 = 0x08
                        IO31 = (IOH2 << 0x08)
                        IO31 |= IOL2 /* \_SB_.PCI0.LPCB.SIO1.IO31 */
                        IO32 = IO31 /* \_SB_.PCI0.LPCB.SIO1.IO31 */
                        LEN3 = 0x08
                        If (INTR)
                        {
                            IRQE = (One << INTR) /* \_SB_.PCI0.LPCB.SIO1.INTR */
                        }
                        Else
                        {
                            IRQE = Zero
                        }

                        If (((DMCH > 0x03) || (Arg1 == Zero)))
                        {
                            DMAE = Zero
                        }
                        Else
                        {
                            Local1 = (DMCH & 0x03)
                            DMAE = (One << Local1)
                        }

                        EXFG ()
                        Return (CRS2) /* \_SB_.PCI0.LPCB.SIO1.CRS2 */
                    }

                    Method (DSRS, 2, NotSerialized)
                    {
                        If (((Arg1 == 0x02) & LPTM (Arg1)))
                        {
                            DSR2 (Arg0, Arg1)
                        }
                        Else
                        {
                            CreateWordField (Arg0, 0x09, IRQM)
                            CreateByteField (Arg0, 0x0C, DMAM)
                            CreateWordField (Arg0, 0x02, IO11)
                            ENFG (CGLD (Arg1))
                            IOAL = (IO11 & 0xFF)
                            IOAH = (IO11 >> 0x08)
                            If (IRQM)
                            {
                                FindSetRightBit (IRQM, Local0)
                                INTR = (Local0 - One)
                            }
                            Else
                            {
                                INTR = Zero
                            }

                            If (DMAM)
                            {
                                FindSetRightBit (DMAM, Local0)
                                DMCH = (Local0 - One)
                            }
                            Else
                            {
                                DMCH = 0x04
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                            Local2 = Arg1
                            If ((Local2 > Zero))
                            {
                                Local2 -= One
                            }
                        }
                    }

                    Method (DSR2, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x11, IRQE)
                        CreateByteField (Arg0, 0x14, DMAE)
                        CreateWordField (Arg0, 0x02, IO21)
                        CreateWordField (Arg0, 0x0A, IO31)
                        ENFG (CGLD (Arg1))
                        IOAL = (IO21 & 0xFF)
                        IOAH = (IO21 >> 0x08)
                        IOL2 = (IO31 & 0xFF)
                        IOH2 = (IO31 >> 0x08)
                        If (IRQE)
                        {
                            FindSetRightBit (IRQE, Local0)
                            INTR = (Local0 - One)
                        }
                        Else
                        {
                            INTR = Zero
                        }

                        If (DMAE)
                        {
                            FindSetRightBit (DMAE, Local0)
                            DMCH = (Local0 - One)
                        }
                        Else
                        {
                            DMCH = 0x04
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                        Local2 = Arg1
                        If ((Local2 > Zero))
                        {
                            Local2 -= One
                        }
                    }
                }

                Name (PMFG, Zero)
                Method (SIOS, 1, NotSerialized)
                {
                    Debug = "SIOS"
                    If ((0x05 != Arg0))
                    {
                        ^SIO1.ENFG (0x0A)
                        If (KBFG)
                        {
                            ^SIO1.OPT6 |= 0x10
                        }
                        Else
                        {
                            ^SIO1.OPT6 &= 0xEF
                        }

                        If (MSFG)
                        {
                            ^SIO1.OPT6 |= 0x20
                        }
                        Else
                        {
                            ^SIO1.OPT6 &= 0xDF
                        }

                        ^SIO1.OPT3 = 0xFF
                        ^SIO1.OPT4 = 0xFF
                        ^SIO1.OPT2 |= One /* \_SB_.PCI0.LPCB.SIO1.OPT2 */
                        ^SIO1.EXFG ()
                    }
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Debug = "SIOW"
                    ^SIO1.ENFG (0x0A)
                    PMFG = ^SIO1.OPT3 /* \_SB_.PCI0.LPCB.SIO1.OPT3 */
                    ^SIO1.OPT3 = 0xFF
                    ^SIO1.OPT6 &= 0xCF
                    ^SIO1.OPT2 &= 0xFE /* \_SB_.PCI0.LPCB.SIO1.OPT2 */
                    ^SIO1.EXFG ()
                    ^SIO1.ENFG (0x0A)
                    ^SIO1.RGE0 &= 0x9F
                //  Removed Section
                    ^SIO1.RGE4 &= 0xFB
                //  Removed Section
                    ^SIO1.RGE6 &= 0x7F
                //  Removed Section
                    ^SIO1.EXFG ()
                }

                // Removed Method (SIOH)

                // Removed Device (PS2K)

                Scope (\)
                {
                    Name (KBFG, One)
                }

                // Removed Method (PS2K)

                // Removed Device (PS2M)

                Scope (\)
                {
                    Name (MSFG, One)
                }

                // Removed Method (PS2M)

                // Removed Device (UAR1)

                // Removed Device (CIR)

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((MBEC & 0xFFFF))
                        {
                            Return (CRS1) /* \_SB_.PCI0.LPCB.RMSC.CRS1 */
                        }
                        Else
                        {
                            Return (CRS2) /* \_SB_.PCI0.LPCB.RMSC.CRS2 */
                        }
                    }
                }

                // Removed Device (WMI1)

                Scope (\_SB)
                {
                    Name (LUCD, Buffer (0x7D)
                    {
                        /* 0000 */  0x4C, 0x75, 0x63, 0x69, 0x64, 0x4C, 0x6F, 0x67,  // LucidLog
                        /* 0008 */  0x69, 0x78, 0x00, 0x68, 0x00, 0x01, 0x00, 0x01,  // ix.h....
                        /* 0010 */  0x00, 0x00, 0x00, 0xFD, 0xC6, 0x38, 0x37, 0x32,  // .....872
                        /* 0018 */  0x36, 0x65, 0x33, 0x36, 0x65, 0x39, 0x64, 0x36,  // 6e36e9d6
                        /* 0020 */  0x64, 0x35, 0x33, 0x36, 0x34, 0x36, 0x33, 0x39,  // d5364639
                        /* 0028 */  0x30, 0x64, 0x34, 0x39, 0x35, 0x62, 0x34, 0x63,  // 0d495b4c
                        /* 0030 */  0x65, 0x39, 0x64, 0x63, 0x31, 0x33, 0x36, 0x30,  // e9dc1360
                        /* 0038 */  0x64, 0x33, 0x32, 0x35, 0x62, 0x39, 0x38, 0x31,  // d325b981
                        /* 0040 */  0x33, 0x61, 0x31, 0x31, 0x30, 0x31, 0x61, 0x66,  // 3a1101af
                        /* 0048 */  0x61, 0x32, 0x36, 0x31, 0x36, 0x30, 0x39, 0x35,  // a2616095
                        /* 0050 */  0x35, 0x66, 0x64, 0x66, 0x66, 0x30, 0x30, 0x30,  // 5fdff000
                        /* 0058 */  0x30, 0x32, 0x36, 0x36, 0x44, 0x63, 0x65, 0x64,  // 0266Dced
                        /* 0060 */  0x31, 0x36, 0x35, 0x31, 0x36, 0x33, 0x65, 0x35,  // 165163e5
                        /* 0068 */  0x31, 0x65, 0x30, 0x36, 0x65, 0x30, 0x31, 0x64,  // 1e06e01d
                        /* 0070 */  0x63, 0x34, 0x34, 0x63, 0x33, 0x35, 0x66, 0x65,  // c44c35fe
                        /* 0078 */  0x61, 0x33, 0x65, 0x61, 0x66                     // a3eaf
                    })
                }

                Device (EC)  // Added vanilla device
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

            Device (RP01)  // Intel Corporation 9 Series Chipset Family PCI Express Root Port 1 [8086:8c90]
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP01._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP01.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP01.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP01.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04 ())
                    }

                    Return (PR04 ())
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP02._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP02.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP02.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP02.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }
            }

            Device (RP03)  // Intel Corporation 9 Series Chipset Family PCI Express Root Port 3 [8086:8c94]
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP03._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP03.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (LAN1)  // Realtek Semiconductor RTL8111G PCI Express Gigabit Ethernet Controller [10ec:8168]
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP03.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP03.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (LAN1, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06 ())
                    }

                    Return (PR06 ())
                }
            }

            Device (RP04)  // Intel Corporation 9 Series Chipset Family PCI Express Root Port 4 [8086:8c96]
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP04._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP04.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (LAN2)  // Realtek Semiconductor RTL8111G PCI Express Gigabit Ethernet Controller [10ec:8168]
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP04.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP04.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (LAN2, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07 ())
                    }

                    Return (PR07 ())
                }
            }

            Device (RP05)  // Intel Corporation 9 Series Chipset Family PCI Express Root Port 5 [8086:8c98]
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP05._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP05.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (ARPT)  // Broadcom Corporation BCM4352 802.11ac Wireless Network Adapter [14e4:43b1]
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP05.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP05.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (ARPT, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08 ())
                    }

                    Return (PR08 ())
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP06._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP06.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP06.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP06.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09 ())
                    }

                    Return (PR09 ())
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP07._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP07.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP07.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP07.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E ())
                    }

                    Return (PR0E ())
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32,
                    Offset (0x19),
                    SBNR,   8,
                    Offset (0x50),
                    L0SE,   1,
                        ,   3,
                    LDIS,   1,
                    Offset (0x51),
                    Offset (0x52),
                        ,   13,
                    LASX,   1,
                    Offset (0x54),
                        ,   6,
                    HPCE,   1,
                    Offset (0x5A),
                    ABPX,   1,
                        ,   2,
                    PDCX,   1,
                        ,   2,
                    PDSX,   1,
                    Offset (0x5B),
                    Offset (0x60),
                    Offset (0x62),
                    PSPX,   1,
                    PMEP,   1,
                    Offset (0xA4),
                    D3HT,   2,
                    Offset (0xD8),
                        ,   30,
                    HPEX,   1,
                    PMEX,   1,
                    Offset (0xE2),
                        ,   2,
                    L23E,   1,
                    L23R,   1,
                    Offset (0x324),
                        ,   3,
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC),
                        ,   30,
                    HPSX,   1,
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (RPAV, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = One
                                    If (LTRE)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = One
                                    }

                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP08._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Zero) || (LNSL == Zero)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP08.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (One)
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 < 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (Package (0x05)
                                    {
                                        0xC350,
                                        Ones,
                                        Ones,
                                        0xC350,
                                        Ones
                                    })
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE) /* \_SB_.PCI0.RP08.HPCE */
                    }
                }

                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (((Arg0 == 0x02) && (Arg1 == One)))
                    {
                        RPAV = One
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If ((PSPX || PMEP))
                    {
                        Local1 = PMEX /* \_SB_.PCI0.RP08.PMEX */
                        PMEX = Zero
                        Sleep (0x32)
                        PSPX = One
                        Sleep (0x32)
                        If (PSPX)
                        {
                            PSPX = One
                            Sleep (0x32)
                        }

                        PMEX = Local1
                    }

                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F ())
                    }

                    Return (PR0F ())
                }
            }

            // Removed Section
        }

        Scope (\_GPE)
        {
            Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
            //  Removed Section (SIOH)
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
         // Removed Method (_PRW)
        }
    }

    Name (PNVB, 0xD97FAD98)
    Name (PNVL, 0x00E4)
    OperationRegion (PNVA, SystemMemory, PNVB, PNVL)
    Field (PNVA, AnyAcc, Lock, Preserve)
    {
        RCRV,   32,
        PCHS,   16,
        PCHG,   16,
        RPA0,   32,
        RPA1,   32,
        RPA2,   32,
        RPA3,   32,
        RPA4,   32,
        RPA5,   32,
        RPA6,   32,
        RPA7,   32,
        SRMB,   32,
        ADB0,   32,
        ADB1,   32,
        ADI0,   32,
        GPMN,   32,
        GPMX,   32,
        PML1,   16,
        PML2,   16,
        PML3,   16,
        PML4,   16,
        PML5,   16,
        PML6,   16,
        PML7,   16,
        PML8,   16,
        PNL1,   16,
        PNL2,   16,
        PNL3,   16,
        PNL4,   16,
        PNL5,   16,
        PNL6,   16,
        PNL7,   16,
        PNL8,   16,
        U0C0,   32,
        U1C0,   32,
        ADFM,   32,
        ADBT,   8,
        XHPC,   8,
        XRPC,   8,
        XSPC,   8,
        XSPA,   8,
        SMD0,   8,
        SMD1,   8,
        SMD2,   8,
        SMD3,   8,
        SMD4,   8,
        SMD5,   8,
        SMD6,   8,
        SMD7,   8,
        SIR0,   8,
        SIR1,   8,
        SIR2,   8,
        SIR3,   8,
        SIR4,   8,
        SIR5,   8,
        SIR6,   8,
        SIR7,   8,
        SB00,   32,
        SB01,   32,
        SB02,   32,
        SB03,   32,
        SB04,   32,
        SB05,   32,
        SB06,   32,
        SB07,   32,
        SB10,   32,
        SB11,   32,
        SB12,   32,
        SB13,   32,
        SB14,   32,
        SB15,   32,
        SB16,   32,
        SB17,   32,
        SMGP,   8,
        GBEP,   8,
        PMSI,   8,
        PMCP,   8,
        PCLP,   8,
        PL1P,   16,
        PL1A,   32,
        PL1B,   8,
        PEPL,   16,
        PRPL,   16,
        PCIT,   8,
        PLTP,   16,
        PLTD,   32,
        PED2,   16,
        PRDC,   16,
        PED1,   16,
        PCHP,   16,
        XWMB,   32
    }

    Name (LPTH, One)
    Name (LPTL, 0x02)
    Name (WPTL, 0x03)
    Method (PCHV, 0, NotSerialized)
    {
        If (((PCHG == One) && (PCHS == One)))
        {
            Return (LPTH) /* \LPTH */
        }

        If (((PCHG == One) && (PCHS == 0x02)))
        {
            Return (LPTL) /* \LPTL */
        }

        If (((PCHG == 0x02) && (PCHS == 0x02)))
        {
            Return (WPTL) /* \WPTL */
        }

        Return (Zero)
    }

    Method (LXDH, 0, NotSerialized)
    {
        \_SB.PCI0.XHC.GPEH ()
        \_SB.PCI0.EH01.GPEH ()
        \_SB.PCI0.EH02.GPEH ()
        \_SB.PCI0.HDEF.GPEH ()
    //  Removed Section (GLAN)
    }

    If ((PCHS == 0x02))
    {
        Scope (_GPE)
        {
            Method (_L6D, 0, Serialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                LXDH ()
            }
        }
    }
    Else
    {
        Scope (_GPE)
        {
            Method (_L0D, 0, Serialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                LXDH ()
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (LPC, PCI_Config, Zero, 0x0100)
        Field (LPC, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02),
            CDID,   16,
            Offset (0x08),
            CRID,   8,
            Offset (0x40),
                ,   7,
            ACBA,   9,
            Offset (0x48),
                ,   7,
            GPBA,   9,
            Offset (0x60),
            PARC,   8,
            PBRC,   8,
            PCRC,   8,
            PDRC,   8,
            Offset (0x68),
            PERC,   8,
            PFRC,   8,
            PGRC,   8,
            PHRC,   8,
            Offset (0x80),
            IOD0,   8,
            IOD1,   8,
            Offset (0xA0),
                ,   9,
            PRBL,   1,
            Offset (0xAC),
            Offset (0xAD),
            Offset (0xAE),
            XUSB,   1,
            Offset (0xB8),
                ,   6,
            GR03,   2,
            Offset (0xBA),
            GR08,   2,
            GR09,   2,
            GR0A,   2,
            GR0B,   2,
            Offset (0xBC),
                ,   2,
            GR19,   2,
            Offset (0xC0),
            Offset (0xF0),
            RAEN,   1,
                ,   13,
            RCBA,   18
        }
    }

    Scope (_SB)
    {
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PARC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLA, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLA, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PARC & 0x0F))
                Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PARC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PARC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PBRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLB, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLB, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PBRC & 0x0F))
                Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PBRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PBRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PCRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLC, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLC, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PCRC & 0x0F))
                Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PCRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PCRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PDRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLD, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLD, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PDRC & 0x0F))
                Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PDRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PDRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PERC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLE, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLE, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PERC & 0x0F))
                Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PERC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PERC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PFRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLF, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLF, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PFRC & 0x0F))
                Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PFRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PFRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PGRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLG, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLG, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PGRC & 0x0F))
                Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PGRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PGRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                ^^PCI0.LPCB.PHRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLH, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLH, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (^^PCI0.LPCB.PHRC & 0x0F))
                Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                ^^PCI0.LPCB.PHRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.PHRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }
    }

    Scope (\)
    {
        Name (PMBV, Zero)
        Method (PMBS, 0, NotSerialized)
        {
            If ((PMBV == Zero))
            {
                PMBV = (\_SB.PCI0.LPCB.ACBA << 0x07)
            }

            Return (PMBV) /* \PMBV */
        }

        Name (GPBV, Zero)
        Method (GPBS, 0, NotSerialized)
        {
            If ((GPBV == Zero))
            {
                GPBV = (\_SB.PCI0.LPCB.GPBA << 0x07)
            }

            Return (GPBV) /* \GPBV */
        }

        Name (RCBV, Zero)
        Method (RCBS, 0, NotSerialized)
        {
            If ((RCBV == Zero))
            {
                RCBV = (\_SB.PCI0.LPCB.RCBA << 0x0E)
            }

            Return (RCBV) /* \RCBV */
        }

        OperationRegion (PMIO, SystemIO, PMBS (), 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08),
            PBSS,   1,
            Offset (0x3C),
                ,   1,
            UPRW,   1,
            Offset (0x42),
                ,   1,
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x64),
                ,   9,
            SCIS,   1,
            Offset (0x66)
        }

        OperationRegion (LGPE, SystemIO, (PMBS () + 0x80), 0x20)
        Field (LGPE, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10),
            Offset (0x11),
            GE08,   1,
                ,   8,
            GE17,   1,
                ,   17,
            GE35,   1,
                ,   9,
            GE45,   1,
            Offset (0x16),
            GE48,   1,
                ,   2,
            GE51,   1,
            Offset (0x20)
        }

        Field (LGPE, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x01),
            GS08,   1,
                ,   8,
            GS17,   1,
                ,   17,
            GS35,   1,
                ,   9,
            GS45,   1,
            Offset (0x06),
            GS48,   1,
                ,   2,
            GS51,   1,
                ,   2,
            GS54,   1,
            GS55,   1,
            Offset (0x10)
        }

        OperationRegion (GPR, SystemIO, GPBS (), 0x0400)
        Field (GPR, ByteAcc, NoLock, Preserve)
        {
            GU00,   8,
            GU01,   8,
            GU02,   8,
            GU03,   8,
            GIO0,   8,
            GIO1,   8,
            GIO2,   8,
            GIO3,   8,
            Offset (0x0C),
            GL00,   8,
            GL01,   8,
            GL02,   8,
            GP24,   1,
                ,   2,
            GP27,   1,
            GP28,   1,
            Offset (0x10),
            Offset (0x18),
            GB00,   8,
            GB01,   8,
            GB02,   8,
            GB03,   8,
            Offset (0x2C),
            GIV0,   8,
            GIV1,   8,
            GIV2,   8,
            GIV3,   8,
            GU04,   8,
            GU05,   8,
            GU06,   8,
            GU07,   8,
            GIO4,   8,
            GIO5,   8,
            GIO6,   8,
            GIO7,   8,
            GL04,   8,
            GL05,   8,
            GL06,   8,
            GL07,   8,
            Offset (0x40),
            GU08,   8,
            GU09,   8,
            GU0A,   8,
            GU0B,   8,
            GIO8,   8,
            GIO9,   8,
            GIOA,   8,
            GIOB,   8,
            GL08,   8,
            GL09,   8,
            GL0A,   8,
            GL0B,   8
        }

        OperationRegion (GPRL, SystemIO, GPBS (), 0x40)
        Field (GPRL, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01),
            GO08,   1,
            GO09,   1,
            GO10,   1,
                ,   2,
            GO13,   1,
            GO14,   1,
                ,   2,
            GO17,   1,
                ,   27,
            GO45,   1,
            Offset (0x06),
            GO48,   1,
                ,   2,
            GO51,   1,
                ,   2,
            GO54,   1,
            GO55,   1,
            GO56,   1,
            Offset (0x10),
            Offset (0x30),
            GR00,   32,
            GR01,   32,
            GR02,   32
        }

        OperationRegion (RCRB, SystemMemory, RCBS (), 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000),
            Offset (0x2330),
            AFEA,   32,
            AFED,   32,
            AFES,   16,
            AFER,   16,
            Offset (0x3000),
            Offset (0x3310),
                ,   4,
            PWST,   1,
            Offset (0x3318),
                ,   4,
            WLPE,   1,
            Offset (0x331C),
            Offset (0x331F),
            PMFS,   1,
            Offset (0x3320),
            CKEN,   32,
            Offset (0x33E0),
            Offset (0x33E2),
            WLP2,   2,
            Offset (0x3404),
            HPAS,   2,
                ,   5,
            HPAE,   1,
            Offset (0x3418),
                ,   1,
            ADSD,   1,
            SATD,   1,
            SMBD,   1,
            HDAD,   1,
                ,   10,
            EHCD,   1,
            RP1D,   1,
            RP2D,   1,
            RP3D,   1,
            RP4D,   1,
            RP5D,   1,
            RP6D,   1,
            RP7D,   1,
            RP8D,   1,
                ,   3,
            XHCD,   1,
            Offset (0x359C),
            UP0D,   1,
            UP1D,   1,
            UP2D,   1,
            UP3D,   1,
            UP4D,   1,
            UP5D,   1,
            UP6D,   1,
            UP7D,   1,
            UP8D,   1,
            UP9D,   1,
            UPAD,   1,
            UPBD,   1,
            UPCD,   1,
            UPDD,   1,
                ,   1,
            Offset (0x359E)
        }
    }

    Scope (_SB)
    {
        Method (RDGI, 1, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS () + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   30,
                    TEMP,   1
                }

                Return (TEMP) /* \_SB_.RDGI.TEMP */
            }

            Return (Zero)
        }

        Method (RDGP, 1, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS () + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31,
                    TEMP,   1
                }

                Return (TEMP) /* \_SB_.RDGP.TEMP */
            }

            Return (Zero)
        }

        Method (WTGP, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS () + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31,
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (WTIN, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS () + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   3,
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (WPGP, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS () + 0x0104) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   2
                }

                TEMP = Arg1
            }
        }

        Method (GP2N, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS () + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (GP2A, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS () + 0x0104) + (Arg0 * 0x08))
                OperationRegion (LGP2, SystemIO, Local0, 0x04)
                Field (LGP2, AnyAcc, NoLock, Preserve)
                {
                    GPWP,   2,
                    GPIS,   1
                }

                If ((Arg1 == One))
                {
                    GPIS = Zero
                    GPWP = Zero
                }
                Else
                {
                    GPWP = 0x02
                    GPIS = One
                }

                Local0 = (GPBS () + 0x10)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If ((Arg0 >= 0x2D))
                {
                    Local1 = (Arg0 - 0x28)
                }
                ElseIf ((Arg0 <= 0x0A))
                {
                    Local1 = (Arg0 - 0x08)
                }
                Else
                {
                    Local1 = (Arg0 - 0x0A)
                }

                Local2 = (One << Local1)
                If (Arg1)
                {
                    TEMP |= Local2
                }
                Else
                {
                    TEMP &= ~Local2
                }
            }
        }

        Method (GP2B, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = (GPBS () + 0x10)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If ((Arg0 >= 0x2D))
                {
                    Local1 = (Arg0 - 0x28)
                }
                ElseIf ((Arg0 <= 0x0A))
                {
                    Local1 = (Arg0 - 0x08)
                }
                Else
                {
                    Local1 = (Arg0 - 0x0A)
                }

                Local2 = (One << Local1)
                If (Arg1)
                {
                    TEMP |= Local2
                }
                Else
                {
                    TEMP &= ~Local2
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (LTRE, Zero)
        Name (OBFF, Zero)
        Name (LMSL, Zero)
        Name (LNSL, Zero)

        // Removed Device (GLAN)

        Device (EH01)  // Intel Corporation 9 Series Chipset Family USB EHCI Controller #1 [8086:8ca6]
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, Zero, 0x0100)
            Field (PWKE, AnyAcc, NoLock, Preserve)
            {
                DVID,   16,
                Offset (0x54),
                Offset (0x55),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                If ((PMEE && PMES))
                {
                    PMES = One
                    Notify (EH01, 0x02) // Device Wake
                }

                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUB1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        Return (UPCA) /* \_SB_.PCI0.EH01.HUB1.PR01._UPC.UPCA */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01._PLD.PLDP */
                    }

                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                     // Removed Method (_DSM)
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                     // Removed Method (_DSM)
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                     // Removed Method (_DSM)
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                     // Removed Method (_DSM)
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }

        Device (EH02)  // Intel Corporation 9 Series Chipset Family USB EHCI Controller #2 [8086:8cad]
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, Zero, 0x0100)
            Field (PWKE, AnyAcc, NoLock, Preserve)
            {
                DVID,   16,
                Offset (0x54),
                Offset (0x55),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                If ((PMEE && PMES))
                {
                    PMES = One
                    Notify (EH02, 0x02) // Device Wake
                }

                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUB2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        Return (UPCA) /* \_SB_.PCI0.EH02.HUB2.PR01._UPC.UPCA */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.EH02.HUB2.PR01._PLD.PLDP */
                    }

                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                     // Removed Method (_DSM)
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                     // Removed Method (_DSM)
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XHC)  // Intel Corporation 9 Series Chipset Family USB XHCI Controller [8086:8cb1]
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            OperationRegion (XPRT, PCI_Config, Zero, 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16,
                Offset (0x40),
                    ,   11,
                SWAI,   1,
                Offset (0x44),
                    ,   12,
                SAIP,   2,
                Offset (0x48),
                Offset (0x74),
                D0D3,   2,
                Offset (0x75),
                PMEE,   1,
                    ,   6,
                PMES,   1,
                Offset (0xA8),
                    ,   13,
                MW13,   1,
                MW14,   1,
                Offset (0xAC),
                Offset (0xB0),
                    ,   13,
                MB13,   1,
                MB14,   1,
                Offset (0xB4),
                Offset (0xD0),
                PR2,    32,
                PR2M,   32,
                PR3,    32,
                PR3M,   32
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                Local0 = PMES /* \_SB_.PCI0.XHC_.PMES */
                PMES = One
                If ((PMEE && Local0))
                {
                    Notify (XHC, 0x02) // Device Wake
                }

                Return (Zero)  // Fixed Compiler Warning
            }

            OperationRegion (XHCP, SystemMemory, (GPCB () + 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04),
                PDBM,   16,
                Offset (0x10),
                MEMB,   64
            }

            Method (PRTE, 1, Serialized)
            {
                If ((Arg0 <= XHPC))
                {
                    If ((PCHV () == LPTH))
                    {
                        Switch (ToInteger (Arg0))  // Fixed Compiler Warning
                        {
                            Case (One)
                            {
                                Return ((PR2 & One))
                            }
                            Case (0x02)
                            {
                                Return ((PR2 & 0x02))
                            }
                            Case (0x03)
                            {
                                Return ((PR2 & 0x04))
                            }
                            Case (0x04)
                            {
                                Return ((PR2 & 0x08))
                            }
                            Case (0x05)
                            {
                                Return ((PR2 & 0x0100))
                            }
                            Case (0x06)
                            {
                                Return ((PR2 & 0x0200))
                            }
                            Case (0x07)
                            {
                                Return ((PR2 & 0x0400))
                            }
                            Case (0x08)
                            {
                                Return ((PR2 & 0x0800))
                            }
                            Case (0x09)
                            {
                                Return ((PR2 & 0x10))
                            }
                            Case (0x0A)
                            {
                                Return ((PR2 & 0x20))
                            }
                            Case (0x0B)
                            {
                                Return ((PR2 & 0x1000))
                            }
                            Case (0x0C)
                            {
                                Return ((PR2 & 0x2000))
                            }
                            Case (0x0D)
                            {
                                Return ((PR2 & 0x40))
                            }
                            Case (0x0E)
                            {
                                Return ((PR2 & 0x80))
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Switch (ToInteger (Arg0))  // Fixed Compiler Warning
                        {
                            Case (One)
                            {
                                Return ((PR2 & One))
                            }
                            Case (0x02)
                            {
                                Return ((PR2 & 0x02))
                            }
                            Case (0x03)
                            {
                                Return ((PR2 & 0x04))
                            }
                            Case (0x04)
                            {
                                Return ((PR2 & 0x08))
                            }
                            Case (0x05)
                            {
                                Return ((PR2 & 0x10))
                            }
                            Case (0x06)
                            {
                                Return ((PR2 & 0x20))
                            }
                            Case (0x07)
                            {
                                Return ((PR2 & 0x40))
                            }
                            Case (0x08)
                            {
                                Return ((PR2 & 0x80))
                            }
                            Case (0x09)
                            {
                                Return ((PR2 & 0x0100))
                            }
                            Case (0x0A)
                            {
                                Return ((PR2 & 0x0200))
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                }

                If (((Arg0 == (XHPC + One)) && (XRPC == One)))
                {
                    If ((PCHV () == LPTH))
                    {
                        Return ((PR2 & 0x4000))
                    }

                    If ((PCHV () == LPTL))
                    {
                        Return ((PR2 & 0x0100))
                    }

                    If ((PCHV () == WPTL))
                    {
                        Return ((PR2 & 0x0400))
                    }
                }

                If ((Arg0 >= XSPA))
                {
                    Local0 = (Arg0 - XSPA) /* \XSPA */
                    Switch (ToInteger (Local0))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                            Return ((PR3 & One))
                        }
                        Case (One)
                        {
                            Return ((PR3 & 0x02))
                        }
                        Case (0x02)
                        {
                            Return ((PR3 & 0x04))
                        }
                        Case (0x03)
                        {
                            Return ((PR3 & 0x08))
                        }
                        Case (0x04)
                        {
                            Return ((PR3 & 0x10))
                        }
                        Case (0x05)
                        {
                            Return ((PR3 & 0x20))
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }

                Return (Zero)
            }

            Name (XRST, Zero)

            // Removed Method (_PS0)

            // Removed Method (_PS3)

            Method (CUID, 1, Serialized)
            {
                If ((Arg0 == ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (POSC, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, CDW1)
                CreateDWordField (Arg2, 0x08, CDW3)
                If ((XHCI == Zero))
                {
                    CDW1 |= 0x02
                }

                If (!(CDW1 & One))
                {
                    If ((CDW3 & One))
                    {
                        ESEL ()
                    }
                    ElseIf ((PCHS == One))
                    {
                        If ((Arg0 > One))
                        {
                            XSEL ()
                        }
                        Else
                        {
                            CDW1 |= 0x0A
                        }
                    }
                    ElseIf ((Arg0 > 0x02))
                    {
                        XSEL ()
                    }
                    Else
                    {
                        CDW1 |= 0x0A
                    }
                }

                Return (Arg2)
            }

            Method (XSEL, 0, Serialized)
            {
                If (((XHCI == 0x02) || (XHCI == 0x03)))
                {
                    ^^LPCB.XUSB = One
                    XRST = One
                    Local0 = Zero
                    Local0 = (PR3 & 0xFFFFFFC0)
                    PR3 = (Local0 | PR3M) /* \_SB_.PCI0.XHC_.PR3M */
                    Local0 = Zero
                    Local0 = (PR2 & 0xFFFF8000)
                    PR2 = (Local0 | PR2M) /* \_SB_.PCI0.XHC_.PR2M */
                }
            }

            Method (ESEL, 0, Serialized)
            {
                If (((XHCI == 0x02) || (XHCI == 0x03)))
                {
                    PR3 &= 0xFFFFFFC0
                    PR2 &= 0xFFFF8000
                    ^^LPCB.XUSB = Zero
                    XRST = Zero
                }
            }

            Method (XWAK, 0, Serialized)
            {
                If (((^^LPCB.XUSB == One) || (XRST == One)))
                {
                    XSEL ()
                }
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((DVID == 0xFFFF))
                    {
                        Return (Zero)
                    }

                    If (CondRefOf (\_SB.PCI0.XHC.RHUB.PS0X))
                    {
                        PS0X ()
                    }

                    Return (Zero)  // Fixed Compiler Warning
                }

                Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                {
                    If (CondRefOf (\_SB.PCI0.XHC.RHUB.PS2X))
                    {
                        PS2X ()
                    }
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If (CondRefOf (\_SB.PCI0.XHC.RHUB.PS3X))
                    {
                        PS3X ()
                    }
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                }

                Device (HS08)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                }

                Device (SSP1)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((XSPA + Zero))
                    }
                }

                Device (SSP2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((XSPA + One))
                    }
                }
            }
        }
    }

    If ((XHPC >= 0x0A))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Device (HS09)
            {
                Name (_ADR, 0x09)  // _ADR: Address
            }

            Device (HS10)
            {
                Name (_ADR, 0x0A)  // _ADR: Address
            }
        }
    }

    If ((XHPC >= 0x0C))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Device (HS11)
            {
                Name (_ADR, 0x0B)  // _ADR: Address
            }

            Device (HS12)
            {
                Name (_ADR, 0x0C)  // _ADR: Address
            }
        }
    }

    If ((XHPC >= 0x0E))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Device (HS13)
            {
                Name (_ADR, 0x0D)  // _ADR: Address
            }

            Device (HS14)
            {
                Name (_ADR, 0x0E)  // _ADR: Address
            }
        }
    }

    If ((XRPC >= One))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Device (USBR)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((XHPC + One))
                }
            }
        }
    }

    If ((XSPC >= 0x04))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Device (SSP3)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((XSPA + 0x02))
                }
            }

            Device (SSP4)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((XSPA + 0x03))
                }
            }
        }
    }

    If ((XSPC >= 0x06))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Device (SSP5)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((XSPA + 0x04))
                }
            }

            Device (SSP6)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((XSPA + 0x05))
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (HDEF)  // Intel Corporation 9 Series Chipset Family HD Audio Controller [8086:8ca0]
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, Zero, 0x0100)
            Field (HDAR, AnyAcc, NoLock, Preserve)
            {
                DVID,   16,
                Offset (0x4C),
                DCKA,   1,
                Offset (0x4D),
                DCKM,   1,
                    ,   6,
                DCKS,   1,
                Offset (0x54),
                Offset (0x55),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                If ((PMEE && PMES))
                {
                    PMES = One
                    Notify (HDEF, 0x02) // Device Wake
                }

                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }

        Device (SAT0)  // Intel Corporation 9 Series Chipset Family SATA Controller [AHCI Mode] [8086:8c82]
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Name (PRBI, Zero)
            Name (PRBD, Zero)
            Name (PCMD, Zero)
            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
            }

            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
            }

            Device (PRT2)
            {
                Name (_ADR, 0x0002FFFF)  // _ADR: Address
            }

            Device (PRT3)
            {
                Name (_ADR, 0x0003FFFF)  // _ADR: Address
            }

            Device (PRT4)
            {
                Name (_ADR, 0x0004FFFF)  // _ADR: Address
            }

            Device (PRT5)
            {
                Name (_ADR, 0x0005FFFF)  // _ADR: Address
            }

            Method (RDCA, 5, Serialized)
            {
                OperationRegion (RPAC, SystemMemory, (GPCB () + (0x000FA100 + Arg1)), 0x04)
                Field (RPAC, DWordAcc, Lock, Preserve)
                {
                    RPCD,   32
                }

                OperationRegion (EPAC, SystemMemory, (GPCB () + 0x000FA308), 0x08)
                Field (EPAC, DWordAcc, Lock, Preserve)
                {
                    CAIR,   32,
                    CADR,   32
                }

                If ((Arg4 == Zero))
                {
                    Return (RPCD) /* \_SB_.PCI0.SAT0.RDCA.RPCD */
                }
                ElseIf ((Arg4 == 0x02))
                {
                    CAIR = Arg1
                    Return (CADR) /* \_SB_.PCI0.SAT0.RDCA.CADR */
                }
                ElseIf ((Arg4 == One))
                {
                    Local0 = (Arg2 & RPCD) /* \_SB_.PCI0.SAT0.RDCA.RPCD */
                    Local0 |= Arg3
                    RPCD = Local0
                }
                ElseIf ((Arg4 == 0x03))
                {
                    CAIR = Arg1
                    Local0 = (Arg2 & CADR) /* \_SB_.PCI0.SAT0.RDCA.CADR */
                    Local0 |= Arg3
                    CADR = Local0
                }
                Else
                {
                    Return (Zero)
                }

                Return (Zero)  // Fixed Compiler Warning
            }

            Method (RPD0, 0, Serialized)
            {
                RDCA (Zero, 0xA4, 0xFFFFFFFC, Zero, One)
            }

            Method (RPD3, 0, Serialized)
            {
                RDCA (Zero, 0xA4, 0xFFFFFFFC, 0x03, One)
            }

            Method (EPD0, 0, Serialized)
            {
                RDCA (Zero, (PMCP + 0x04), 0xFFFFFFFC, Zero, 0x03)
            }

            Method (EPD3, 0, Serialized)
            {
                RDCA (Zero, (PMCP + 0x04), 0xFFFFFFFC, 0x03, 0x03)
            }

            Method (CNRS, 0, Serialized)
            {
                If ((PCIT == Zero))
                {
                    Return (Zero)
                }

                RDCA (Zero, 0x10, Zero, Zero, 0x03)
                RDCA (Zero, 0x14, Zero, Zero, 0x03)
                RDCA (Zero, 0x18, Zero, Zero, 0x03)
                RDCA (Zero, 0x1C, Zero, Zero, 0x03)
                RDCA (Zero, 0x20, Zero, Zero, 0x03)
                RDCA (Zero, 0x24, Zero, Zero, 0x03)
                RDCA (Zero, 0x04, 0xFFFFFFF8, PCMD, 0x03)
                RDCA (Zero, PRBI, Zero, PRBD, 0x03)
                If ((PMSI != Zero))
                {
                    RDCA (Zero, (PMSI + 0x08), Zero, Zero, 0x03)
                }

                If ((PL1P != Zero))
                {
                    RDCA (Zero, (PL1P + 0x0C), 0xFFFFFF00, PL1B, 0x03)
                    RDCA (Zero, (PL1P + 0x08), 0x0F, (PL1A & 0xFFFFFFF0), 0x03)
                    RDCA (Zero, (PL1P + 0x08), 0xFFFFFFFF, PL1A, 0x03)
                }

                If ((PLTP != Zero))
                {
                    RDCA (Zero, (PLTP + 0x04), 0xFFFFFFFF, PLTD, 0x03)
                }

                RDCA (Zero, (PCLP + 0x10), 0xFFFFFEBF, (PEPL & 0xFFFC), 0x03)
                RDCA (Zero, (PCLP + 0x28), 0xFFFFFBFF, PED2, 0x03)
                RDCA (Zero, (PCLP + 0x08), 0xFFFFFF1F, PED1, 0x03)
                RDCA (Zero, 0x50, 0xFFFFFFBF, PRPL, One)
                RDCA (Zero, 0x68, 0xFFFFFBFF, PRDC, One)
                RDCA (Zero, 0xD4, 0xFFFFFFBF, 0x40, One)
                RDCA (Zero, 0x50, 0xFFFFFFDF, 0x20, One)
                While (((RDCA (Zero, 0x52, Zero, Zero, Zero) & 0x2000) == Zero))
                {
                    Stall (0x0A)
                }

                RDCA (Zero, (PCLP + 0x10), 0xFFFFFFFC, (PEPL & 0x03), 0x03)
                Return (Zero)  // Fixed Compiler Warning
            }

            // Removed Device (NVM0)
        }

        // Removed Device (SAT1)

        Device (SBUS)  // Intel Corporation 9 Series Chipset Family SMBus Controller [8086:8ca2]
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2,
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5,
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8,
                Offset (0x02),
                HCON,   8,
                HCOM,   8,
                TXSA,   8,
                DAT0,   8,
                DAT1,   8,
                HBDR,   8,
                PECR,   8,
                RXSA,   8,
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Arg2 [Zero])
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Arg2 [Local1])
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100){})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                TBUF [Zero] = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (TBUF [Zero])))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    TBUF [Local1] = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }

            Device (BUS0)  // Added vanilla device
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
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (CPSB, SystemMemory, 0xD92AFE98, 0x10)
        Field (CPSB, AnyAcc, NoLock, Preserve)
        {
            RTCX,   1,
            SBB0,   7,
            SBB1,   8,
            SBB2,   8,
            SBB3,   8,
            SBB4,   8,
            SBB5,   8,
            SBB6,   8,
            SBB7,   8,
            SBB8,   8,
            SBB9,   8,
            SBBA,   8,
            SBBB,   8,
            SBBC,   8,
            SBBD,   8,
            SBBE,   8,
            SBBF,   8
        }

        Method (SPTS, 1, NotSerialized)
        {
            SLPX = One
            SLPE = One
            ^^RP01.RPAV = Zero
            ^^RP02.RPAV = Zero
            ^^RP03.RPAV = Zero
            ^^RP04.RPAV = Zero
            ^^RP05.RPAV = Zero
            ^^RP06.RPAV = Zero
            ^^RP07.RPAV = Zero
            ^^RP08.RPAV = Zero
        }

        Method (SWAK, 1, NotSerialized)
        {
            SLPE = Zero
            If (RTCX){}
            Else
            {
                Notify (PWRB, 0x02) // Device Wake
            }
        }

        OperationRegion (SMIE, SystemIO, PMBA, 0x04)
        Field (SMIE, ByteAcc, NoLock, Preserve)
        {
                ,   10,
            RTCS,   1,
                ,   3,
            PEXS,   1,
            WAKS,   1,
            Offset (0x03),
            PWBT,   1,
            Offset (0x04)
        }

        OperationRegion (SLPR, SystemIO, SMCR, 0x08)
        Field (SLPR, ByteAcc, NoLock, Preserve)
        {
                ,   4,
            SLPE,   1,
                ,   31,
            SLPX,   1,
            Offset (0x08)
        }
    }

    Scope (_SB.PCI0.RP01)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR1 /* \LTR1 */
            LMSL = PML1 /* \PML1 */
            LNSL = PNL1 /* \PNL1 */
            OBFF = OBF1 /* \OBF1 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP02)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR2 /* \LTR2 */
            LMSL = PML2 /* \PML2 */
            LNSL = PNL2 /* \PNL2 */
            OBFF = OBF2 /* \OBF2 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP03)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR3 /* \LTR3 */
            LMSL = PML3 /* \PML3 */
            LNSL = PNL3 /* \PNL3 */
            OBFF = OBF3 /* \OBF3 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP04)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR4 /* \LTR4 */
            LMSL = PML4 /* \PML4 */
            LNSL = PNL4 /* \PNL4 */
            OBFF = OBF4 /* \OBF4 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP05)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR5 /* \LTR5 */
            LMSL = PML5 /* \PML5 */
            LNSL = PNL5 /* \PNL5 */
            OBFF = OBF5 /* \OBF5 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP06)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR6 /* \LTR6 */
            LMSL = PML6 /* \PML6 */
            LNSL = PNL6 /* \PNL6 */
            OBFF = OBF6 /* \OBF6 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP07)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR7 /* \LTR7 */
            LMSL = PML7 /* \PML7 */
            LNSL = PNL7 /* \PNL7 */
            OBFF = OBF7 /* \OBF7 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP08)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            LTRE = LTR8 /* \LTR8 */
            LMSL = PML8 /* \PML8 */
            LNSL = PNL8 /* \PNL8 */
            OBFF = OBF8 /* \OBF8 */
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    OperationRegion (_SB.PCI0.LPCB.LPCR, PCI_Config, 0x80, 0x04)
    Field (\_SB.PCI0.LPCB.LPCR, ByteAcc, NoLock, Preserve)
    {
        CARN,   3,
            ,   1,
        CBDR,   3,
        Offset (0x01),
        LTDR,   2,
            ,   2,
        FDDR,   1,
        Offset (0x02),
        CALE,   1,
        CBLE,   1,
        LTLE,   1,
        FDLE,   1,
        Offset (0x03),
        GLLE,   1,
        GHLE,   1,
        KCLE,   1,
        MCLE,   1,
        C1LE,   1,
        C2LE,   1,
        Offset (0x04)
    }

    Method (UXDV, 1, Serialized)
    {
        Local0 = 0xFF
        Switch ((Arg0 + Zero))
        {
            Case (0x03F8)
            {
                Local0 = Zero
            }
            Case (0x02F8)
            {
                Local0 = One
            }
            Case (0x0220)
            {
                Local0 = 0x02
            }
            Case (0x0228)
            {
                Local0 = 0x03
            }
            Case (0x0238)
            {
                Local0 = 0x04
            }
            Case (0x02E8)
            {
                Local0 = 0x05
            }
            Case (0x0338)
            {
                Local0 = 0x06
            }
            Case (0x03E8)
            {
                Local0 = 0x07
            }

        }

        Return (Local0)
    }

    Method (RRIO, 4, Serialized)
    {
        Switch ((Arg0 + Zero))
        {
            Case (Zero)
            {
                CALE = Zero
                Local0 = UXDV (Arg2)
                If ((Local0 != 0xFF))
                {
                    CARN = Local0
                }

                If (Arg1)
                {
                    CALE = One
                }
            }
            Case (One)
            {
                CBLE = Zero
                Local0 = UXDV (Arg2)
                If ((Local0 != 0xFF))
                {
                    CBDR = Local0
                }

                If (Arg1)
                {
                    CBLE = One
                }
            }
            Case (0x02)
            {
                LTLE = Zero
                If ((Arg2 == 0x0378))
                {
                    LTDR = Zero
                }

                If ((Arg2 == 0x0278))
                {
                    LTDR = One
                }

                If ((Arg2 == 0x03BC))
                {
                    LTDR = 0x02
                }

                If (Arg1)
                {
                    LTLE = One
                }
            }
            Case (0x03)
            {
                FDLE = Zero
                If ((Arg2 == 0x03F0))
                {
                    FDDR = Zero
                }

                If ((Arg2 == 0x0370))
                {
                    FDDR = One
                }

                If (Arg1)
                {
                    FDLE = One
                }
            }
            Case (0x08)
            {
                If ((Arg2 == 0x0200))
                {
                    If (Arg1)
                    {
                        GLLE = One
                    }
                    Else
                    {
                        GLLE = Zero
                    }
                }

                If ((Arg2 == 0x0208))
                {
                    If (Arg1)
                    {
                        GHLE = One
                    }
                    Else
                    {
                        GHLE = Zero
                    }
                }
            }
            Case (0x09)
            {
                If ((Arg2 == 0x0200))
                {
                    If (Arg1)
                    {
                        GLLE = One
                    }
                    Else
                    {
                        GLLE = Zero
                    }
                }

                If ((Arg2 == 0x0208))
                {
                    If (Arg1)
                    {
                        GHLE = One
                    }
                    Else
                    {
                        GHLE = Zero
                    }
                }
            }
            Case (0x0A)
            {
                If (((Arg2 == 0x60) || (Arg2 == 0x64)))
                {
                    If (Arg1)
                    {
                        KCLE = One
                    }
                    Else
                    {
                        KCLE = Zero
                    }
                }
            }
            Case (0x0B)
            {
                If (((Arg2 == 0x62) || (Arg2 == 0x66)))
                {
                    If (Arg1)
                    {
                        MCLE = One
                    }
                    Else
                    {
                        MCLE = Zero
                    }
                }
            }
            Case (0x0C)
            {
                If ((Arg2 == 0x2E))
                {
                    If (Arg1)
                    {
                        C1LE = One
                    }
                    Else
                    {
                        C1LE = Zero
                    }
                }

                If ((Arg2 == 0x4E))
                {
                    If (Arg1)
                    {
                        C2LE = One
                    }
                    Else
                    {
                        C2LE = Zero
                    }
                }
            }
            Case (0x0D)
            {
                If ((Arg2 == 0x2E))
                {
                    If (Arg1)
                    {
                        C1LE = One
                    }
                    Else
                    {
                        C1LE = Zero
                    }
                }

                If ((Arg2 == 0x4E))
                {
                    If (Arg1)
                    {
                        C2LE = One
                    }
                    Else
                    {
                        C2LE = Zero
                    }
                }
            }

        }
    }

    Method (RDMA, 3, NotSerialized)
    {
    }

    Scope (_SB.PCI0)
    {
        Name (PA0H, Zero)
        Name (PALK, Zero)
        Name (PA1H, Zero)
        Name (PA1L, Zero)
        Name (PA2H, Zero)
        Name (PA2L, Zero)
        Name (PA3H, Zero)
        Name (PA3L, Zero)
        Name (PA4H, Zero)
        Name (PA4L, Zero)
        Name (PA5H, Zero)
        Name (PA5L, Zero)
        Name (PA6H, Zero)
        Name (PA6L, Zero)
        Method (NPTS, 1, NotSerialized)
        {
            PA0H = PM0H /* \_SB_.PCI0.PM0H */
            PALK = PMLK /* \_SB_.PCI0.PMLK */
            PA1H = PM1H /* \_SB_.PCI0.PM1H */
            PA1L = PM1L /* \_SB_.PCI0.PM1L */
            PA2H = PM2H /* \_SB_.PCI0.PM2H */
            PA2L = PM2L /* \_SB_.PCI0.PM2L */
            PA3H = PM3H /* \_SB_.PCI0.PM3H */
            PA3L = PM3L /* \_SB_.PCI0.PM3L */
            PA4H = PM4H /* \_SB_.PCI0.PM4H */
            PA4L = PM4L /* \_SB_.PCI0.PM4L */
            PA5H = PM5H /* \_SB_.PCI0.PM5H */
            PA5L = PM5L /* \_SB_.PCI0.PM5L */
            PA6H = PM6H /* \_SB_.PCI0.PM6H */
            PA6L = PM6L /* \_SB_.PCI0.PM6L */
        }

        Method (NWAK, 1, NotSerialized)
        {
            PM1H = PA1H /* \_SB_.PCI0.PA1H */
            PM1L = PA1L /* \_SB_.PCI0.PA1L */
            PM2H = PA2H /* \_SB_.PCI0.PA2H */
            PM2L = PA2L /* \_SB_.PCI0.PA2L */
            PM3H = PA3H /* \_SB_.PCI0.PA3H */
            PM3L = PA3L /* \_SB_.PCI0.PA3L */
            PM4H = PA4H /* \_SB_.PCI0.PA4H */
            PM4L = PA4L /* \_SB_.PCI0.PA4L */
            PM5H = PA5H /* \_SB_.PCI0.PA5H */
            PM5L = PA5L /* \_SB_.PCI0.PA5L */
            PM6H = PA6H /* \_SB_.PCI0.PA6H */
            PM6L = PA6L /* \_SB_.PCI0.PA6L */
            PM0H = PA0H /* \_SB_.PCI0.PA0H */
            PMLK = PALK /* \_SB_.PCI0.PALK */
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06){}
        Processor (CPU1, 0x02, 0x00001810, 0x06){}
        Processor (CPU2, 0x03, 0x00001810, 0x06){}
        Processor (CPU3, 0x04, 0x00001810, 0x06){}
        Processor (CPU4, 0x05, 0x00001810, 0x06){}
        Processor (CPU5, 0x06, 0x00001810, 0x06){}
        Processor (CPU6, 0x07, 0x00001810, 0x06){}
        Processor (CPU7, 0x08, 0x00001810, 0x06){}
    }

    // Removed Device (PAGD)

    Mutex (EHLD, 0x00)

    // Removed Device (NFC)

    // Removed Device (DFUD)

    Mutex (MUTX, 0x00)
    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    Method (ADBG, 1, Serialized)
    {
        If (CondRefOf (MDBG))
        {
            Return (MDBG) /* External reference */
         // Removed Section
        }

        Return (Zero)
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        PTS (Arg0)
        If ((((((Arg0 == 0x04) || (Arg0 == 0x05)) || (
            Arg0 == 0x03)) && (BID == 0x31)) && (RTD3 == One)))
        {
            ADBG ("Wilsonbeach")
            If (CondRefOf (\_SB.PCI0.RP06.SCLK))
            {
                If (((RP6D != One) && ((((RCG0 & 0x40
                    ) && !(RCG0 & 0x0200)) && (RCG0 & 0x0100)) || ((!
                    (RCG0 & 0x40) && (RCG0 & 0x0200)) && (SATD == One)))))
                {
                    ADBG ("SDCD RTD3 enable")
                    If ((RCG0 & 0x40))
                    {
                        ADBG ("Turn on SRCCLK06")
                        While ((PMFS == One))
                        {
                            Stall (0x0A)
                        }

                        Local0 = ((\_SB.PCI0.RP06.SCLK << 0x18) | (\_SB.PCI0.RP06.SCLK << 0x10))
                        Local0 |= 0x04
                        CKEN = Local0
                        While ((PMFS == One))
                        {
                            Stall (0x0A)
                        }

                        ADBG ("End Turn on")
                    }
                }
            }

            If (CondRefOf (\_SB.PCI0.RP03.SCLK))
            {
                If ((RP3D != One))
                {
                    ADBG ("Wifi RTD3 enable")
                    ADBG ("Turn on SRCCLK03")
                    While ((PMFS == One))
                    {
                        Stall (0x0A)
                    }

                    Local0 = ((\_SB.PCI0.RP03.SCLK << 0x18) | (\_SB.PCI0.RP03.SCLK << 0x10))
                    Local0 |= 0x04
                    CKEN = Local0
                    While ((PMFS == One))
                    {
                        Stall (0x0A)
                    }

                    ADBG ("End Turn on")
                }
            }

            If (CondRefOf (\_SB.PCI0.RP04.SCLK))
            {
                If ((RP4D != One))
                {
                    ADBG ("WiGi RTD3 enable")
                    ADBG ("Turn on SRCCLK04")
                    While ((PMFS == One))
                    {
                        Stall (0x0A)
                    }

                    Local0 = ((\_SB.PCI0.RP04.SCLK << 0x18) | (\_SB.PCI0.RP04.SCLK << 0x10))
                    Local0 |= 0x04
                    CKEN = Local0
                    While ((PMFS == One))
                    {
                        Stall (0x0A)
                    }

                    ADBG ("End Turn on")
                }
            }
        }

        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }

        If ((((Arg0 == 0x03) || (Arg0 == 0x04)) || (Arg0 == 0x05)))
        {
            If ((PFLV == 0x02))
            {
                GP27 = One
            }
        }

        If ((BID == 0x31))
        {
            \_SB.WTGP (0x3C, Zero)
            \_SB.WTGP (0x54, Zero)
        }

        If ((((BID == 0x80) || (BID == 0x81)) || ((BID ==
            0x82) || (BID == 0x83))))
        {
            \_SB.WTGP (0x3C, Zero)
            \_SB.WTGP (0x54, Zero)
        }

        If ((((BID == 0x84) || (BID == 0x85)) || (BID == 0x86)))
        {
            \_SB.WTGP (0x3C, Zero)
            \_SB.WTGP (0x54, Zero)
        }

        If ((BID == 0x31))
        {
            \_SB.WTGP (0x3A, Zero)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        WAK (Arg0)
        ADBG ("_WAK")
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((OSYS >= 0x07DD))
            {
                If (CondRefOf (\_SB.PCI0.EPON))
                {
                    \_SB.PCI0.EPON ()
                }
            }
        }

        If ((((\_SB.PCI0.B0D3.ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
            \_SB.PCI0.B0D3.ABAR & 0xFFFFC000) != Zero)))
        {
            \_SB.PCI0.B0D3.BARA = \_SB.PCI0.B0D3.ABAR /* External reference */
        }

        If ((ICNF & 0x10))
        {
            If ((\_SB.PCI0.GFX0.TCHE & 0x0100))
            {
                If (((\_SB.IAOE.IBT1 & One) && (\_SB.IAOE.WKRS & 0x10)))
                {
                    \_SB.PCI0.GFX0.STAT = ((\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC) | One)
                    ADBG ("Turning off Gfx")
                }
                Else
                {
                    \_SB.PCI0.GFX0.STAT = (\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC)
                    ADBG ("Keeping Gfx on")
                }
            }

            // Removed Section (H_EC)

            If (CondRefOf (\_SB.IAOE.ECTM))
            {
                \_SB.IAOE.ECTM = Zero
            }

            If (CondRefOf (\_SB.IAOE.RCTM))
            {
                \_SB.IAOE.RCTM = Zero
            }
        }

        If (NEXP)
        {
            If ((OSCC & One))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        // Removed Section (H_EC)

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            // Removed Section (H_EC)

            If ((GBSX & 0x40))
            {
                \_SB.PCI0.GFX0.IUEH (0x06)
            }

            If ((GBSX & 0x80))
            {
                \_SB.PCI0.GFX0.IUEH (0x07)
            }

            If ((\_PR.DTSE && (TCNT > One)))
            {
                TRAP (0x02, 0x14)
            }

            If ((OSYS == 0x07D2))
            {
                If ((\_PR.CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }

            // Removed Section (ECON) related to (H_EC) (LID0) (DOCK) (BAT0)

            If ((RP1D == Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero) // Bus Check
            }

            If ((RP2D == Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero) // Bus Check
            }

            If ((RP3D == Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero) // Bus Check
            }

            If ((RP4D == Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero) // Bus Check
            }

            If ((RP5D == Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero) // Bus Check
            }

            If ((RP6D == Zero))
            {
                Notify (\_SB.PCI0.RP06, Zero) // Bus Check
            }

            If ((RP7D == Zero))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero) // Bus Check
                }
            }

            If ((RP8D == Zero))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero) // Bus Check
                }
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.XHC.XWAK ()
        }

        If ((\_SB.PCI0.LPCB.PWBT == Zero))
        {
            \_SB.PCI0.LPCB.PWBT = One
        }

        Return (Package (0x02)
        {
            Zero,
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3) /* \GETB.TBF3 */
    }

    Method (PNOT, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCCD.PENB))
        {
            Notify (\_SB.PCCD, 0x82) // Device-Specific Change
        }
        ElseIf ((TCNT > One))
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
        }

        If ((TCNT > One))
        {
            If (((PDC0 & 0x08) && (PDC0 & 0x10)))
            {
                Notify (\_PR.CPU0, 0x81) // C-State Change
            }

            If (((PDC1 & 0x08) && (PDC1 & 0x10)))
            {
                Notify (\_PR.CPU1, 0x81) // C-State Change
            }

            If (((PDC2 & 0x08) && (PDC2 & 0x10)))
            {
                Notify (\_PR.CPU2, 0x81) // C-State Change
            }

            If (((PDC3 & 0x08) && (PDC3 & 0x10)))
            {
                Notify (\_PR.CPU3, 0x81) // C-State Change
            }

            If (((PDC4 & 0x08) && (PDC4 & 0x10)))
            {
                Notify (\_PR.CPU4, 0x81) // C-State Change
            }

            If (((PDC5 & 0x08) && (PDC5 & 0x10)))
            {
                Notify (\_PR.CPU5, 0x81) // C-State Change
            }

            If (((PDC6 & 0x08) && (PDC6 & 0x10)))
            {
                Notify (\_PR.CPU6, 0x81) // C-State Change
            }

            If (((PDC7 & 0x08) && (PDC7 & 0x10)))
            {
                Notify (\_PR.CPU7, 0x81) // C-State Change
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }

        // Removed Section (ECON) related to (BAT0) (BAT1) (BAT2)

        // Removed Section (DPTF) related to (H_EC)
    }

    OperationRegion (MBAR, SystemMemory, (\_SB.PCI0.GMHB () + 0x5000), 0x1000)
    Field (MBAR, ByteAcc, NoLock, Preserve)
    {
        Offset (0x938),
        PWRU,   4,
        Offset (0x9A0),
        PPL1,   15,
        PL1E,   1,
        CLP1,   1
    }

    Name (CLMP, Zero)
    Name (PLEN, Zero)
    Name (PLSV, 0x8000)
    Name (CSEM, Zero)
    Method (SPL1, 0, Serialized)
    {
        Name (PPUU, Zero)
        If ((CSEM == One))
        {
            Return (Zero)
        }

        CSEM = One
        PLSV = PPL1 /* \PPL1 */
        PLEN = PL1E /* \PL1E */
        CLMP = CLP1 /* \CLP1 */
        If ((PWRU == Zero))
        {
            PPUU = One
        }
        Else
        {
            PPUU = (PWRU-- << 0x02)
        }

        Local0 = (PLVL * PPUU) /* \SPL1.PPUU */
        Local1 = (Local0 / 0x03E8)
        PPL1 = Local1
        PL1E = One
        CLP1 = One
        Return (Zero)  // Fixed Compiler Warning
    }

    Method (RPL1, 0, Serialized)
    {
        PPL1 = PLSV /* \PLSV */
        PL1E = PLEN /* \PLEN */
        CLP1 = CLMP /* \CLMP */
        CSEM = Zero
    }

    Name (DDPS, Zero)
    Name (UAMS, Zero)
    Name (VBOK, Zero)
    Method (GUAM, 1, Serialized)
    {
        If ((Arg0 != DDPS))
        {
            DDPS = Arg0
            UAMS = (Arg0 && !PWRS)
            If (Arg0)
            {
                P8XH (Zero, 0xC5)
                P8XH (One, Zero)
                ADBG ("Enter CS")
                If (PSCP)
                {
                    If ((CondRefOf (\_PR.CPU0._PSS) && CondRefOf (\_PR.CPU0._PPC)))
                    {
                        \_PR.CPU0._PPC = (SizeOf (\_PR.CPU0._PSS) - One)
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    SPL1 ()
                }
            }
            Else
            {
                P8XH (Zero, 0xC5)
                P8XH (One, 0xAB)
                ADBG ("Exit CS")
                If (PSCP)
                {
                    If (CondRefOf (\_PR.CPU0._PPC))
                    {
                        \_PR.CPU0._PPC = Zero
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    RPL1 ()
                }
            }

            P_CS ()
        }
    }

    Method (P_CS, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCI0.PAUD.PUAM))
        {
            \_SB.PCI0.PAUD.PUAM ()
        }

        If ((OSYS == 0x07DC))
        {
            If (CondRefOf (\_SB.PCI0.XHC.DUAM))
            {
                \_SB.PCI0.XHC.DUAM ()
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If ((Arg0 == 0x02))
        {
            \_PR.DTSF = Arg1
            \_PR.TRPD = Zero
            Return (\_PR.DTSF) /* External reference */
        }

        If ((Arg0 == 0x03))
        {
            TRPH = Zero
        }

        If ((Arg0 == 0x04))
        {
            \_PR.TRPF = Zero
        }

        Return (SMIF) /* \SMIF */
    }

    Scope (_SB.PCI0)
    {
        Method (PTMA, 0, NotSerialized)
        {
            Return (\_PR.BGMA) /* External reference */
        }

        Method (PTMS, 0, NotSerialized)
        {
            Return (\_PR.BGMS) /* External reference */
        }

        Method (PTIA, 0, NotSerialized)
        {
            Return (\_PR.BGIA) /* External reference */
        }

        Method (_INI, 0, Serialized)  // _INI: Initialize
        {
            OSYS = 0x07D0
            If (CondRefOf (\_OSI))  // Fixed Compiler Warning
            {
                If (_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                }

                If (_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSYS = 0x07D3
                }

                If (_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }

                If (_OSI ("Windows 2012"))
                {
                    OSYS = 0x07DC
                }

                If (_OSI ("Windows 2013"))
                {
                    OSYS = 0x07DD
                }

                If ((_OSI ("Darwin") || _OSI ("Windows 2015")))
                {
                    OSYS = 0x07DF
                }
            }

            // Removed Section (PINI)
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP04.HPEX = Zero
            ^RP05.HPEX = Zero
            ^RP06.HPEX = Zero
            ^RP07.HPEX = Zero
            ^RP08.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
            ^RP04.HPSX = One
            ^RP05.HPSX = One
            ^RP06.HPSX = One
            ^RP07.HPSX = One
            ^RP08.HPSX = One
        }

        Method (NPME, 0, Serialized)
        {
            ^RP01.PMEX = Zero
            ^RP02.PMEX = Zero
            ^RP03.PMEX = Zero
            ^RP04.PMEX = Zero
            ^RP05.PMEX = Zero
            ^RP06.PMEX = Zero
            ^RP07.PMEX = Zero
            ^RP08.PMEX = Zero
            ^RP01.PMSX = One
            ^RP02.PMSX = One
            ^RP03.PMSX = One
            ^RP04.PMSX = One
            ^RP05.PMSX = One
            ^RP06.PMSX = One
            ^RP07.PMSX = One
            ^RP08.PMSX = One
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero,
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            PRWP [Zero] = Arg0
            Local0 = (SS1 << One)
            Local0 |= (SS2 << 0x02)
            Local0 |= (SS3 << 0x03)
            Local0 |= (SS4 << 0x04)
            If (((One << Arg1) & Local0))
            {
                PRWP [One] = Arg1
            }
            Else
            {
                Local0 >>= One
                FindSetLeftBit (Local0, PRWP [One])
            }

            Return (PRWP) /* \PRWP */
        }
    }

    Scope (_SB)
    {
        Name (OSCI, Zero)
        Name (OSCO, Zero)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            If ((OSCM (Arg0, Arg1, Arg2, Arg3) != Zero))
            {
                Return (Arg3)
            }

            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 == One))
                {
                    If ((CAP0 & 0x04))
                    {
                        OSCO = 0x04
                        If (((SGMD & 0x0F) != 0x02))
                        {
                            If ((RTD3 == Zero))
                            {
                                CAP0 &= 0x3B
                                STS0 |= 0x10
                            }
                        }
                    }

                    If ((CAP0 & 0x20))
                    {
                        If (CondRefOf (\_SB.PCCD.PENB))
                        {
                            If ((^PCCD.PENB == Zero))
                            {
                                CAP0 &= 0x1F
                                STS0 |= 0x10
                            }
                        }
                        Else
                        {
                            CAP0 &= 0x1F
                            STS0 |= 0x10
                        }
                    }
                }
                Else
                {
                    STS0 &= 0xFFFFFF00
                    STS0 |= 0x0A
                }
            }
            Else
            {
                STS0 &= 0xFFFFFF00
                STS0 |= 0x06
            }

            Return (Arg3)
        }
    }

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y1D)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y20)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y21)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y22)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y23)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00010000,         // Address Length
                    _Y1E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00010000,         // Address Length
                    _Y1F)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1D._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (^^LPCB.RCBA << 0x0E)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1E._BAS, SNR0)  // _BAS: Base Address
                SNR0 = SRMB /* \SRMB */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1F._BAS, XWT0)  // _BAS: Base Address
                XWT0 = XWMB /* \XWMB */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y20._BAS, MBR0)  // _BAS: Base Address
                MBR0 = GMHB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y21._BAS, DBR0)  // _BAS: Base Address
                DBR0 = GDMB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y22._BAS, EBR0)  // _BAS: Base Address
                EBR0 = GEPB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y23._BAS, XBR0)  // _BAS: Base Address
                XBR0 = GPCB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y23._LEN, XSZ0)  // _LEN: Length
                XSZ0 = GPCL ()
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (((DIDX & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD1F, Arg0)
        }
    }

    Scope (_GPE)
    {
        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((RP1D == Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((RP2D == Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((RP3D == Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((RP4D == Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((RP5D == Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((RP6D == Zero))
            {
                \_SB.PCI0.RP06.HPME ()
                Notify (\_SB.PCI0.RP06, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((RP7D == Zero))
            {
                \_SB.PCI0.RP07.HPME ()
                Notify (\_SB.PCI0.RP07, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((RP8D == Zero))
            {
                \_SB.PCI0.RP08.HPME ()
                Notify (\_SB.PCI0.RP08, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((D1F0 == One))
            {
                \_SB.PCI0.PEG0.HPME ()
                Notify (\_SB.PCI0.PEG0, 0x02) // Device Wake
                Notify (\_SB.PCI0.PEG0.PEGP, 0x02) // Device Wake
            }

            If ((D1F1 == One))
            {
                \_SB.PCI0.PEG1.HPME ()
                Notify (\_SB.PCI0.PEG1, 0x02) // Device Wake
            }

            If ((D1F2 == One))
            {
                \_SB.PCI0.PEG2.HPME ()
                Notify (\_SB.PCI0.PEG2, 0x02) // Device Wake
            }
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            L01C += One
            P8XH (Zero, One)
            P8XH (One, L01C)
            If (((RP1D == Zero) && \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                    If (!\_SB.PCI0.RP01.PDSX)
                    {
                        \_SB.PCI0.RP01.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP01, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If (((RP2D == Zero) && \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                    If (!\_SB.PCI0.RP02.PDSX)
                    {
                        \_SB.PCI0.RP02.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP02, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If (((RP3D == Zero) && \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                    If (!\_SB.PCI0.RP03.PDSX)
                    {
                        \_SB.PCI0.RP03.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP03, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }

            If (((RP4D == Zero) && \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = One
                    \_SB.PCI0.RP04.HPSX = One
                    If (!\_SB.PCI0.RP04.PDSX)
                    {
                        \_SB.PCI0.RP04.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP04, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = One
                }
            }

            If (((RP5D == Zero) && \_SB.PCI0.RP05.HPSX))
            {
                If (((TBTS != One) || (TBSE != 0x05)))
                {
                    Sleep (0x64)
                }

                If (\_SB.PCI0.RP05.PDCX)
                {
                    \_SB.PCI0.RP05.PDCX = One
                    \_SB.PCI0.RP05.HPSX = One
                    If (!\_SB.PCI0.RP05.PDSX)
                    {
                        \_SB.PCI0.RP05.L0SE = Zero
                    }

                    If (((TBTS != One) || (TBSE != 0x05)))
                    {
                        Notify (\_SB.PCI0.RP05, Zero) // Bus Check
                    }
                }
                Else
                {
                    \_SB.PCI0.RP05.HPSX = One
                }
            }

            If (((RP6D == Zero) && \_SB.PCI0.RP06.HPSX))
            {
                If (((TBTS != One) || (TBSE != 0x06)))
                {
                    Sleep (0x64)
                }

                If (\_SB.PCI0.RP06.PDCX)
                {
                    \_SB.PCI0.RP06.PDCX = One
                    \_SB.PCI0.RP06.HPSX = One
                    If (!\_SB.PCI0.RP06.PDSX)
                    {
                        \_SB.PCI0.RP06.L0SE = Zero
                    }

                    If (((TBTS != One) || (TBSE != 0x06)))
                    {
                        Notify (\_SB.PCI0.RP06, Zero) // Bus Check
                    }
                }
                Else
                {
                    \_SB.PCI0.RP06.HPSX = One
                }
            }

            If (((RP7D == Zero) && \_SB.PCI0.RP07.HPSX))
            {
                If (((TBTS != One) || (TBSE != 0x07)))
                {
                    Sleep (0x64)
                }

                If (\_SB.PCI0.RP07.PDCX)
                {
                    \_SB.PCI0.RP07.PDCX = One
                    \_SB.PCI0.RP07.HPSX = One
                    If (!\_SB.PCI0.RP07.PDSX)
                    {
                        \_SB.PCI0.RP07.L0SE = Zero
                    }

                    If ((PFLV == 0x02))
                    {
                        If (((TBTS != One) || (TBSE != 0x07)))
                        {
                            Notify (\_SB.PCI0.RP07, Zero) // Bus Check
                        }
                    }
                    //  Removed Section (ECON) related to (DOCK)
                }
                Else
                {
                    \_SB.PCI0.RP07.HPSX = One
                }
            }

            If (((RP8D == Zero) && \_SB.PCI0.RP08.HPSX))
            {
                If (((TBTS != One) || (TBSE != 0x08)))
                {
                    Sleep (0x64)
                }

                If (\_SB.PCI0.RP08.PDCX)
                {
                    \_SB.PCI0.RP08.PDCX = One
                    \_SB.PCI0.RP08.HPSX = One
                    If (!\_SB.PCI0.RP08.PDSX)
                    {
                        \_SB.PCI0.RP08.L0SE = Zero
                    }

                    If ((PFLV == 0x02))
                    {
                        If (((TBTS != One) || (TBSE != 0x08)))
                        {
                            Notify (\_SB.PCI0.RP08, Zero) // Bus Check
                        }
                    }
                    //  Removed Section (ECON) related to (DOCK)
                }
                Else
                {
                    \_SB.PCI0.RP08.HPSX = One
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            GPEC = Zero
            If (CondRefOf (\_PR.DTSE))
            {
                If ((\_PR.DTSE >= One))
                {
                    Notify (\_TZ.TZ00, 0x80) // Status Change
                    Notify (\_TZ.TZ01, 0x80) // Status Change
                }
            }

            If (CondRefOf (\_SB.PCCD.PENB))
            {
                If ((\_SB.PCCD.PENB == One))
                {
                    Notify (\_SB.PCCD, 0x80) // Status Change
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((\_SB.PCI0.GFX0.GSSE && !GSMI))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (_L1E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            // Removed Section (ECON) related to (H_EC)

            // Removed Section (LIDS) related to (LID0)

            // Removed Section (BNUM) related to (BAT0)

            Return (Zero)
        }

        Method (_L00, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((BID == 0x35))
            {
                ADBG ("Rotation Lock")
                Sleep (0x03E8)
                \_SB.PCI0.GFX0.IUEH (0x04)
            }
        }
    }

    Scope (_SB.PCI0.RP01.PXSX)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP01.PXSX.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("PXSX _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("PXSX _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("PXSX _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("PXSX _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP01.PXSX.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP01.PXSX.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP01.PXSX.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP02.PXSX)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP02.PXSX.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("PXSX _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("PXSX _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("PXSX _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("PXSX _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP02.PXSX.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP02.PXSX.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP02.PXSX.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP03.LAN1)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP03.LAN1.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("LAN1 _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("LAN1 _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("LAN1 _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("LAN1 _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP03.LAN1.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP03.LAN1.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP03.LAN1.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP04.LAN2)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP04.LAN2.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("LAN2 _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("LAN2 _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("LAN2 _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("LAN2 _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP04.LAN2.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP04.LAN2.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP04.LAN2.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP05.ARPT)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP05.ARPT.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("ARPT _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("ARPT _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("ARPT _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("ARPT _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP05.ARPT.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP05.ARPT.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP05.ARPT.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP06.PXSX)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP06.PXSX.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("PXSX _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("PXSX _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("PXSX _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("PXSX _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP06.PXSX.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP06.PXSX.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP06.PXSX.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP07.PXSX)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP07.PXSX.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("PXSX _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("PXSX _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("PXSX _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("PXSX _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP07.PXSX.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP07.PXSX.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP07.PXSX.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP08.PXSX)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                        }
                        Case (One)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x02)
                        {
                        }
                        Case (0x03)
                        {
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (Zero)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107")))
            {
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        Return (WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (SELF ())
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32,
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            Switch (ToInteger (VDID))  // Fixed Compiler Warning
            {
                Case (0x093C8086)
                {
                    Break
                }
                Case (0x095A8086)
                {
                    Break
                }
                Case (0x095B8086)
                {
                    Break
                }
                Case (0x31658086)
                {
                    Break
                }
                Case (0x31668086)
                {
                    Break
                }
                Case (0x08B18086)
                {
                    Break
                }
                Case (0x08B28086)
                {
                    Break
                }
                Case (0x08B38086)
                {
                    Break
                }
                Case (0x08B48086)
                {
                    Break
                }
                Case (0x24F38086)
                {
                    Break
                }
                Case (0x24F48086)
                {
                    Break
                }
                Case (0x24F58086)
                {
                    Break
                }
                Case (0x24F68086)
                {
                    Break
                }
                Default
                {
                    Return (Package (0x02)
                    {
                        Zero,
                        Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        }
                    })
                }

            }

            DerefOf (SPLX [One]) [Zero] = DOM1 /* \DOM1 */
            DerefOf (SPLX [One]) [One] = LIM1 /* \LIM1 */
            DerefOf (SPLX [One]) [0x02] = TIM1 /* \TIM1 */
            DerefOf (SPLX [0x02]) [Zero] = DOM2 /* \DOM2 */
            DerefOf (SPLX [0x02]) [One] = LIM2 /* \LIM2 */
            DerefOf (SPLX [0x02]) [0x02] = TIM2 /* \TIM2 */
            DerefOf (SPLX [0x03]) [Zero] = DOM3 /* \DOM3 */
            DerefOf (SPLX [0x03]) [One] = LIM3 /* \LIM3 */
            DerefOf (SPLX [0x03]) [0x02] = TIM3 /* \TIM3 */
            Return (SPLX) /* \_SB_.PCI0.RP08.PXSX.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("PXSX _STA")
                Return (Zero)  // Fixed Compiler Warning
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("PXSX _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("PXSX _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("PXSX _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP08.PXSX.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            Zero,
            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            },

            Package (0x03)
            {
                0x80000000,
                0x80000000,
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0 /* \TRD0 */
            DerefOf (WANX [One]) [0x02] = TRL0 /* \TRL0 */
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1 /* \TRD1 */
            DerefOf (WANX [0x02]) [0x02] = TRL1 /* \TRL1 */
            Return (WANX) /* \_SB_.PCI0.RP08.PXSX.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            Zero,
            Package (0x02)
            {
                0x80000000,
                0x8000
            },

            Package (0x02)
            {
                0x80000000,
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1 /* \WDM1 */
            DerefOf (WRDX [One]) [One] = CID1 /* \CID1 */
            DerefOf (WRDX [0x02]) [Zero] = WDM2 /* \WDM2 */
            DerefOf (WRDX [0x02]) [One] = CID2 /* \CID2 */
            Return (WRDX) /* \_SB_.PCI0.RP08.PXSX.WRDX */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (ToInteger (VDID))  // Fixed Compiler Warning
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (WHIT, 0, NotSerialized)
        {
            Return (Package (0x01)
            {
                Package (0x05)
                {
                    "DockOemId",
                    "DockSkuId",
                    Zero,
                    0x02,
                    0x02
                }
            })
        }

        Method (SELF, 0, NotSerialized)
        {
            Return (Package (0x02)
            {
                "PcOemId",
                "PcSkuId"
            })
        }
    }

    Scope (_SB.PCI0.SAT0.PRT0)
    {
        Name (FDEV, Zero)
        Name (FDRP, Zero)
        Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
        {
            CreateByteField (Arg0, 0x9D, BFDS)
            ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SAT0.PRT0.FDEV */
            CreateByteField (Arg0, 0x9A, BFRP)
            ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SAT0.PRT0.FDRP */
        }

        Method (_GTF, 0, Serialized)  // _GTF: Get Task File
        {
            If ((((DVS0 == One) && ((FDEV & One) == One)) &&
                ((FDRP & 0x80) == 0x80)))
            {
                Name (PIB1, Buffer (0x07)
                {
                     0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                })
                Return (PIB1) /* \_SB_.PCI0.SAT0.PRT0._GTF.PIB1 */
            }

            Name (PIB2, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
            })
            Return (PIB2) /* \_SB_.PCI0.SAT0.PRT0._GTF.PIB2 */
        }
    }

    Scope (_SB.PCI0.SAT0.PRT1)
    {
        Name (FDEV, Zero)
        Name (FDRP, Zero)
        Name (SSDF, Zero)
        Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
        {
            CreateWordField (Arg0, 0xA0, W080)
            CreateWordField (Arg0, 0x01B2, W217)
            If ((SDPO == One))
            {
                SSDF = One
            }
            ElseIf ((SDPO == 0x02))
            {
                If ((W080 != 0xFFFF))
                {
                    If ((W080 && 0x0100))
                    {
                        If ((W217 == One))
                        {
                            SSDF = One
                        }
                    }
                }
            }

            CreateByteField (Arg0, 0x9D, BFDS)
            ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SAT0.PRT1.FDEV */
            CreateByteField (Arg0, 0x9A, BFRP)
            ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SAT0.PRT1.FDRP */
        }

        Method (_GTF, 0, Serialized)  // _GTF: Get Task File
        {
            If ((((DVS1 == One) && ((FDEV & One) == One)) &&
                ((FDRP & 0x80) == 0x80)))
            {
                Name (PIB1, Buffer (0x07)
                {
                     0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                })
                Return (PIB1) /* \_SB_.PCI0.SAT0.PRT1._GTF.PIB1 */
            }

            Name (PIB2, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
            })
            Return (PIB2) /* \_SB_.PCI0.SAT0.PRT1._GTF.PIB2 */
        }
    }

    Scope (_SB.PCI0.SAT0.PRT2)
    {
        Name (FDEV, Zero)
        Name (FDRP, Zero)
        Name (SSDF, Zero)
        Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
        {
            CreateWordField (Arg0, 0xA0, W080)
            CreateWordField (Arg0, 0x01B2, W217)
            If ((SDPO == One))
            {
                SSDF = One
            }
            ElseIf ((SDPO == 0x02))
            {
                If ((W080 != 0xFFFF))
                {
                    If ((W080 && 0x0100))
                    {
                        If ((W217 == One))
                        {
                            SSDF = One
                        }
                    }
                }
            }

            CreateByteField (Arg0, 0x9D, BFDS)
            ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SAT0.PRT2.FDEV */
            CreateByteField (Arg0, 0x9A, BFRP)
            ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SAT0.PRT2.FDRP */
        }

        Method (_GTF, 0, Serialized)  // _GTF: Get Task File
        {
            If ((((DVS2 == One) && ((FDEV & One) == One)) &&
                ((FDRP & 0x80) == 0x80)))
            {
                Name (PIB1, Buffer (0x07)
                {
                     0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                })
                Return (PIB1) /* \_SB_.PCI0.SAT0.PRT2._GTF.PIB1 */
            }

            Name (PIB2, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
            })
            Return (PIB2) /* \_SB_.PCI0.SAT0.PRT2._GTF.PIB2 */
        }
    }

    Scope (_SB.PCI0.SAT0.PRT3)
    {
        Name (FDEV, Zero)
        Name (FDRP, Zero)
        Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
        {
            CreateByteField (Arg0, 0x9D, BFDS)
            ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SAT0.PRT3.FDEV */
            CreateByteField (Arg0, 0x9A, BFRP)
            ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SAT0.PRT3.FDRP */
        }

        Method (_GTF, 0, Serialized)  // _GTF: Get Task File
        {
            If ((((DVS3 == One) && ((FDEV & One) == One)) &&
                ((FDRP & 0x80) == 0x80)))
            {
                Name (PIB1, Buffer (0x07)
                {
                     0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                })
                Return (PIB1) /* \_SB_.PCI0.SAT0.PRT3._GTF.PIB1 */
            }

            Name (PIB2, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
            })
            Return (PIB2) /* \_SB_.PCI0.SAT0.PRT3._GTF.PIB2 */
        }
    }

    Scope (_SB.PCI0)
    {
        Device (IMEI)  // Intel Corporation 9 Series Chipset Family ME Interface [8086:8cba]
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                ADBG ("DRMB = ")
                ADBG (DRMB)
            }

            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadOnly,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y24)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.PCI0.IMEI._Y24._BAS, DBAS)  // _BAS: Base Address
                CreateDWordField (CRS, \_SB.PCI0.IMEI._Y24._LEN, DLEN)  // _LEN: Length
                If ((DRMB != Zero))
                {
                    DBAS = DRMB /* \DRMB */
                    DLEN = 0x01000000
                }

                Return (CRS) /* \_SB_.PCI0.IMEI.CRS_ */
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Switch (ToInteger (DerefOf (Arg3 [Zero])))  // Fixed Compiler Warning
                        {
                            Case (Zero)
                            {
                                P8XH (Zero, 0x5C)
                            }
                            Case (One)
                            {
                                If (CondRefOf (\_SB.SLPB))
                                {
                                    Notify (SLPB, 0x80) // Status Change
                                    P8XH (Zero, 0x5D)
                                }
                            }
                            Case (0x02)
                            {
                            }
                            Case (0x03)
                            {
                            }

                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                ElseIf ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
                ElseIf ((Arg0 == ToUUID ("ad27b3f7-13af-4fa3-93c9-eefd1f9d6ac7")))
                {
                    Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                    {
                        Case (Zero)
                        {
                            Return (0x03)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)  // Fixed Compiler Warning
            }
        }
    }

    Scope (_SB.PCI0.HDEF)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("c5c5d98d-360e-43af-b7c1-3ede8f669ad3")))
            {
                ADBG ("Audio Player call")
                Switch (ToInteger (Arg2))  // Fixed Compiler Warning
                {
                    Case (Zero)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (One)
                    {
                        If ((DerefOf (Arg3 [Zero]) == Zero))
                        {
                            ADBG ("Audio not active")
                            VBOK = Zero
                        }
                        Else
                        {
                            ADBG ("Audio is active")
                            VBOK = One
                        }
                    }

                }

                Return (Zero)
            }

            If ((ECR1 == One))
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350,
                                Ones,
                                Ones,
                                0xC350,
                                Ones
                            })
                        }
                    }
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB)
    {
        Name (UPCN, Package (0x04)
        {
            Zero,
            Zero,
            Zero,
            Zero
        })
        Name (UPC3, Package (0x04)
        {
            0xFF,
            0x03,
            Zero,
            Zero
        })
        Name (UPC2, Package (0x04)
        {
            0xFF,
            Zero,
            Zero,
            Zero
        })
        Name (UPCP, Package (0x04)
        {
            0xFF,
            0xFF,
            Zero,
            Zero
        })
        Name (PLDN, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            }
        })
        Name (PLDV, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            }
        })
        Name (PLDR, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            }
        })
        Name (PLD1, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                /* 0008 */  0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00   // i.......
            }
        })
        Name (PLD2, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                /* 0008 */  0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   // i.......
            }
        })
        Name (PLD3, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                /* 0008 */  0x71, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PL23, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x70, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00   // p.......
            }
        })
        Name (PLD4, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                /* 0008 */  0x71, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PL24, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x70, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   // p.......
            }
        })
        Name (PLD5, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x71, 0x0C, 0x80, 0x02, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PL25, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x71, 0x0C, 0x80, 0x02, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PLD6, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x69, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   // i.......
            }
        })
        Name (PL26, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x70, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   // p.......
            }
        })
        Name (PLD7, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x71, 0x0C, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PL27, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x70, 0x0C, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00   // p.......
            }
        })
        Name (PLD8, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x71, 0x0C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PL28, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x70, 0x0C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00   // p.......
            }
        })
        Name (PLD9, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                /* 0008 */  0x71, 0x0C, 0x80, 0x04, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PLDA, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                /* 0008 */  0x71, 0x0C, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00   // q.......
            }
        })
        Name (PLDB, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x31, 0x1C, 0x80, 0x05, 0x00, 0x00, 0x00, 0x00   // 1.......
            }
        })
        Name (PLDC, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x31, 0x1C, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00   // 1.......
            }
        })
        Name (PLDD, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x31, 0x1C, 0x80, 0x06, 0x00, 0x00, 0x00, 0x00   // 1.......
            }
        })
        Name (PLDE, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x31, 0x1C, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00   // 1.......
            }
        })
        Name (PL2E, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x30, 0x1C, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00   // 0.......
            }
        })
        Name (PL2F, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x30, 0x1C, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00   // 0.......
            }
        })
        Name (PLDF, Package (0x01)
        {
            Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x30, 0x1C, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00   // 0.......
            }
        })
        Name (PLDG, Package (0x01)
        {
            Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x24, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,  // $.......
                /* 0010 */  0xC8, 0x00, 0xA0, 0x00                           // ....
            }
        })
        Name (PLDH, Package (0x01)
        {
            Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x28, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,  // (.......
                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
            }
        })
        Name (PLDI, Package (0x01)
        {
            Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x24, 0x01, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00,  // $.......
                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
            }
        })
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_SB.PCI0.XHC.RHUB.INIR))
            {
                INIR ()
            }
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            Return (PLD1) /* \_SB_.PCI0.XHC_.RHUB.PLD1 */
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x24))
            {
                Return (UPC2) /* \_SB_.PCI0.XHC_.RHUB.UPC2 */
            }

            Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            Return (PLD2) /* \_SB_.PCI0.XHC_.RHUB.PLD2 */
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If (((BID == 0x31) || ((BID == 0x24) || ((BID ==
                0x22) || ((BID == 0x27) || ((BID == 0x28) || ((BID == 0x80) ||
                ((BID == 0x82) || ((BID == 0x83) || (BID == 0x84))))))))))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If (((BID == 0x31) || ((BID == 0x24) || ((BID ==
                0x22) || ((BID == 0x27) || ((BID == 0x28) || ((BID == 0x80) ||
                ((BID == 0x82) || ((BID == 0x83) || (BID == 0x84))))))))))
            {
                Return (PL23) /* \_SB_.PCI0.XHC_.RHUB.PL23 */
            }

            Return (PLD3) /* \_SB_.PCI0.XHC_.RHUB.PLD3 */
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x31))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            If ((((BID == 0x22) || (BID == 0x27)) || (BID == 0x28)))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            If (((BID == 0x80) || (BID == 0x83)))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            If ((BID == 0x82))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If ((BID == 0x31))
            {
                Return (PLDG) /* \_SB_.PCI0.XHC_.RHUB.PLDG */
            }

            If ((((BID == 0x22) || (BID == 0x27)) || (BID == 0x28)))
            {
                Return (PL24) /* \_SB_.PCI0.XHC_.RHUB.PL24 */
            }

            If (((BID == 0x80) || (BID == 0x83)))
            {
                Return (PL24) /* \_SB_.PCI0.XHC_.RHUB.PL24 */
            }

            Return (PLD4) /* \_SB_.PCI0.XHC_.RHUB.PLD4 */
        }

        // Removed Device (WCAM)
    }

    Scope (_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If (((BID == 0x24) || (BID == 0x20)))
            {
                If (((RCG0 & 0x02) == 0x02))
                {
                    Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
                }
            }

            If (((BID == 0x03) || (BID == 0x04)))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x31))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Return (UPC2) /* \_SB_.PCI0.XHC_.RHUB.UPC2 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If (((BID == 0x24) || (BID == 0x20)))
            {
                If (((RCG0 & 0x02) == 0x02))
                {
                    Return (PL25) /* \_SB_.PCI0.XHC_.RHUB.PL25 */
                }
            }

            If (((BID == 0x80) || (BID == 0x82)))
            {
                Return (PL25) /* \_SB_.PCI0.XHC_.RHUB.PL25 */
            }

            If (((BID == 0x03) || (BID == 0x04)))
            {
                Return (PLDV) /* \_SB_.PCI0.XHC_.RHUB.PLDV */
            }

            If ((BID == 0x31))
            {
                Return (PL25) /* \_SB_.PCI0.XHC_.RHUB.PL25 */
            }

            Return (PLD5) /* \_SB_.PCI0.XHC_.RHUB.PLD5 */
        }

        // Removed Device (WCAM)
    }

    Scope (_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x31))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            If ((((BID == 0x80) || (BID == 0x82)) || (BID == 0x83)))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Return (UPC2) /* \_SB_.PCI0.XHC_.RHUB.UPC2 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If ((((BID == 0x80) || (BID == 0x82)) || (BID == 0x83)))
            {
                Return (PL26) /* \_SB_.PCI0.XHC_.RHUB.PL26 */
            }

            If ((BID == 0x31))
            {
                Return (PL26) /* \_SB_.PCI0.XHC_.RHUB.PL26 */
            }

            Return (PLD6) /* \_SB_.PCI0.XHC_.RHUB.PLD6 */
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x31))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x24))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            If ((BID == 0x80))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x82))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x83))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            Return (UPC2) /* \_SB_.PCI0.XHC_.RHUB.UPC2 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If ((BID == 0x31))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If ((BID == 0x24))
            {
                Return (PL27) /* \_SB_.PCI0.XHC_.RHUB.PL27 */
            }

            If ((BID == 0x80))
            {
                Return (PL27) /* \_SB_.PCI0.XHC_.RHUB.PL27 */
            }

            If ((BID == 0x82))
            {
                Return (PL27) /* \_SB_.PCI0.XHC_.RHUB.PL27 */
            }

            If ((BID == 0x83))
            {
                Return (PL27) /* \_SB_.PCI0.XHC_.RHUB.PL27 */
            }

            If ((SHTP == One))
            {
                Return (PL27) /* \_SB_.PCI0.XHC_.RHUB.PL27 */
            }

            Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS08)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x31))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x80))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x82))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x83))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x24))
            {
                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Return (UPC2) /* \_SB_.PCI0.XHC_.RHUB.UPC2 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If ((BID == 0x31))
            {
                Return (PLDV) /* \_SB_.PCI0.XHC_.RHUB.PLDV */
            }

            If ((BID == 0x80))
            {
                Return (PL28) /* \_SB_.PCI0.XHC_.RHUB.PL28 */
            }

            If ((BID == 0x82))
            {
                Return (PL28) /* \_SB_.PCI0.XHC_.RHUB.PL28 */
            }

            If ((BID == 0x83))
            {
                Return (PL28) /* \_SB_.PCI0.XHC_.RHUB.PL28 */
            }

            If ((BID == 0x24))
            {
                Return (PL28) /* \_SB_.PCI0.XHC_.RHUB.PL28 */
            }

            Return (PLD8) /* \_SB_.PCI0.XHC_.RHUB.PLD8 */
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS09))
    {
        Scope (_SB.PCI0.XHC.RHUB.HS09)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                If ((BID == 0x31))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                If ((BID == 0x31))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                Return (PLD9) /* \_SB_.PCI0.XHC_.RHUB.PLD9 */
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS10))
    {
        Scope (_SB.PCI0.XHC.RHUB.HS10)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                If ((BID == 0x31))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                If ((BID == 0x31))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                Return (PLDA) /* \_SB_.PCI0.XHC_.RHUB.PLDA */
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS11))
    {
        Scope (_SB.PCI0.XHC.RHUB.HS11)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                Return (PLDB) /* \_SB_.PCI0.XHC_.RHUB.PLDB */
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS12))
    {
        Scope (_SB.PCI0.XHC.RHUB.HS12)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS13))
    {
        Scope (_SB.PCI0.XHC.RHUB.HS13)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS14))
    {
        Scope (_SB.PCI0.XHC.RHUB.HS14)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.USBR))
    {
        Scope (_SB.PCI0.XHC.RHUB.USBR)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (PLDR) /* \_SB_.PCI0.XHC_.RHUB.PLDR */
            }
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP1)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR ()))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR ()))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            Return (PLD1) /* \_SB_.PCI0.XHC_.RHUB.PLD1 */
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP2)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            If (!PRTE (_ADR ()))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            If ((BID == 0x24))
            {
                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            If (!PRTE (_ADR ()))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            If ((BID == 0x24))
            {
                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            Return (PLD2) /* \_SB_.PCI0.XHC_.RHUB.PLD2 */
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SSP3))
    {
        Scope (_SB.PCI0.XHC.RHUB.SSP3)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR ()))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                If ((PFLV == 0x02))
                {
                    Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
                }

                If ((BID == 0x31))
                {
                    Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
                }

                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR ()))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                If ((PFLV == 0x02))
                {
                    Return (PLD3) /* \_SB_.PCI0.XHC_.RHUB.PLD3 */
                }

                If ((BID == 0x31))
                {
                    Return (PLDH) /* \_SB_.PCI0.XHC_.RHUB.PLDH */
                }

                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            // Removed Device (WCAM)
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SSP4))
    {
        Scope (_SB.PCI0.XHC.RHUB.SSP4)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR ()))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                If ((PCHV () != LPTH))
                {
                    Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
                }

                If ((PFLV == 0x02))
                {
                    Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
                }

                If ((BID == 0x31))
                {
                    If ((SKID == One))
                    {
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
                    }

                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                If ((((BID == 0x80) || (BID == 0x82)) || (BID == 0x83)))
                {
                    Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
                }

                Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR ()))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                If ((BID == 0x31))
                {
                    If ((SKID == One))
                    {
                        Return (PLDI) /* \_SB_.PCI0.XHC_.RHUB.PLDI */
                    }

                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                If ((((BID == 0x80) || (BID == 0x82)) || (BID == 0x83)))
                {
                    Return (PL2F) /* \_SB_.PCI0.XHC_.RHUB.PL2F */
                }

                If ((PCHV () != LPTH))
                {
                    Return (PLD4) /* \_SB_.PCI0.XHC_.RHUB.PLD4 */
                }

                If ((PFLV == 0x02))
                {
                    Return (PLD4) /* \_SB_.PCI0.XHC_.RHUB.PLD4 */
                }

                Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
            }

            // Removed Device (CDPT)

            // Removed Device (CRGB)
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SSP5))
    {
        Scope (_SB.PCI0.XHC.RHUB.SSP5)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR ()))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR ()))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                If ((PFLV == 0x02))
                {
                    Return (PLD9) /* \_SB_.PCI0.XHC_.RHUB.PLD9 */
                }

                Return (PLD3) /* \_SB_.PCI0.XHC_.RHUB.PLD3 */
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SSP6))
    {
        Scope (_SB.PCI0.XHC.RHUB.SSP6)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                If (!PRTE (_ADR ()))
                {
                    Return (UPCN) /* \_SB_.PCI0.XHC_.RHUB.UPCN */
                }

                If ((PFLV == 0x02))
                {
                    Return (UPC3) /* \_SB_.PCI0.XHC_.RHUB.UPC3 */
                }

                Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.UPCP */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                If (!PRTE (_ADR ()))
                {
                    Return (PLDN) /* \_SB_.PCI0.XHC_.RHUB.PLDN */
                }

                If ((PFLV == 0x02))
                {
                    Return (PLDA) /* \_SB_.PCI0.XHC_.RHUB.PLDA */
                }

                Return (PLD4) /* \_SB_.PCI0.XHC_.RHUB.PLD4 */
            }
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR11)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR11._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR11._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR12)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR12._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR12._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR13)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR13._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
            If ((PCHS == 0x02))
            {
                VIS &= Zero
            }

            Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR13._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR14)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR14._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR14._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR15)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR15._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR15._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR16)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR16._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR16._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR17)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR17._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR17._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH01.HUB1.PR01.PR18)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH01.HUB1.PR01.PR18._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH01.HUBN.PR01.PR18._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH02.HUB2.PR01.PR11)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR11._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR11._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH02.HUB2.PR01.PR12)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR12._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR12._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH02.HUB2.PR01.PR13)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR13._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR13._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH02.HUB2.PR01.PR14)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR14._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR14._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH02.HUB2.PR01.PR15)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR15._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR15._PLD.PLDP */
        }
    }

    Scope (_SB.PCI0.EH02.HUB2.PR01.PR16)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0xFF,
                0xFF,
                Zero,
                Zero
            })
            Return (UPCP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR16._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Return (PLDP) /* \_SB_.PCI0.EH02.HUBN.PR01.PR16._PLD.PLDP */
        }
    }

    // Removed Device (ICAM)

    Device (_SB.PCI0.LPCB.TPM)
    {
        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
        {
            If (TCMF)
            {
                Return (Zero)  // Fixed Compiler Warning
            }
            Else
            {
                Return (0x0201D824)
            }
        }

        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            ACCS,   8,
            Offset (0x18),
            TSTA,   8,
            TBCA,   8,
            Offset (0xF00),
            TVID,   16,
            TDID,   16
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (TPMF)
            {
                Return (0x0F)
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.LPCB.TPM)
    {
        OperationRegion (ASMI, SystemIO, SMIA, One)
        Field (ASMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8
        }

        OperationRegion (BSMI, SystemIO, SMIB, One)
        Field (BSMI, ByteAcc, NoLock, Preserve)
        {
            DAT,    8
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        Return ("1.2")
                    }
                    Case (0x02)
                    {
                        ToInteger (DerefOf (Arg3 [Zero]), TMF2) /* \TMF2 */
                        TMF1 = 0x12
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        DAT = TMF2 /* \TMF2 */
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        If ((DAT == 0xF1))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }
                    Case (0x03)
                    {
                        Name (PPI1, Package (0x02)
                        {
                            Zero,
                            Zero
                        })
                        DAT = 0x11
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (One)
                        }

                        PPI1 [One] = DAT /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                        Return (PPI1) /* \_SB_.PCI0.LPCB.TPM_._DSM.PPI1 */
                    }
                    Case (0x04)
                    {
                        Return (TRST) /* \TRST */
                    }
                    Case (0x05)
                    {
                        Name (PPI2, Package (0x03)
                        {
                            Zero,
                            Zero,
                            Zero
                        })
                        DAT = 0x21
                        INQ = OFST /* \OFST */
                        PPI2 [One] = DAT /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        DAT = 0x31
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        If ((DAT == 0xF0))
                        {
                            DAT = 0x51
                            INQ = OFST /* \OFST */
                            If ((DAT == 0xFF))
                            {
                                PPI2 [0x02] = 0xFFFFFFF0
                                Return (PPI2) /* \_SB_.PCI0.LPCB.TPM_._DSM.PPI2 */
                            }
                        }
                        ElseIf ((DAT == 0xF1))
                        {
                            DAT = 0x51
                            INQ = OFST /* \OFST */
                            If ((DAT == 0xFF))
                            {
                                PPI2 [0x02] = 0xFFFFFFF1
                                Return (PPI2) /* \_SB_.PCI0.LPCB.TPM_._DSM.PPI2 */
                            }
                        }
                        Else
                        {
                            PPI2 [0x02] = DAT /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                        }

                        Return (PPI2) /* \_SB_.PCI0.LPCB.TPM_._DSM.PPI2 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        ToInteger (DerefOf (Arg3 [Zero]), TMF2) /* \TMF2 */
                        TMF1 = 0x12
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        DAT = TMF2 /* \TMF2 */
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        If ((DAT == 0xF1))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }
                    Case (0x08)
                    {
                        ToInteger (DerefOf (Arg3 [Zero]), TMF2) /* \TMF2 */
                        TMF1 = 0x43
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        DAT = TMF2 /* \TMF2 */
                        INQ = OFST /* \OFST */
                        Return (DAT) /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                    }
                    Default
                    {
                    }

                }
            }
            ElseIf ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        TMF1 = 0x22
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        ToInteger (DerefOf (Arg3 [Zero]), TMF1) /* \TMF1 */
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If ((DAT == 0xFF))
                        {
                            Return (0x02)
                        }

                        Return (Zero)
                    }
                    Default
                    {
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    OperationRegion (ABNV, SystemMemory, 0xD97F4000, 0x000D)
    Field (ABNV, AnyAcc, Lock, Preserve)
    {
        ABMA,   64,
        ABMS,   8,
        ABIA,   16,
        ABIL,   8
    }

    // Removed Device (WMIO)

    Scope (_SB)
    {
        Device (PTMD)
        {
            Name (_HID, EisaId ("INT3394") /* ACPI System Fan */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00010000)
            Name (GSCV, 0x69)
            Method (GACI, 0, Serialized)  // Fixed Compiler Remark
            {
                OperationRegion (GCAD, SystemMemory, 0xD97E3018, 0x0594)
                Field (GCAD, ByteAcc, NoLock, Preserve)
                {
                    XBUF,   11424
                }

                Name (XTMP, Buffer (0x0594){})
                XTMP = XBUF /* \_SB_.PTMD.GACI.XBUF */
                Name (RPKG, Package (0x02){})
                RPKG [Zero] = Zero
                RPKG [One] = XTMP /* \_SB_.PTMD.GACI.XTMP */
                Return (RPKG) /* \_SB_.PTMD.GACI.RPKG */
            }

            Method (GDSV, 1, Serialized)
            {
                Name (PL1T, Package (0x02)
                {
                    Zero,
                    Buffer (0xC0)
                    {
                        /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // ........
                        /* 0018 */  0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,  // ........
                        /* 0020 */  0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00,  // ........
                        /* 0028 */  0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00,  // ........
                        /* 0030 */  0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00,  // ........
                        /* 0038 */  0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,  // ........
                        /* 0040 */  0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00,  // ........
                        /* 0048 */  0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00,  // ........
                        /* 0050 */  0x0E, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00,  // ........
                        /* 0058 */  0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,  // ........
                        /* 0060 */  0x14, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00,  // ........
                        /* 0068 */  0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00,  // ........
                        /* 0070 */  0x1C, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00,  // ........
                        /* 0078 */  0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00,  //  ... ...
                        /* 0080 */  0x28, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00,  // (...(...
                        /* 0088 */  0x30, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00,  // 0...0...
                        /* 0090 */  0x38, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00,  // 8...8...
                        /* 0098 */  0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,  // @...@...
                        /* 00A0 */  0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00,  // P...P...
                        /* 00A8 */  0x60, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00,  // `...`...
                        /* 00B0 */  0x70, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00,  // p...p...
                        /* 00B8 */  0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00   // ........
                    }
                })
                Name (SVID, Package (0x02)
                {
                    Zero,
                    Buffer (0x03F8)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x08, 0x07, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00,  // ........
                        /* 0010 */  0x12, 0x07, 0x00, 0x00, 0x12, 0x07, 0x00, 0x00,  // ........
                        /* 0018 */  0x1C, 0x07, 0x00, 0x00, 0x1C, 0x07, 0x00, 0x00,  // ........
                        /* 0020 */  0x26, 0x07, 0x00, 0x00, 0x26, 0x07, 0x00, 0x00,  // &...&...
                        /* 0028 */  0x30, 0x07, 0x00, 0x00, 0x30, 0x07, 0x00, 0x00,  // 0...0...
                        /* 0030 */  0x3A, 0x07, 0x00, 0x00, 0x3A, 0x07, 0x00, 0x00,  // :...:...
                        /* 0038 */  0x44, 0x07, 0x00, 0x00, 0x44, 0x07, 0x00, 0x00,  // D...D...
                        /* 0040 */  0x4E, 0x07, 0x00, 0x00, 0x4E, 0x07, 0x00, 0x00,  // N...N...
                        /* 0048 */  0x58, 0x07, 0x00, 0x00, 0x58, 0x07, 0x00, 0x00,  // X...X...
                        /* 0050 */  0x62, 0x07, 0x00, 0x00, 0x62, 0x07, 0x00, 0x00,  // b...b...
                        /* 0058 */  0x6C, 0x07, 0x00, 0x00, 0x6C, 0x07, 0x00, 0x00,  // l...l...
                        /* 0060 */  0x76, 0x07, 0x00, 0x00, 0x76, 0x07, 0x00, 0x00,  // v...v...
                        /* 0068 */  0x80, 0x07, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00,  // ........
                        /* 0070 */  0x8A, 0x07, 0x00, 0x00, 0x8A, 0x07, 0x00, 0x00,  // ........
                        /* 0078 */  0x94, 0x07, 0x00, 0x00, 0x94, 0x07, 0x00, 0x00,  // ........
                        /* 0080 */  0x9E, 0x07, 0x00, 0x00, 0x9E, 0x07, 0x00, 0x00,  // ........
                        /* 0088 */  0xA8, 0x07, 0x00, 0x00, 0xA8, 0x07, 0x00, 0x00,  // ........
                        /* 0090 */  0xB2, 0x07, 0x00, 0x00, 0xB2, 0x07, 0x00, 0x00,  // ........
                        /* 0098 */  0xBC, 0x07, 0x00, 0x00, 0xBC, 0x07, 0x00, 0x00,  // ........
                        /* 00A0 */  0xC6, 0x07, 0x00, 0x00, 0xC6, 0x07, 0x00, 0x00,  // ........
                        /* 00A8 */  0xD0, 0x07, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00,  // ........
                        /* 00B0 */  0xD5, 0x07, 0x00, 0x00, 0xD5, 0x07, 0x00, 0x00,  // ........
                        /* 00B8 */  0xDA, 0x07, 0x00, 0x00, 0xDA, 0x07, 0x00, 0x00,  // ........
                        /* 00C0 */  0xE4, 0x07, 0x00, 0x00, 0xE4, 0x07, 0x00, 0x00,  // ........
                        /* 00C8 */  0xEE, 0x07, 0x00, 0x00, 0xEE, 0x07, 0x00, 0x00,  // ........
                        /* 00D0 */  0xF8, 0x07, 0x00, 0x00, 0xF8, 0x07, 0x00, 0x00,  // ........
                        /* 00D8 */  0x02, 0x08, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00,  // ........
                        /* 00E0 */  0x0C, 0x08, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,  // ........
                        /* 00E8 */  0x16, 0x08, 0x00, 0x00, 0x16, 0x08, 0x00, 0x00,  // ........
                        /* 00F0 */  0x20, 0x08, 0x00, 0x00, 0x20, 0x08, 0x00, 0x00,  //  ... ...
                        /* 00F8 */  0x2A, 0x08, 0x00, 0x00, 0x2A, 0x08, 0x00, 0x00,  // *...*...
                        /* 0100 */  0x34, 0x08, 0x00, 0x00, 0x34, 0x08, 0x00, 0x00,  // 4...4...
                        /* 0108 */  0x3E, 0x08, 0x00, 0x00, 0x3E, 0x08, 0x00, 0x00,  // >...>...
                        /* 0110 */  0x48, 0x08, 0x00, 0x00, 0x48, 0x08, 0x00, 0x00,  // H...H...
                        /* 0118 */  0x52, 0x08, 0x00, 0x00, 0x52, 0x08, 0x00, 0x00,  // R...R...
                        /* 0120 */  0x5C, 0x08, 0x00, 0x00, 0x5C, 0x08, 0x00, 0x00,  // \...\...
                        /* 0128 */  0x66, 0x08, 0x00, 0x00, 0x66, 0x08, 0x00, 0x00,  // f...f...
                        /* 0130 */  0x70, 0x08, 0x00, 0x00, 0x70, 0x08, 0x00, 0x00,  // p...p...
                        /* 0138 */  0x7A, 0x08, 0x00, 0x00, 0x7A, 0x08, 0x00, 0x00,  // z...z...
                        /* 0140 */  0x84, 0x08, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00,  // ........
                        /* 0148 */  0x8E, 0x08, 0x00, 0x00, 0x8E, 0x08, 0x00, 0x00,  // ........
                        /* 0150 */  0x98, 0x08, 0x00, 0x00, 0x98, 0x08, 0x00, 0x00,  // ........
                        /* 0158 */  0xA2, 0x08, 0x00, 0x00, 0xA2, 0x08, 0x00, 0x00,  // ........
                        /* 0160 */  0xAC, 0x08, 0x00, 0x00, 0xAC, 0x08, 0x00, 0x00,  // ........
                        /* 0168 */  0xB6, 0x08, 0x00, 0x00, 0xB6, 0x08, 0x00, 0x00,  // ........
                        /* 0170 */  0xC0, 0x08, 0x00, 0x00, 0xC0, 0x08, 0x00, 0x00,  // ........
                        /* 0178 */  0xCA, 0x08, 0x00, 0x00, 0xCA, 0x08, 0x00, 0x00,  // ........
                        /* 0180 */  0xD4, 0x08, 0x00, 0x00, 0xD4, 0x08, 0x00, 0x00,  // ........
                        /* 0188 */  0xDE, 0x08, 0x00, 0x00, 0xDE, 0x08, 0x00, 0x00,  // ........
                        /* 0190 */  0xE8, 0x08, 0x00, 0x00, 0xE8, 0x08, 0x00, 0x00,  // ........
                        /* 0198 */  0xF2, 0x08, 0x00, 0x00, 0xF2, 0x08, 0x00, 0x00,  // ........
                        /* 01A0 */  0xFC, 0x08, 0x00, 0x00, 0xFC, 0x08, 0x00, 0x00,  // ........
                        /* 01A8 */  0x05, 0x09, 0x00, 0x00, 0x05, 0x09, 0x00, 0x00,  // ........
                        /* 01B0 */  0x10, 0x09, 0x00, 0x00, 0x10, 0x09, 0x00, 0x00,  // ........
                        /* 01B8 */  0x1A, 0x09, 0x00, 0x00, 0x1A, 0x09, 0x00, 0x00,  // ........
                        /* 01C0 */  0x24, 0x09, 0x00, 0x00, 0x24, 0x09, 0x00, 0x00,  // $...$...
                        /* 01C8 */  0x2E, 0x09, 0x00, 0x00, 0x2E, 0x09, 0x00, 0x00,  // ........
                        /* 01D0 */  0x38, 0x09, 0x00, 0x00, 0x38, 0x09, 0x00, 0x00,  // 8...8...
                        /* 01D8 */  0x42, 0x09, 0x00, 0x00, 0x42, 0x09, 0x00, 0x00,  // B...B...
                        /* 01E0 */  0x4C, 0x09, 0x00, 0x00, 0x4C, 0x09, 0x00, 0x00,  // L...L...
                        /* 01E8 */  0x56, 0x09, 0x00, 0x00, 0x56, 0x09, 0x00, 0x00,  // V...V...
                        /* 01F0 */  0x60, 0x09, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00,  // `...`...
                        /* 01F8 */  0x6A, 0x09, 0x00, 0x00, 0x6A, 0x09, 0x00, 0x00,  // j...j...
                        /* 0200 */  0x74, 0x09, 0x00, 0x00, 0x74, 0x09, 0x00, 0x00,  // t...t...
                        /* 0208 */  0x7E, 0x09, 0x00, 0x00, 0x7E, 0x09, 0x00, 0x00,  // ~...~...
                        /* 0210 */  0x88, 0x09, 0x00, 0x00, 0x88, 0x09, 0x00, 0x00,  // ........
                        /* 0218 */  0x92, 0x09, 0x00, 0x00, 0x92, 0x09, 0x00, 0x00,  // ........
                        /* 0220 */  0x9C, 0x09, 0x00, 0x00, 0x9C, 0x09, 0x00, 0x00,  // ........
                        /* 0228 */  0xA6, 0x09, 0x00, 0x00, 0xA6, 0x09, 0x00, 0x00,  // ........
                        /* 0230 */  0xB0, 0x09, 0x00, 0x00, 0xB0, 0x09, 0x00, 0x00,  // ........
                        /* 0238 */  0xBA, 0x09, 0x00, 0x00, 0xBA, 0x09, 0x00, 0x00,  // ........
                        /* 0240 */  0xC4, 0x09, 0x00, 0x00, 0xC4, 0x09, 0x00, 0x00,  // ........
                        /* 0248 */  0xCE, 0x09, 0x00, 0x00, 0xCE, 0x09, 0x00, 0x00,  // ........
                        /* 0250 */  0xD8, 0x09, 0x00, 0x00, 0xD8, 0x09, 0x00, 0x00,  // ........
                        /* 0258 */  0xE2, 0x09, 0x00, 0x00, 0xE2, 0x09, 0x00, 0x00,  // ........
                        /* 0260 */  0xEC, 0x09, 0x00, 0x00, 0xEC, 0x09, 0x00, 0x00,  // ........
                        /* 0268 */  0xF6, 0x09, 0x00, 0x00, 0xF6, 0x09, 0x00, 0x00,  // ........
                        /* 0270 */  0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00,  // ........
                        /* 0278 */  0x0A, 0x0A, 0x00, 0x00, 0x0A, 0x0A, 0x00, 0x00,  // ........
                        /* 0280 */  0x14, 0x0A, 0x00, 0x00, 0x14, 0x0A, 0x00, 0x00,  // ........
                        /* 0288 */  0x1E, 0x0A, 0x00, 0x00, 0x1E, 0x0A, 0x00, 0x00,  // ........
                        /* 0290 */  0x28, 0x0A, 0x00, 0x00, 0x28, 0x0A, 0x00, 0x00,  // (...(...
                        /* 0298 */  0x32, 0x0A, 0x00, 0x00, 0x32, 0x0A, 0x00, 0x00,  // 2...2...
                        /* 02A0 */  0x3C, 0x0A, 0x00, 0x00, 0x3C, 0x0A, 0x00, 0x00,  // <...<...
                        /* 02A8 */  0x46, 0x0A, 0x00, 0x00, 0x46, 0x0A, 0x00, 0x00,  // F...F...
                        /* 02B0 */  0x50, 0x0A, 0x00, 0x00, 0x50, 0x0A, 0x00, 0x00,  // P...P...
                        /* 02B8 */  0x5A, 0x0A, 0x00, 0x00, 0x5A, 0x0A, 0x00, 0x00,  // Z...Z...
                        /* 02C0 */  0x64, 0x0A, 0x00, 0x00, 0x64, 0x0A, 0x00, 0x00,  // d...d...
                        /* 02C8 */  0x6E, 0x0A, 0x00, 0x00, 0x6E, 0x0A, 0x00, 0x00,  // n...n...
                        /* 02D0 */  0x78, 0x0A, 0x00, 0x00, 0x78, 0x0A, 0x00, 0x00,  // x...x...
                        /* 02D8 */  0x82, 0x0A, 0x00, 0x00, 0x82, 0x0A, 0x00, 0x00,  // ........
                        /* 02E0 */  0x8C, 0x0A, 0x00, 0x00, 0x8C, 0x0A, 0x00, 0x00,  // ........
                        /* 02E8 */  0x96, 0x0A, 0x00, 0x00, 0x96, 0x0A, 0x00, 0x00,  // ........
                        /* 02F0 */  0xA0, 0x0A, 0x00, 0x00, 0xA0, 0x0A, 0x00, 0x00,  // ........
                        /* 02F8 */  0xAA, 0x0A, 0x00, 0x00, 0xAA, 0x0A, 0x00, 0x00,  // ........
                        /* 0300 */  0xB4, 0x0A, 0x00, 0x00, 0xB4, 0x0A, 0x00, 0x00,  // ........
                        /* 0308 */  0xBE, 0x0A, 0x00, 0x00, 0xBE, 0x0A, 0x00, 0x00,  // ........
                        /* 0310 */  0xC8, 0x0A, 0x00, 0x00, 0xC8, 0x0A, 0x00, 0x00,  // ........
                        /* 0318 */  0xD2, 0x0A, 0x00, 0x00, 0xD2, 0x0A, 0x00, 0x00,  // ........
                        /* 0320 */  0xDC, 0x0A, 0x00, 0x00, 0xDC, 0x0A, 0x00, 0x00,  // ........
                        /* 0328 */  0xE6, 0x0A, 0x00, 0x00, 0xE6, 0x0A, 0x00, 0x00,  // ........
                        /* 0330 */  0xF0, 0x0A, 0x00, 0x00, 0xF0, 0x0A, 0x00, 0x00,  // ........
                        /* 0338 */  0xFA, 0x0A, 0x00, 0x00, 0xFA, 0x0A, 0x00, 0x00,  // ........
                        /* 0340 */  0x04, 0x0B, 0x00, 0x00, 0x04, 0x0B, 0x00, 0x00,  // ........
                        /* 0348 */  0x0E, 0x0B, 0x00, 0x00, 0x0E, 0x0B, 0x00, 0x00,  // ........
                        /* 0350 */  0x18, 0x0B, 0x00, 0x00, 0x18, 0x0B, 0x00, 0x00,  // ........
                        /* 0358 */  0x22, 0x0B, 0x00, 0x00, 0x22, 0x0B, 0x00, 0x00,  // "..."...
                        /* 0360 */  0x2C, 0x0B, 0x00, 0x00, 0x2C, 0x0B, 0x00, 0x00,  // ,...,...
                        /* 0368 */  0x36, 0x0B, 0x00, 0x00, 0x36, 0x0B, 0x00, 0x00,  // 6...6...
                        /* 0370 */  0x40, 0x0B, 0x00, 0x00, 0x40, 0x0B, 0x00, 0x00,  // @...@...
                        /* 0378 */  0x4A, 0x0B, 0x00, 0x00, 0x4A, 0x0B, 0x00, 0x00,  // J...J...
                        /* 0380 */  0x54, 0x0B, 0x00, 0x00, 0x54, 0x0B, 0x00, 0x00,  // T...T...
                        /* 0388 */  0x5E, 0x0B, 0x00, 0x00, 0x5E, 0x0B, 0x00, 0x00,  // ^...^...
                        /* 0390 */  0x68, 0x0B, 0x00, 0x00, 0x68, 0x0B, 0x00, 0x00,  // h...h...
                        /* 0398 */  0x72, 0x0B, 0x00, 0x00, 0x72, 0x0B, 0x00, 0x00,  // r...r...
                        /* 03A0 */  0x7C, 0x0B, 0x00, 0x00, 0x7C, 0x0B, 0x00, 0x00,  // |...|...
                        /* 03A8 */  0x86, 0x0B, 0x00, 0x00, 0x86, 0x0B, 0x00, 0x00,  // ........
                        /* 03B0 */  0x90, 0x0B, 0x00, 0x00, 0x90, 0x0B, 0x00, 0x00,  // ........
                        /* 03B8 */  0x9A, 0x0B, 0x00, 0x00, 0x9A, 0x0B, 0x00, 0x00,  // ........
                        /* 03C0 */  0xA4, 0x0B, 0x00, 0x00, 0xA4, 0x0B, 0x00, 0x00,  // ........
                        /* 03C8 */  0xAE, 0x0B, 0x00, 0x00, 0xAE, 0x0B, 0x00, 0x00,  // ........
                        /* 03D0 */  0xB8, 0x0B, 0x00, 0x00, 0xB8, 0x0B, 0x00, 0x00,  // ........
                        /* 03D8 */  0xC2, 0x0B, 0x00, 0x00, 0xC2, 0x0B, 0x00, 0x00,  // ........
                        /* 03E0 */  0xCC, 0x0B, 0x00, 0x00, 0xCC, 0x0B, 0x00, 0x00,  // ........
                        /* 03E8 */  0xD6, 0x0B, 0x00, 0x00, 0xD6, 0x0B, 0x00, 0x00,  // ........
                        /* 03F0 */  0xE0, 0x0B, 0x00, 0x00, 0xE0, 0x0B, 0x00, 0x00   // ........
                    }
                })
                Name (CORE, Package (0x02)
                {
                    Zero,
                    Buffer (0x0830)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x20, 0x03, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00,  //  ... ...
                        /* 0010 */  0x25, 0x03, 0x00, 0x00, 0x25, 0x03, 0x00, 0x00,  // %...%...
                        /* 0018 */  0x2A, 0x03, 0x00, 0x00, 0x2A, 0x03, 0x00, 0x00,  // *...*...
                        /* 0020 */  0x2F, 0x03, 0x00, 0x00, 0x2F, 0x03, 0x00, 0x00,  // /.../...
                        /* 0028 */  0x34, 0x03, 0x00, 0x00, 0x34, 0x03, 0x00, 0x00,  // 4...4...
                        /* 0030 */  0x39, 0x03, 0x00, 0x00, 0x39, 0x03, 0x00, 0x00,  // 9...9...
                        /* 0038 */  0x3E, 0x03, 0x00, 0x00, 0x3E, 0x03, 0x00, 0x00,  // >...>...
                        /* 0040 */  0x43, 0x03, 0x00, 0x00, 0x43, 0x03, 0x00, 0x00,  // C...C...
                        /* 0048 */  0x48, 0x03, 0x00, 0x00, 0x48, 0x03, 0x00, 0x00,  // H...H...
                        /* 0050 */  0x4D, 0x03, 0x00, 0x00, 0x4D, 0x03, 0x00, 0x00,  // M...M...
                        /* 0058 */  0x52, 0x03, 0x00, 0x00, 0x52, 0x03, 0x00, 0x00,  // R...R...
                        /* 0060 */  0x57, 0x03, 0x00, 0x00, 0x57, 0x03, 0x00, 0x00,  // W...W...
                        /* 0068 */  0x5C, 0x03, 0x00, 0x00, 0x5C, 0x03, 0x00, 0x00,  // \...\...
                        /* 0070 */  0x61, 0x03, 0x00, 0x00, 0x61, 0x03, 0x00, 0x00,  // a...a...
                        /* 0078 */  0x66, 0x03, 0x00, 0x00, 0x66, 0x03, 0x00, 0x00,  // f...f...
                        /* 0080 */  0x6B, 0x03, 0x00, 0x00, 0x6B, 0x03, 0x00, 0x00,  // k...k...
                        /* 0088 */  0x70, 0x03, 0x00, 0x00, 0x70, 0x03, 0x00, 0x00,  // p...p...
                        /* 0090 */  0x75, 0x03, 0x00, 0x00, 0x75, 0x03, 0x00, 0x00,  // u...u...
                        /* 0098 */  0x7A, 0x03, 0x00, 0x00, 0x7A, 0x03, 0x00, 0x00,  // z...z...
                        /* 00A0 */  0x7F, 0x03, 0x00, 0x00, 0x7F, 0x03, 0x00, 0x00,  // ........
                        /* 00A8 */  0x84, 0x03, 0x00, 0x00, 0x84, 0x03, 0x00, 0x00,  // ........
                        /* 00B0 */  0x89, 0x03, 0x00, 0x00, 0x89, 0x03, 0x00, 0x00,  // ........
                        /* 00B8 */  0x8E, 0x03, 0x00, 0x00, 0x8E, 0x03, 0x00, 0x00,  // ........
                        /* 00C0 */  0x93, 0x03, 0x00, 0x00, 0x93, 0x03, 0x00, 0x00,  // ........
                        /* 00C8 */  0x98, 0x03, 0x00, 0x00, 0x98, 0x03, 0x00, 0x00,  // ........
                        /* 00D0 */  0x9D, 0x03, 0x00, 0x00, 0x9D, 0x03, 0x00, 0x00,  // ........
                        /* 00D8 */  0xA2, 0x03, 0x00, 0x00, 0xA2, 0x03, 0x00, 0x00,  // ........
                        /* 00E0 */  0xA7, 0x03, 0x00, 0x00, 0xA7, 0x03, 0x00, 0x00,  // ........
                        /* 00E8 */  0xAC, 0x03, 0x00, 0x00, 0xAC, 0x03, 0x00, 0x00,  // ........
                        /* 00F0 */  0xB1, 0x03, 0x00, 0x00, 0xB1, 0x03, 0x00, 0x00,  // ........
                        /* 00F8 */  0xB6, 0x03, 0x00, 0x00, 0xB6, 0x03, 0x00, 0x00,  // ........
                        /* 0100 */  0xBB, 0x03, 0x00, 0x00, 0xBB, 0x03, 0x00, 0x00,  // ........
                        /* 0108 */  0xC0, 0x03, 0x00, 0x00, 0xC0, 0x03, 0x00, 0x00,  // ........
                        /* 0110 */  0xC5, 0x03, 0x00, 0x00, 0xC5, 0x03, 0x00, 0x00,  // ........
                        /* 0118 */  0xCA, 0x03, 0x00, 0x00, 0xCA, 0x03, 0x00, 0x00,  // ........
                        /* 0120 */  0xCF, 0x03, 0x00, 0x00, 0xCF, 0x03, 0x00, 0x00,  // ........
                        /* 0128 */  0xD4, 0x03, 0x00, 0x00, 0xD4, 0x03, 0x00, 0x00,  // ........
                        /* 0130 */  0xD9, 0x03, 0x00, 0x00, 0xD9, 0x03, 0x00, 0x00,  // ........
                        /* 0138 */  0xDE, 0x03, 0x00, 0x00, 0xDE, 0x03, 0x00, 0x00,  // ........
                        /* 0140 */  0xE3, 0x03, 0x00, 0x00, 0xE3, 0x03, 0x00, 0x00,  // ........
                        /* 0148 */  0xE8, 0x03, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00,  // ........
                        /* 0150 */  0xED, 0x03, 0x00, 0x00, 0xED, 0x03, 0x00, 0x00,  // ........
                        /* 0158 */  0xF2, 0x03, 0x00, 0x00, 0xF2, 0x03, 0x00, 0x00,  // ........
                        /* 0160 */  0xF7, 0x03, 0x00, 0x00, 0xF7, 0x03, 0x00, 0x00,  // ........
                        /* 0168 */  0xFC, 0x03, 0x00, 0x00, 0xFC, 0x03, 0x00, 0x00,  // ........
                        /* 0170 */  0x01, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00,  // ........
                        /* 0178 */  0x06, 0x04, 0x00, 0x00, 0x06, 0x04, 0x00, 0x00,  // ........
                        /* 0180 */  0x0B, 0x04, 0x00, 0x00, 0x0B, 0x04, 0x00, 0x00,  // ........
                        /* 0188 */  0x10, 0x04, 0x00, 0x00, 0x10, 0x04, 0x00, 0x00,  // ........
                        /* 0190 */  0x15, 0x04, 0x00, 0x00, 0x15, 0x04, 0x00, 0x00,  // ........
                        /* 0198 */  0x1A, 0x04, 0x00, 0x00, 0x1A, 0x04, 0x00, 0x00,  // ........
                        /* 01A0 */  0x1F, 0x04, 0x00, 0x00, 0x1F, 0x04, 0x00, 0x00,  // ........
                        /* 01A8 */  0x24, 0x04, 0x00, 0x00, 0x24, 0x04, 0x00, 0x00,  // $...$...
                        /* 01B0 */  0x29, 0x04, 0x00, 0x00, 0x29, 0x04, 0x00, 0x00,  // )...)...
                        /* 01B8 */  0x2E, 0x04, 0x00, 0x00, 0x2E, 0x04, 0x00, 0x00,  // ........
                        /* 01C0 */  0x33, 0x04, 0x00, 0x00, 0x33, 0x04, 0x00, 0x00,  // 3...3...
                        /* 01C8 */  0x38, 0x04, 0x00, 0x00, 0x38, 0x04, 0x00, 0x00,  // 8...8...
                        /* 01D0 */  0x3D, 0x04, 0x00, 0x00, 0x3D, 0x04, 0x00, 0x00,  // =...=...
                        /* 01D8 */  0x42, 0x04, 0x00, 0x00, 0x42, 0x04, 0x00, 0x00,  // B...B...
                        /* 01E0 */  0x47, 0x04, 0x00, 0x00, 0x47, 0x04, 0x00, 0x00,  // G...G...
                        /* 01E8 */  0x4C, 0x04, 0x00, 0x00, 0x4C, 0x04, 0x00, 0x00,  // L...L...
                        /* 01F0 */  0x51, 0x04, 0x00, 0x00, 0x51, 0x04, 0x00, 0x00,  // Q...Q...
                        /* 01F8 */  0x56, 0x04, 0x00, 0x00, 0x56, 0x04, 0x00, 0x00,  // V...V...
                        /* 0200 */  0x5B, 0x04, 0x00, 0x00, 0x5B, 0x04, 0x00, 0x00,  // [...[...
                        /* 0208 */  0x60, 0x04, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00,  // `...`...
                        /* 0210 */  0x65, 0x04, 0x00, 0x00, 0x65, 0x04, 0x00, 0x00,  // e...e...
                        /* 0218 */  0x6A, 0x04, 0x00, 0x00, 0x6A, 0x04, 0x00, 0x00,  // j...j...
                        /* 0220 */  0x6F, 0x04, 0x00, 0x00, 0x6F, 0x04, 0x00, 0x00,  // o...o...
                        /* 0228 */  0x74, 0x04, 0x00, 0x00, 0x74, 0x04, 0x00, 0x00,  // t...t...
                        /* 0230 */  0x79, 0x04, 0x00, 0x00, 0x79, 0x04, 0x00, 0x00,  // y...y...
                        /* 0238 */  0x7E, 0x04, 0x00, 0x00, 0x7E, 0x04, 0x00, 0x00,  // ~...~...
                        /* 0240 */  0x83, 0x04, 0x00, 0x00, 0x83, 0x04, 0x00, 0x00,  // ........
                        /* 0248 */  0x88, 0x04, 0x00, 0x00, 0x88, 0x04, 0x00, 0x00,  // ........
                        /* 0250 */  0x8D, 0x04, 0x00, 0x00, 0x8D, 0x04, 0x00, 0x00,  // ........
                        /* 0258 */  0x92, 0x04, 0x00, 0x00, 0x92, 0x04, 0x00, 0x00,  // ........
                        /* 0260 */  0x97, 0x04, 0x00, 0x00, 0x97, 0x04, 0x00, 0x00,  // ........
                        /* 0268 */  0x9C, 0x04, 0x00, 0x00, 0x9C, 0x04, 0x00, 0x00,  // ........
                        /* 0270 */  0xA1, 0x04, 0x00, 0x00, 0xA1, 0x04, 0x00, 0x00,  // ........
                        /* 0278 */  0xA6, 0x04, 0x00, 0x00, 0xA6, 0x04, 0x00, 0x00,  // ........
                        /* 0280 */  0xAB, 0x04, 0x00, 0x00, 0xAB, 0x04, 0x00, 0x00,  // ........
                        /* 0288 */  0xB0, 0x04, 0x00, 0x00, 0xB0, 0x04, 0x00, 0x00,  // ........
                        /* 0290 */  0xB5, 0x04, 0x00, 0x00, 0xB5, 0x04, 0x00, 0x00,  // ........
                        /* 0298 */  0xBA, 0x04, 0x00, 0x00, 0xBA, 0x04, 0x00, 0x00,  // ........
                        /* 02A0 */  0xBF, 0x04, 0x00, 0x00, 0xBF, 0x04, 0x00, 0x00,  // ........
                        /* 02A8 */  0xC4, 0x04, 0x00, 0x00, 0xC4, 0x04, 0x00, 0x00,  // ........
                        /* 02B0 */  0xC9, 0x04, 0x00, 0x00, 0xC9, 0x04, 0x00, 0x00,  // ........
                        /* 02B8 */  0xCE, 0x04, 0x00, 0x00, 0xCE, 0x04, 0x00, 0x00,  // ........
                        /* 02C0 */  0xD3, 0x04, 0x00, 0x00, 0xD3, 0x04, 0x00, 0x00,  // ........
                        /* 02C8 */  0xD8, 0x04, 0x00, 0x00, 0xD8, 0x04, 0x00, 0x00,  // ........
                        /* 02D0 */  0xDD, 0x04, 0x00, 0x00, 0xDD, 0x04, 0x00, 0x00,  // ........
                        /* 02D8 */  0xE2, 0x04, 0x00, 0x00, 0xE2, 0x04, 0x00, 0x00,  // ........
                        /* 02E0 */  0xE7, 0x04, 0x00, 0x00, 0xE7, 0x04, 0x00, 0x00,  // ........
                        /* 02E8 */  0xEC, 0x04, 0x00, 0x00, 0xEC, 0x04, 0x00, 0x00,  // ........
                        /* 02F0 */  0xF1, 0x04, 0x00, 0x00, 0xF1, 0x04, 0x00, 0x00,  // ........
                        /* 02F8 */  0xF6, 0x04, 0x00, 0x00, 0xF6, 0x04, 0x00, 0x00,  // ........
                        /* 0300 */  0xFB, 0x04, 0x00, 0x00, 0xFB, 0x04, 0x00, 0x00,  // ........
                        /* 0308 */  0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,  // ........
                        /* 0310 */  0x05, 0x05, 0x00, 0x00, 0x05, 0x05, 0x00, 0x00,  // ........
                        /* 0318 */  0x0A, 0x05, 0x00, 0x00, 0x0A, 0x05, 0x00, 0x00,  // ........
                        /* 0320 */  0x0F, 0x05, 0x00, 0x00, 0x0F, 0x05, 0x00, 0x00,  // ........
                        /* 0328 */  0x14, 0x05, 0x00, 0x00, 0x14, 0x05, 0x00, 0x00,  // ........
                        /* 0330 */  0x19, 0x05, 0x00, 0x00, 0x19, 0x05, 0x00, 0x00,  // ........
                        /* 0338 */  0x1E, 0x05, 0x00, 0x00, 0x1E, 0x05, 0x00, 0x00,  // ........
                        /* 0340 */  0x23, 0x05, 0x00, 0x00, 0x23, 0x05, 0x00, 0x00,  // #...#...
                        /* 0348 */  0x28, 0x05, 0x00, 0x00, 0x28, 0x05, 0x00, 0x00,  // (...(...
                        /* 0350 */  0x2D, 0x05, 0x00, 0x00, 0x2D, 0x05, 0x00, 0x00,  // -...-...
                        /* 0358 */  0x32, 0x05, 0x00, 0x00, 0x32, 0x05, 0x00, 0x00,  // 2...2...
                        /* 0360 */  0x37, 0x05, 0x00, 0x00, 0x37, 0x05, 0x00, 0x00,  // 7...7...
                        /* 0368 */  0x3C, 0x05, 0x00, 0x00, 0x3C, 0x05, 0x00, 0x00,  // <...<...
                        /* 0370 */  0x41, 0x05, 0x00, 0x00, 0x41, 0x05, 0x00, 0x00,  // A...A...
                        /* 0378 */  0x46, 0x05, 0x00, 0x00, 0x46, 0x05, 0x00, 0x00,  // F...F...
                        /* 0380 */  0x4B, 0x05, 0x00, 0x00, 0x4B, 0x05, 0x00, 0x00,  // K...K...
                        /* 0388 */  0x50, 0x05, 0x00, 0x00, 0x50, 0x05, 0x00, 0x00,  // P...P...
                        /* 0390 */  0x55, 0x05, 0x00, 0x00, 0x55, 0x05, 0x00, 0x00,  // U...U...
                        /* 0398 */  0x5A, 0x05, 0x00, 0x00, 0x5A, 0x05, 0x00, 0x00,  // Z...Z...
                        /* 03A0 */  0x5F, 0x05, 0x00, 0x00, 0x5F, 0x05, 0x00, 0x00,  // _..._...
                        /* 03A8 */  0x64, 0x05, 0x00, 0x00, 0x64, 0x05, 0x00, 0x00,  // d...d...
                        /* 03B0 */  0x69, 0x05, 0x00, 0x00, 0x69, 0x05, 0x00, 0x00,  // i...i...
                        /* 03B8 */  0x6E, 0x05, 0x00, 0x00, 0x6E, 0x05, 0x00, 0x00,  // n...n...
                        /* 03C0 */  0x73, 0x05, 0x00, 0x00, 0x73, 0x05, 0x00, 0x00,  // s...s...
                        /* 03C8 */  0x78, 0x05, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00,  // x...x...
                        /* 03D0 */  0x7D, 0x05, 0x00, 0x00, 0x7D, 0x05, 0x00, 0x00,  // }...}...
                        /* 03D8 */  0x82, 0x05, 0x00, 0x00, 0x82, 0x05, 0x00, 0x00,  // ........
                        /* 03E0 */  0x87, 0x05, 0x00, 0x00, 0x87, 0x05, 0x00, 0x00,  // ........
                        /* 03E8 */  0x8C, 0x05, 0x00, 0x00, 0x8C, 0x05, 0x00, 0x00,  // ........
                        /* 03F0 */  0x91, 0x05, 0x00, 0x00, 0x91, 0x05, 0x00, 0x00,  // ........
                        /* 03F8 */  0x96, 0x05, 0x00, 0x00, 0x96, 0x05, 0x00, 0x00,  // ........
                        /* 0400 */  0x9B, 0x05, 0x00, 0x00, 0x9B, 0x05, 0x00, 0x00,  // ........
                        /* 0408 */  0xA0, 0x05, 0x00, 0x00, 0xA0, 0x05, 0x00, 0x00,  // ........
                        /* 0410 */  0xA5, 0x05, 0x00, 0x00, 0xA5, 0x05, 0x00, 0x00,  // ........
                        /* 0418 */  0xAA, 0x05, 0x00, 0x00, 0xAA, 0x05, 0x00, 0x00,  // ........
                        /* 0420 */  0xAF, 0x05, 0x00, 0x00, 0xAF, 0x05, 0x00, 0x00,  // ........
                        /* 0428 */  0xB4, 0x05, 0x00, 0x00, 0xB4, 0x05, 0x00, 0x00,  // ........
                        /* 0430 */  0xB9, 0x05, 0x00, 0x00, 0xB9, 0x05, 0x00, 0x00,  // ........
                        /* 0438 */  0xBE, 0x05, 0x00, 0x00, 0xBE, 0x05, 0x00, 0x00,  // ........
                        /* 0440 */  0xC3, 0x05, 0x00, 0x00, 0xC3, 0x05, 0x00, 0x00,  // ........
                        /* 0448 */  0xC8, 0x05, 0x00, 0x00, 0xC8, 0x05, 0x00, 0x00,  // ........
                        /* 0450 */  0xCD, 0x05, 0x00, 0x00, 0xCD, 0x05, 0x00, 0x00,  // ........
                        /* 0458 */  0xD2, 0x05, 0x00, 0x00, 0xD2, 0x05, 0x00, 0x00,  // ........
                        /* 0460 */  0xD7, 0x05, 0x00, 0x00, 0xD7, 0x05, 0x00, 0x00,  // ........
                        /* 0468 */  0xDC, 0x05, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00,  // ........
                        /* 0470 */  0xE1, 0x05, 0x00, 0x00, 0xE1, 0x05, 0x00, 0x00,  // ........
                        /* 0478 */  0xE6, 0x05, 0x00, 0x00, 0xE6, 0x05, 0x00, 0x00,  // ........
                        /* 0480 */  0xEB, 0x05, 0x00, 0x00, 0xEB, 0x05, 0x00, 0x00,  // ........
                        /* 0488 */  0xF0, 0x05, 0x00, 0x00, 0xF0, 0x05, 0x00, 0x00,  // ........
                        /* 0490 */  0xF5, 0x05, 0x00, 0x00, 0xF5, 0x05, 0x00, 0x00,  // ........
                        /* 0498 */  0xFA, 0x05, 0x00, 0x00, 0xFA, 0x05, 0x00, 0x00,  // ........
                        /* 04A0 */  0xFF, 0x05, 0x00, 0x00, 0xFF, 0x05, 0x00, 0x00,  // ........
                        /* 04A8 */  0x04, 0x06, 0x00, 0x00, 0x04, 0x06, 0x00, 0x00,  // ........
                        /* 04B0 */  0x09, 0x06, 0x00, 0x00, 0x09, 0x06, 0x00, 0x00,  // ........
                        /* 04B8 */  0x0E, 0x06, 0x00, 0x00, 0x0E, 0x06, 0x00, 0x00,  // ........
                        /* 04C0 */  0x13, 0x06, 0x00, 0x00, 0x13, 0x06, 0x00, 0x00,  // ........
                        /* 04C8 */  0x18, 0x06, 0x00, 0x00, 0x18, 0x06, 0x00, 0x00,  // ........
                        /* 04D0 */  0x1D, 0x06, 0x00, 0x00, 0x1D, 0x06, 0x00, 0x00,  // ........
                        /* 04D8 */  0x22, 0x06, 0x00, 0x00, 0x22, 0x06, 0x00, 0x00,  // "..."...
                        /* 04E0 */  0x27, 0x06, 0x00, 0x00, 0x27, 0x06, 0x00, 0x00,  // '...'...
                        /* 04E8 */  0x2C, 0x06, 0x00, 0x00, 0x2C, 0x06, 0x00, 0x00,  // ,...,...
                        /* 04F0 */  0x31, 0x06, 0x00, 0x00, 0x31, 0x06, 0x00, 0x00,  // 1...1...
                        /* 04F8 */  0x36, 0x06, 0x00, 0x00, 0x36, 0x06, 0x00, 0x00,  // 6...6...
                        /* 0500 */  0x3B, 0x06, 0x00, 0x00, 0x3B, 0x06, 0x00, 0x00,  // ;...;...
                        /* 0508 */  0x40, 0x06, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  // @...@...
                        /* 0510 */  0x45, 0x06, 0x00, 0x00, 0x45, 0x06, 0x00, 0x00,  // E...E...
                        /* 0518 */  0x4A, 0x06, 0x00, 0x00, 0x4A, 0x06, 0x00, 0x00,  // J...J...
                        /* 0520 */  0x4F, 0x06, 0x00, 0x00, 0x4F, 0x06, 0x00, 0x00,  // O...O...
                        /* 0528 */  0x54, 0x06, 0x00, 0x00, 0x54, 0x06, 0x00, 0x00,  // T...T...
                        /* 0530 */  0x59, 0x06, 0x00, 0x00, 0x59, 0x06, 0x00, 0x00,  // Y...Y...
                        /* 0538 */  0x5E, 0x06, 0x00, 0x00, 0x5E, 0x06, 0x00, 0x00,  // ^...^...
                        /* 0540 */  0x63, 0x06, 0x00, 0x00, 0x63, 0x06, 0x00, 0x00,  // c...c...
                        /* 0548 */  0x68, 0x06, 0x00, 0x00, 0x68, 0x06, 0x00, 0x00,  // h...h...
                        /* 0550 */  0x6D, 0x06, 0x00, 0x00, 0x6D, 0x06, 0x00, 0x00,  // m...m...
                        /* 0558 */  0x72, 0x06, 0x00, 0x00, 0x72, 0x06, 0x00, 0x00,  // r...r...
                        /* 0560 */  0x77, 0x06, 0x00, 0x00, 0x77, 0x06, 0x00, 0x00,  // w...w...
                        /* 0568 */  0x7C, 0x06, 0x00, 0x00, 0x7C, 0x06, 0x00, 0x00,  // |...|...
                        /* 0570 */  0x81, 0x06, 0x00, 0x00, 0x81, 0x06, 0x00, 0x00,  // ........
                        /* 0578 */  0x86, 0x06, 0x00, 0x00, 0x86, 0x06, 0x00, 0x00,  // ........
                        /* 0580 */  0x8B, 0x06, 0x00, 0x00, 0x8B, 0x06, 0x00, 0x00,  // ........
                        /* 0588 */  0x90, 0x06, 0x00, 0x00, 0x90, 0x06, 0x00, 0x00,  // ........
                        /* 0590 */  0x95, 0x06, 0x00, 0x00, 0x95, 0x06, 0x00, 0x00,  // ........
                        /* 0598 */  0x9A, 0x06, 0x00, 0x00, 0x9A, 0x06, 0x00, 0x00,  // ........
                        /* 05A0 */  0x9F, 0x06, 0x00, 0x00, 0x9F, 0x06, 0x00, 0x00,  // ........
                        /* 05A8 */  0xA4, 0x06, 0x00, 0x00, 0xA4, 0x06, 0x00, 0x00,  // ........
                        /* 05B0 */  0xA9, 0x06, 0x00, 0x00, 0xA9, 0x06, 0x00, 0x00,  // ........
                        /* 05B8 */  0xAE, 0x06, 0x00, 0x00, 0xAE, 0x06, 0x00, 0x00,  // ........
                        /* 05C0 */  0xB3, 0x06, 0x00, 0x00, 0xB3, 0x06, 0x00, 0x00,  // ........
                        /* 05C8 */  0xB8, 0x06, 0x00, 0x00, 0xB8, 0x06, 0x00, 0x00,  // ........
                        /* 05D0 */  0xBD, 0x06, 0x00, 0x00, 0xBD, 0x06, 0x00, 0x00,  // ........
                        /* 05D8 */  0xC2, 0x06, 0x00, 0x00, 0xC2, 0x06, 0x00, 0x00,  // ........
                        /* 05E0 */  0xC7, 0x06, 0x00, 0x00, 0xC7, 0x06, 0x00, 0x00,  // ........
                        /* 05E8 */  0xCC, 0x06, 0x00, 0x00, 0xCC, 0x06, 0x00, 0x00,  // ........
                        /* 05F0 */  0xD1, 0x06, 0x00, 0x00, 0xD1, 0x06, 0x00, 0x00,  // ........
                        /* 05F8 */  0xD6, 0x06, 0x00, 0x00, 0xD6, 0x06, 0x00, 0x00,  // ........
                        /* 0600 */  0xDB, 0x06, 0x00, 0x00, 0xDB, 0x06, 0x00, 0x00,  // ........
                        /* 0608 */  0xE0, 0x06, 0x00, 0x00, 0xE0, 0x06, 0x00, 0x00,  // ........
                        /* 0610 */  0xE5, 0x06, 0x00, 0x00, 0xE5, 0x06, 0x00, 0x00,  // ........
                        /* 0618 */  0xEA, 0x06, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00,  // ........
                        /* 0620 */  0xEF, 0x06, 0x00, 0x00, 0xEF, 0x06, 0x00, 0x00,  // ........
                        /* 0628 */  0xF4, 0x06, 0x00, 0x00, 0xF4, 0x06, 0x00, 0x00,  // ........
                        /* 0630 */  0xF9, 0x06, 0x00, 0x00, 0xF9, 0x06, 0x00, 0x00,  // ........
                        /* 0638 */  0xFE, 0x06, 0x00, 0x00, 0xFE, 0x06, 0x00, 0x00,  // ........
                        /* 0640 */  0x03, 0x07, 0x00, 0x00, 0x03, 0x07, 0x00, 0x00,  // ........
                        /* 0648 */  0x08, 0x07, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00,  // ........
                        /* 0650 */  0x0D, 0x07, 0x00, 0x00, 0x0D, 0x07, 0x00, 0x00,  // ........
                        /* 0658 */  0x12, 0x07, 0x00, 0x00, 0x12, 0x07, 0x00, 0x00,  // ........
                        /* 0660 */  0x17, 0x07, 0x00, 0x00, 0x17, 0x07, 0x00, 0x00,  // ........
                        /* 0668 */  0x1C, 0x07, 0x00, 0x00, 0x1C, 0x07, 0x00, 0x00,  // ........
                        /* 0670 */  0x21, 0x07, 0x00, 0x00, 0x21, 0x07, 0x00, 0x00,  // !...!...
                        /* 0678 */  0x26, 0x07, 0x00, 0x00, 0x26, 0x07, 0x00, 0x00,  // &...&...
                        /* 0680 */  0x2B, 0x07, 0x00, 0x00, 0x2B, 0x07, 0x00, 0x00,  // +...+...
                        /* 0688 */  0x30, 0x07, 0x00, 0x00, 0x30, 0x07, 0x00, 0x00,  // 0...0...
                        /* 0690 */  0x35, 0x07, 0x00, 0x00, 0x35, 0x07, 0x00, 0x00,  // 5...5...
                        /* 0698 */  0x3A, 0x07, 0x00, 0x00, 0x3A, 0x07, 0x00, 0x00,  // :...:...
                        /* 06A0 */  0x3F, 0x07, 0x00, 0x00, 0x3F, 0x07, 0x00, 0x00,  // ?...?...
                        /* 06A8 */  0x44, 0x07, 0x00, 0x00, 0x44, 0x07, 0x00, 0x00,  // D...D...
                        /* 06B0 */  0x49, 0x07, 0x00, 0x00, 0x49, 0x07, 0x00, 0x00,  // I...I...
                        /* 06B8 */  0x4E, 0x07, 0x00, 0x00, 0x4E, 0x07, 0x00, 0x00,  // N...N...
                        /* 06C0 */  0x53, 0x07, 0x00, 0x00, 0x53, 0x07, 0x00, 0x00,  // S...S...
                        /* 06C8 */  0x58, 0x07, 0x00, 0x00, 0x58, 0x07, 0x00, 0x00,  // X...X...
                        /* 06D0 */  0x5D, 0x07, 0x00, 0x00, 0x5D, 0x07, 0x00, 0x00,  // ]...]...
                        /* 06D8 */  0x62, 0x07, 0x00, 0x00, 0x62, 0x07, 0x00, 0x00,  // b...b...
                        /* 06E0 */  0x67, 0x07, 0x00, 0x00, 0x67, 0x07, 0x00, 0x00,  // g...g...
                        /* 06E8 */  0x6C, 0x07, 0x00, 0x00, 0x6C, 0x07, 0x00, 0x00,  // l...l...
                        /* 06F0 */  0x71, 0x07, 0x00, 0x00, 0x71, 0x07, 0x00, 0x00,  // q...q...
                        /* 06F8 */  0x76, 0x07, 0x00, 0x00, 0x76, 0x07, 0x00, 0x00,  // v...v...
                        /* 0700 */  0x7B, 0x07, 0x00, 0x00, 0x7B, 0x07, 0x00, 0x00,  // {...{...
                        /* 0708 */  0x80, 0x07, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00,  // ........
                        /* 0710 */  0x85, 0x07, 0x00, 0x00, 0x85, 0x07, 0x00, 0x00,  // ........
                        /* 0718 */  0x8A, 0x07, 0x00, 0x00, 0x8A, 0x07, 0x00, 0x00,  // ........
                        /* 0720 */  0x8F, 0x07, 0x00, 0x00, 0x8F, 0x07, 0x00, 0x00,  // ........
                        /* 0728 */  0x94, 0x07, 0x00, 0x00, 0x94, 0x07, 0x00, 0x00,  // ........
                        /* 0730 */  0x99, 0x07, 0x00, 0x00, 0x99, 0x07, 0x00, 0x00,  // ........
                        /* 0738 */  0x9E, 0x07, 0x00, 0x00, 0x9E, 0x07, 0x00, 0x00,  // ........
                        /* 0740 */  0xA3, 0x07, 0x00, 0x00, 0xA3, 0x07, 0x00, 0x00,  // ........
                        /* 0748 */  0xA8, 0x07, 0x00, 0x00, 0xA8, 0x07, 0x00, 0x00,  // ........
                        /* 0750 */  0xAD, 0x07, 0x00, 0x00, 0xAD, 0x07, 0x00, 0x00,  // ........
                        /* 0758 */  0xB2, 0x07, 0x00, 0x00, 0xB2, 0x07, 0x00, 0x00,  // ........
                        /* 0760 */  0xB7, 0x07, 0x00, 0x00, 0xB7, 0x07, 0x00, 0x00,  // ........
                        /* 0768 */  0xBC, 0x07, 0x00, 0x00, 0xBC, 0x07, 0x00, 0x00,  // ........
                        /* 0770 */  0xC1, 0x07, 0x00, 0x00, 0xC1, 0x07, 0x00, 0x00,  // ........
                        /* 0778 */  0xC6, 0x07, 0x00, 0x00, 0xC6, 0x07, 0x00, 0x00,  // ........
                        /* 0780 */  0xCB, 0x07, 0x00, 0x00, 0xCB, 0x07, 0x00, 0x00,  // ........
                        /* 0788 */  0xD0, 0x07, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00,  // ........
                        /* 0790 */  0xD5, 0x07, 0x00, 0x00, 0xD5, 0x07, 0x00, 0x00,  // ........
                        /* 0798 */  0xDA, 0x07, 0x00, 0x00, 0xDA, 0x07, 0x00, 0x00,  // ........
                        /* 07A0 */  0xDF, 0x07, 0x00, 0x00, 0xDF, 0x07, 0x00, 0x00,  // ........
                        /* 07A8 */  0xE4, 0x07, 0x00, 0x00, 0xE4, 0x07, 0x00, 0x00,  // ........
                        /* 07B0 */  0xE9, 0x07, 0x00, 0x00, 0xE9, 0x07, 0x00, 0x00,  // ........
                        /* 07B8 */  0xEE, 0x07, 0x00, 0x00, 0xEE, 0x07, 0x00, 0x00,  // ........
                        /* 07C0 */  0xF3, 0x07, 0x00, 0x00, 0xF3, 0x07, 0x00, 0x00,  // ........
                        /* 07C8 */  0xF8, 0x07, 0x00, 0x00, 0xF8, 0x07, 0x00, 0x00,  // ........
                        /* 07D0 */  0xFD, 0x07, 0x00, 0x00, 0xFD, 0x07, 0x00, 0x00,  // ........
                        /* 07D8 */  0x02, 0x08, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00,  // ........
                        /* 07E0 */  0x07, 0x08, 0x00, 0x00, 0x07, 0x08, 0x00, 0x00,  // ........
                        /* 07E8 */  0x0C, 0x08, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,  // ........
                        /* 07F0 */  0x11, 0x08, 0x00, 0x00, 0x11, 0x08, 0x00, 0x00,  // ........
                        /* 07F8 */  0x16, 0x08, 0x00, 0x00, 0x16, 0x08, 0x00, 0x00,  // ........
                        /* 0800 */  0x1B, 0x08, 0x00, 0x00, 0x1B, 0x08, 0x00, 0x00,  // ........
                        /* 0808 */  0x20, 0x08, 0x00, 0x00, 0x20, 0x08, 0x00, 0x00,  //  ... ...
                        /* 0810 */  0x25, 0x08, 0x00, 0x00, 0x25, 0x08, 0x00, 0x00,  // %...%...
                        /* 0818 */  0x2A, 0x08, 0x00, 0x00, 0x2A, 0x08, 0x00, 0x00,  // *...*...
                        /* 0820 */  0x2F, 0x08, 0x00, 0x00, 0x2F, 0x08, 0x00, 0x00,  // /.../...
                        /* 0828 */  0x34, 0x08, 0x00, 0x00, 0x34, 0x08, 0x00, 0x00   // 4...4...
                    }
                })
                Name (RING, Package (0x02)
                {
                    Zero,
                    Buffer (0x0830)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x20, 0x03, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00,  //  ... ...
                        /* 0010 */  0x25, 0x03, 0x00, 0x00, 0x25, 0x03, 0x00, 0x00,  // %...%...
                        /* 0018 */  0x2A, 0x03, 0x00, 0x00, 0x2A, 0x03, 0x00, 0x00,  // *...*...
                        /* 0020 */  0x2F, 0x03, 0x00, 0x00, 0x2F, 0x03, 0x00, 0x00,  // /.../...
                        /* 0028 */  0x34, 0x03, 0x00, 0x00, 0x34, 0x03, 0x00, 0x00,  // 4...4...
                        /* 0030 */  0x39, 0x03, 0x00, 0x00, 0x39, 0x03, 0x00, 0x00,  // 9...9...
                        /* 0038 */  0x3E, 0x03, 0x00, 0x00, 0x3E, 0x03, 0x00, 0x00,  // >...>...
                        /* 0040 */  0x43, 0x03, 0x00, 0x00, 0x43, 0x03, 0x00, 0x00,  // C...C...
                        /* 0048 */  0x48, 0x03, 0x00, 0x00, 0x48, 0x03, 0x00, 0x00,  // H...H...
                        /* 0050 */  0x4D, 0x03, 0x00, 0x00, 0x4D, 0x03, 0x00, 0x00,  // M...M...
                        /* 0058 */  0x52, 0x03, 0x00, 0x00, 0x52, 0x03, 0x00, 0x00,  // R...R...
                        /* 0060 */  0x57, 0x03, 0x00, 0x00, 0x57, 0x03, 0x00, 0x00,  // W...W...
                        /* 0068 */  0x5C, 0x03, 0x00, 0x00, 0x5C, 0x03, 0x00, 0x00,  // \...\...
                        /* 0070 */  0x61, 0x03, 0x00, 0x00, 0x61, 0x03, 0x00, 0x00,  // a...a...
                        /* 0078 */  0x66, 0x03, 0x00, 0x00, 0x66, 0x03, 0x00, 0x00,  // f...f...
                        /* 0080 */  0x6B, 0x03, 0x00, 0x00, 0x6B, 0x03, 0x00, 0x00,  // k...k...
                        /* 0088 */  0x70, 0x03, 0x00, 0x00, 0x70, 0x03, 0x00, 0x00,  // p...p...
                        /* 0090 */  0x75, 0x03, 0x00, 0x00, 0x75, 0x03, 0x00, 0x00,  // u...u...
                        /* 0098 */  0x7A, 0x03, 0x00, 0x00, 0x7A, 0x03, 0x00, 0x00,  // z...z...
                        /* 00A0 */  0x7F, 0x03, 0x00, 0x00, 0x7F, 0x03, 0x00, 0x00,  // ........
                        /* 00A8 */  0x84, 0x03, 0x00, 0x00, 0x84, 0x03, 0x00, 0x00,  // ........
                        /* 00B0 */  0x89, 0x03, 0x00, 0x00, 0x89, 0x03, 0x00, 0x00,  // ........
                        /* 00B8 */  0x8E, 0x03, 0x00, 0x00, 0x8E, 0x03, 0x00, 0x00,  // ........
                        /* 00C0 */  0x93, 0x03, 0x00, 0x00, 0x93, 0x03, 0x00, 0x00,  // ........
                        /* 00C8 */  0x98, 0x03, 0x00, 0x00, 0x98, 0x03, 0x00, 0x00,  // ........
                        /* 00D0 */  0x9D, 0x03, 0x00, 0x00, 0x9D, 0x03, 0x00, 0x00,  // ........
                        /* 00D8 */  0xA2, 0x03, 0x00, 0x00, 0xA2, 0x03, 0x00, 0x00,  // ........
                        /* 00E0 */  0xA7, 0x03, 0x00, 0x00, 0xA7, 0x03, 0x00, 0x00,  // ........
                        /* 00E8 */  0xAC, 0x03, 0x00, 0x00, 0xAC, 0x03, 0x00, 0x00,  // ........
                        /* 00F0 */  0xB1, 0x03, 0x00, 0x00, 0xB1, 0x03, 0x00, 0x00,  // ........
                        /* 00F8 */  0xB6, 0x03, 0x00, 0x00, 0xB6, 0x03, 0x00, 0x00,  // ........
                        /* 0100 */  0xBB, 0x03, 0x00, 0x00, 0xBB, 0x03, 0x00, 0x00,  // ........
                        /* 0108 */  0xC0, 0x03, 0x00, 0x00, 0xC0, 0x03, 0x00, 0x00,  // ........
                        /* 0110 */  0xC5, 0x03, 0x00, 0x00, 0xC5, 0x03, 0x00, 0x00,  // ........
                        /* 0118 */  0xCA, 0x03, 0x00, 0x00, 0xCA, 0x03, 0x00, 0x00,  // ........
                        /* 0120 */  0xCF, 0x03, 0x00, 0x00, 0xCF, 0x03, 0x00, 0x00,  // ........
                        /* 0128 */  0xD4, 0x03, 0x00, 0x00, 0xD4, 0x03, 0x00, 0x00,  // ........
                        /* 0130 */  0xD9, 0x03, 0x00, 0x00, 0xD9, 0x03, 0x00, 0x00,  // ........
                        /* 0138 */  0xDE, 0x03, 0x00, 0x00, 0xDE, 0x03, 0x00, 0x00,  // ........
                        /* 0140 */  0xE3, 0x03, 0x00, 0x00, 0xE3, 0x03, 0x00, 0x00,  // ........
                        /* 0148 */  0xE8, 0x03, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00,  // ........
                        /* 0150 */  0xED, 0x03, 0x00, 0x00, 0xED, 0x03, 0x00, 0x00,  // ........
                        /* 0158 */  0xF2, 0x03, 0x00, 0x00, 0xF2, 0x03, 0x00, 0x00,  // ........
                        /* 0160 */  0xF7, 0x03, 0x00, 0x00, 0xF7, 0x03, 0x00, 0x00,  // ........
                        /* 0168 */  0xFC, 0x03, 0x00, 0x00, 0xFC, 0x03, 0x00, 0x00,  // ........
                        /* 0170 */  0x01, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00,  // ........
                        /* 0178 */  0x06, 0x04, 0x00, 0x00, 0x06, 0x04, 0x00, 0x00,  // ........
                        /* 0180 */  0x0B, 0x04, 0x00, 0x00, 0x0B, 0x04, 0x00, 0x00,  // ........
                        /* 0188 */  0x10, 0x04, 0x00, 0x00, 0x10, 0x04, 0x00, 0x00,  // ........
                        /* 0190 */  0x15, 0x04, 0x00, 0x00, 0x15, 0x04, 0x00, 0x00,  // ........
                        /* 0198 */  0x1A, 0x04, 0x00, 0x00, 0x1A, 0x04, 0x00, 0x00,  // ........
                        /* 01A0 */  0x1F, 0x04, 0x00, 0x00, 0x1F, 0x04, 0x00, 0x00,  // ........
                        /* 01A8 */  0x24, 0x04, 0x00, 0x00, 0x24, 0x04, 0x00, 0x00,  // $...$...
                        /* 01B0 */  0x29, 0x04, 0x00, 0x00, 0x29, 0x04, 0x00, 0x00,  // )...)...
                        /* 01B8 */  0x2E, 0x04, 0x00, 0x00, 0x2E, 0x04, 0x00, 0x00,  // ........
                        /* 01C0 */  0x33, 0x04, 0x00, 0x00, 0x33, 0x04, 0x00, 0x00,  // 3...3...
                        /* 01C8 */  0x38, 0x04, 0x00, 0x00, 0x38, 0x04, 0x00, 0x00,  // 8...8...
                        /* 01D0 */  0x3D, 0x04, 0x00, 0x00, 0x3D, 0x04, 0x00, 0x00,  // =...=...
                        /* 01D8 */  0x42, 0x04, 0x00, 0x00, 0x42, 0x04, 0x00, 0x00,  // B...B...
                        /* 01E0 */  0x47, 0x04, 0x00, 0x00, 0x47, 0x04, 0x00, 0x00,  // G...G...
                        /* 01E8 */  0x4C, 0x04, 0x00, 0x00, 0x4C, 0x04, 0x00, 0x00,  // L...L...
                        /* 01F0 */  0x51, 0x04, 0x00, 0x00, 0x51, 0x04, 0x00, 0x00,  // Q...Q...
                        /* 01F8 */  0x56, 0x04, 0x00, 0x00, 0x56, 0x04, 0x00, 0x00,  // V...V...
                        /* 0200 */  0x5B, 0x04, 0x00, 0x00, 0x5B, 0x04, 0x00, 0x00,  // [...[...
                        /* 0208 */  0x60, 0x04, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00,  // `...`...
                        /* 0210 */  0x65, 0x04, 0x00, 0x00, 0x65, 0x04, 0x00, 0x00,  // e...e...
                        /* 0218 */  0x6A, 0x04, 0x00, 0x00, 0x6A, 0x04, 0x00, 0x00,  // j...j...
                        /* 0220 */  0x6F, 0x04, 0x00, 0x00, 0x6F, 0x04, 0x00, 0x00,  // o...o...
                        /* 0228 */  0x74, 0x04, 0x00, 0x00, 0x74, 0x04, 0x00, 0x00,  // t...t...
                        /* 0230 */  0x79, 0x04, 0x00, 0x00, 0x79, 0x04, 0x00, 0x00,  // y...y...
                        /* 0238 */  0x7E, 0x04, 0x00, 0x00, 0x7E, 0x04, 0x00, 0x00,  // ~...~...
                        /* 0240 */  0x83, 0x04, 0x00, 0x00, 0x83, 0x04, 0x00, 0x00,  // ........
                        /* 0248 */  0x88, 0x04, 0x00, 0x00, 0x88, 0x04, 0x00, 0x00,  // ........
                        /* 0250 */  0x8D, 0x04, 0x00, 0x00, 0x8D, 0x04, 0x00, 0x00,  // ........
                        /* 0258 */  0x92, 0x04, 0x00, 0x00, 0x92, 0x04, 0x00, 0x00,  // ........
                        /* 0260 */  0x97, 0x04, 0x00, 0x00, 0x97, 0x04, 0x00, 0x00,  // ........
                        /* 0268 */  0x9C, 0x04, 0x00, 0x00, 0x9C, 0x04, 0x00, 0x00,  // ........
                        /* 0270 */  0xA1, 0x04, 0x00, 0x00, 0xA1, 0x04, 0x00, 0x00,  // ........
                        /* 0278 */  0xA6, 0x04, 0x00, 0x00, 0xA6, 0x04, 0x00, 0x00,  // ........
                        /* 0280 */  0xAB, 0x04, 0x00, 0x00, 0xAB, 0x04, 0x00, 0x00,  // ........
                        /* 0288 */  0xB0, 0x04, 0x00, 0x00, 0xB0, 0x04, 0x00, 0x00,  // ........
                        /* 0290 */  0xB5, 0x04, 0x00, 0x00, 0xB5, 0x04, 0x00, 0x00,  // ........
                        /* 0298 */  0xBA, 0x04, 0x00, 0x00, 0xBA, 0x04, 0x00, 0x00,  // ........
                        /* 02A0 */  0xBF, 0x04, 0x00, 0x00, 0xBF, 0x04, 0x00, 0x00,  // ........
                        /* 02A8 */  0xC4, 0x04, 0x00, 0x00, 0xC4, 0x04, 0x00, 0x00,  // ........
                        /* 02B0 */  0xC9, 0x04, 0x00, 0x00, 0xC9, 0x04, 0x00, 0x00,  // ........
                        /* 02B8 */  0xCE, 0x04, 0x00, 0x00, 0xCE, 0x04, 0x00, 0x00,  // ........
                        /* 02C0 */  0xD3, 0x04, 0x00, 0x00, 0xD3, 0x04, 0x00, 0x00,  // ........
                        /* 02C8 */  0xD8, 0x04, 0x00, 0x00, 0xD8, 0x04, 0x00, 0x00,  // ........
                        /* 02D0 */  0xDD, 0x04, 0x00, 0x00, 0xDD, 0x04, 0x00, 0x00,  // ........
                        /* 02D8 */  0xE2, 0x04, 0x00, 0x00, 0xE2, 0x04, 0x00, 0x00,  // ........
                        /* 02E0 */  0xE7, 0x04, 0x00, 0x00, 0xE7, 0x04, 0x00, 0x00,  // ........
                        /* 02E8 */  0xEC, 0x04, 0x00, 0x00, 0xEC, 0x04, 0x00, 0x00,  // ........
                        /* 02F0 */  0xF1, 0x04, 0x00, 0x00, 0xF1, 0x04, 0x00, 0x00,  // ........
                        /* 02F8 */  0xF6, 0x04, 0x00, 0x00, 0xF6, 0x04, 0x00, 0x00,  // ........
                        /* 0300 */  0xFB, 0x04, 0x00, 0x00, 0xFB, 0x04, 0x00, 0x00,  // ........
                        /* 0308 */  0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,  // ........
                        /* 0310 */  0x05, 0x05, 0x00, 0x00, 0x05, 0x05, 0x00, 0x00,  // ........
                        /* 0318 */  0x0A, 0x05, 0x00, 0x00, 0x0A, 0x05, 0x00, 0x00,  // ........
                        /* 0320 */  0x0F, 0x05, 0x00, 0x00, 0x0F, 0x05, 0x00, 0x00,  // ........
                        /* 0328 */  0x14, 0x05, 0x00, 0x00, 0x14, 0x05, 0x00, 0x00,  // ........
                        /* 0330 */  0x19, 0x05, 0x00, 0x00, 0x19, 0x05, 0x00, 0x00,  // ........
                        /* 0338 */  0x1E, 0x05, 0x00, 0x00, 0x1E, 0x05, 0x00, 0x00,  // ........
                        /* 0340 */  0x23, 0x05, 0x00, 0x00, 0x23, 0x05, 0x00, 0x00,  // #...#...
                        /* 0348 */  0x28, 0x05, 0x00, 0x00, 0x28, 0x05, 0x00, 0x00,  // (...(...
                        /* 0350 */  0x2D, 0x05, 0x00, 0x00, 0x2D, 0x05, 0x00, 0x00,  // -...-...
                        /* 0358 */  0x32, 0x05, 0x00, 0x00, 0x32, 0x05, 0x00, 0x00,  // 2...2...
                        /* 0360 */  0x37, 0x05, 0x00, 0x00, 0x37, 0x05, 0x00, 0x00,  // 7...7...
                        /* 0368 */  0x3C, 0x05, 0x00, 0x00, 0x3C, 0x05, 0x00, 0x00,  // <...<...
                        /* 0370 */  0x41, 0x05, 0x00, 0x00, 0x41, 0x05, 0x00, 0x00,  // A...A...
                        /* 0378 */  0x46, 0x05, 0x00, 0x00, 0x46, 0x05, 0x00, 0x00,  // F...F...
                        /* 0380 */  0x4B, 0x05, 0x00, 0x00, 0x4B, 0x05, 0x00, 0x00,  // K...K...
                        /* 0388 */  0x50, 0x05, 0x00, 0x00, 0x50, 0x05, 0x00, 0x00,  // P...P...
                        /* 0390 */  0x55, 0x05, 0x00, 0x00, 0x55, 0x05, 0x00, 0x00,  // U...U...
                        /* 0398 */  0x5A, 0x05, 0x00, 0x00, 0x5A, 0x05, 0x00, 0x00,  // Z...Z...
                        /* 03A0 */  0x5F, 0x05, 0x00, 0x00, 0x5F, 0x05, 0x00, 0x00,  // _..._...
                        /* 03A8 */  0x64, 0x05, 0x00, 0x00, 0x64, 0x05, 0x00, 0x00,  // d...d...
                        /* 03B0 */  0x69, 0x05, 0x00, 0x00, 0x69, 0x05, 0x00, 0x00,  // i...i...
                        /* 03B8 */  0x6E, 0x05, 0x00, 0x00, 0x6E, 0x05, 0x00, 0x00,  // n...n...
                        /* 03C0 */  0x73, 0x05, 0x00, 0x00, 0x73, 0x05, 0x00, 0x00,  // s...s...
                        /* 03C8 */  0x78, 0x05, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00,  // x...x...
                        /* 03D0 */  0x7D, 0x05, 0x00, 0x00, 0x7D, 0x05, 0x00, 0x00,  // }...}...
                        /* 03D8 */  0x82, 0x05, 0x00, 0x00, 0x82, 0x05, 0x00, 0x00,  // ........
                        /* 03E0 */  0x87, 0x05, 0x00, 0x00, 0x87, 0x05, 0x00, 0x00,  // ........
                        /* 03E8 */  0x8C, 0x05, 0x00, 0x00, 0x8C, 0x05, 0x00, 0x00,  // ........
                        /* 03F0 */  0x91, 0x05, 0x00, 0x00, 0x91, 0x05, 0x00, 0x00,  // ........
                        /* 03F8 */  0x96, 0x05, 0x00, 0x00, 0x96, 0x05, 0x00, 0x00,  // ........
                        /* 0400 */  0x9B, 0x05, 0x00, 0x00, 0x9B, 0x05, 0x00, 0x00,  // ........
                        /* 0408 */  0xA0, 0x05, 0x00, 0x00, 0xA0, 0x05, 0x00, 0x00,  // ........
                        /* 0410 */  0xA5, 0x05, 0x00, 0x00, 0xA5, 0x05, 0x00, 0x00,  // ........
                        /* 0418 */  0xAA, 0x05, 0x00, 0x00, 0xAA, 0x05, 0x00, 0x00,  // ........
                        /* 0420 */  0xAF, 0x05, 0x00, 0x00, 0xAF, 0x05, 0x00, 0x00,  // ........
                        /* 0428 */  0xB4, 0x05, 0x00, 0x00, 0xB4, 0x05, 0x00, 0x00,  // ........
                        /* 0430 */  0xB9, 0x05, 0x00, 0x00, 0xB9, 0x05, 0x00, 0x00,  // ........
                        /* 0438 */  0xBE, 0x05, 0x00, 0x00, 0xBE, 0x05, 0x00, 0x00,  // ........
                        /* 0440 */  0xC3, 0x05, 0x00, 0x00, 0xC3, 0x05, 0x00, 0x00,  // ........
                        /* 0448 */  0xC8, 0x05, 0x00, 0x00, 0xC8, 0x05, 0x00, 0x00,  // ........
                        /* 0450 */  0xCD, 0x05, 0x00, 0x00, 0xCD, 0x05, 0x00, 0x00,  // ........
                        /* 0458 */  0xD2, 0x05, 0x00, 0x00, 0xD2, 0x05, 0x00, 0x00,  // ........
                        /* 0460 */  0xD7, 0x05, 0x00, 0x00, 0xD7, 0x05, 0x00, 0x00,  // ........
                        /* 0468 */  0xDC, 0x05, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00,  // ........
                        /* 0470 */  0xE1, 0x05, 0x00, 0x00, 0xE1, 0x05, 0x00, 0x00,  // ........
                        /* 0478 */  0xE6, 0x05, 0x00, 0x00, 0xE6, 0x05, 0x00, 0x00,  // ........
                        /* 0480 */  0xEB, 0x05, 0x00, 0x00, 0xEB, 0x05, 0x00, 0x00,  // ........
                        /* 0488 */  0xF0, 0x05, 0x00, 0x00, 0xF0, 0x05, 0x00, 0x00,  // ........
                        /* 0490 */  0xF5, 0x05, 0x00, 0x00, 0xF5, 0x05, 0x00, 0x00,  // ........
                        /* 0498 */  0xFA, 0x05, 0x00, 0x00, 0xFA, 0x05, 0x00, 0x00,  // ........
                        /* 04A0 */  0xFF, 0x05, 0x00, 0x00, 0xFF, 0x05, 0x00, 0x00,  // ........
                        /* 04A8 */  0x04, 0x06, 0x00, 0x00, 0x04, 0x06, 0x00, 0x00,  // ........
                        /* 04B0 */  0x09, 0x06, 0x00, 0x00, 0x09, 0x06, 0x00, 0x00,  // ........
                        /* 04B8 */  0x0E, 0x06, 0x00, 0x00, 0x0E, 0x06, 0x00, 0x00,  // ........
                        /* 04C0 */  0x13, 0x06, 0x00, 0x00, 0x13, 0x06, 0x00, 0x00,  // ........
                        /* 04C8 */  0x18, 0x06, 0x00, 0x00, 0x18, 0x06, 0x00, 0x00,  // ........
                        /* 04D0 */  0x1D, 0x06, 0x00, 0x00, 0x1D, 0x06, 0x00, 0x00,  // ........
                        /* 04D8 */  0x22, 0x06, 0x00, 0x00, 0x22, 0x06, 0x00, 0x00,  // "..."...
                        /* 04E0 */  0x27, 0x06, 0x00, 0x00, 0x27, 0x06, 0x00, 0x00,  // '...'...
                        /* 04E8 */  0x2C, 0x06, 0x00, 0x00, 0x2C, 0x06, 0x00, 0x00,  // ,...,...
                        /* 04F0 */  0x31, 0x06, 0x00, 0x00, 0x31, 0x06, 0x00, 0x00,  // 1...1...
                        /* 04F8 */  0x36, 0x06, 0x00, 0x00, 0x36, 0x06, 0x00, 0x00,  // 6...6...
                        /* 0500 */  0x3B, 0x06, 0x00, 0x00, 0x3B, 0x06, 0x00, 0x00,  // ;...;...
                        /* 0508 */  0x40, 0x06, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  // @...@...
                        /* 0510 */  0x45, 0x06, 0x00, 0x00, 0x45, 0x06, 0x00, 0x00,  // E...E...
                        /* 0518 */  0x4A, 0x06, 0x00, 0x00, 0x4A, 0x06, 0x00, 0x00,  // J...J...
                        /* 0520 */  0x4F, 0x06, 0x00, 0x00, 0x4F, 0x06, 0x00, 0x00,  // O...O...
                        /* 0528 */  0x54, 0x06, 0x00, 0x00, 0x54, 0x06, 0x00, 0x00,  // T...T...
                        /* 0530 */  0x59, 0x06, 0x00, 0x00, 0x59, 0x06, 0x00, 0x00,  // Y...Y...
                        /* 0538 */  0x5E, 0x06, 0x00, 0x00, 0x5E, 0x06, 0x00, 0x00,  // ^...^...
                        /* 0540 */  0x63, 0x06, 0x00, 0x00, 0x63, 0x06, 0x00, 0x00,  // c...c...
                        /* 0548 */  0x68, 0x06, 0x00, 0x00, 0x68, 0x06, 0x00, 0x00,  // h...h...
                        /* 0550 */  0x6D, 0x06, 0x00, 0x00, 0x6D, 0x06, 0x00, 0x00,  // m...m...
                        /* 0558 */  0x72, 0x06, 0x00, 0x00, 0x72, 0x06, 0x00, 0x00,  // r...r...
                        /* 0560 */  0x77, 0x06, 0x00, 0x00, 0x77, 0x06, 0x00, 0x00,  // w...w...
                        /* 0568 */  0x7C, 0x06, 0x00, 0x00, 0x7C, 0x06, 0x00, 0x00,  // |...|...
                        /* 0570 */  0x81, 0x06, 0x00, 0x00, 0x81, 0x06, 0x00, 0x00,  // ........
                        /* 0578 */  0x86, 0x06, 0x00, 0x00, 0x86, 0x06, 0x00, 0x00,  // ........
                        /* 0580 */  0x8B, 0x06, 0x00, 0x00, 0x8B, 0x06, 0x00, 0x00,  // ........
                        /* 0588 */  0x90, 0x06, 0x00, 0x00, 0x90, 0x06, 0x00, 0x00,  // ........
                        /* 0590 */  0x95, 0x06, 0x00, 0x00, 0x95, 0x06, 0x00, 0x00,  // ........
                        /* 0598 */  0x9A, 0x06, 0x00, 0x00, 0x9A, 0x06, 0x00, 0x00,  // ........
                        /* 05A0 */  0x9F, 0x06, 0x00, 0x00, 0x9F, 0x06, 0x00, 0x00,  // ........
                        /* 05A8 */  0xA4, 0x06, 0x00, 0x00, 0xA4, 0x06, 0x00, 0x00,  // ........
                        /* 05B0 */  0xA9, 0x06, 0x00, 0x00, 0xA9, 0x06, 0x00, 0x00,  // ........
                        /* 05B8 */  0xAE, 0x06, 0x00, 0x00, 0xAE, 0x06, 0x00, 0x00,  // ........
                        /* 05C0 */  0xB3, 0x06, 0x00, 0x00, 0xB3, 0x06, 0x00, 0x00,  // ........
                        /* 05C8 */  0xB8, 0x06, 0x00, 0x00, 0xB8, 0x06, 0x00, 0x00,  // ........
                        /* 05D0 */  0xBD, 0x06, 0x00, 0x00, 0xBD, 0x06, 0x00, 0x00,  // ........
                        /* 05D8 */  0xC2, 0x06, 0x00, 0x00, 0xC2, 0x06, 0x00, 0x00,  // ........
                        /* 05E0 */  0xC7, 0x06, 0x00, 0x00, 0xC7, 0x06, 0x00, 0x00,  // ........
                        /* 05E8 */  0xCC, 0x06, 0x00, 0x00, 0xCC, 0x06, 0x00, 0x00,  // ........
                        /* 05F0 */  0xD1, 0x06, 0x00, 0x00, 0xD1, 0x06, 0x00, 0x00,  // ........
                        /* 05F8 */  0xD6, 0x06, 0x00, 0x00, 0xD6, 0x06, 0x00, 0x00,  // ........
                        /* 0600 */  0xDB, 0x06, 0x00, 0x00, 0xDB, 0x06, 0x00, 0x00,  // ........
                        /* 0608 */  0xE0, 0x06, 0x00, 0x00, 0xE0, 0x06, 0x00, 0x00,  // ........
                        /* 0610 */  0xE5, 0x06, 0x00, 0x00, 0xE5, 0x06, 0x00, 0x00,  // ........
                        /* 0618 */  0xEA, 0x06, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00,  // ........
                        /* 0620 */  0xEF, 0x06, 0x00, 0x00, 0xEF, 0x06, 0x00, 0x00,  // ........
                        /* 0628 */  0xF4, 0x06, 0x00, 0x00, 0xF4, 0x06, 0x00, 0x00,  // ........
                        /* 0630 */  0xF9, 0x06, 0x00, 0x00, 0xF9, 0x06, 0x00, 0x00,  // ........
                        /* 0638 */  0xFE, 0x06, 0x00, 0x00, 0xFE, 0x06, 0x00, 0x00,  // ........
                        /* 0640 */  0x03, 0x07, 0x00, 0x00, 0x03, 0x07, 0x00, 0x00,  // ........
                        /* 0648 */  0x08, 0x07, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00,  // ........
                        /* 0650 */  0x0D, 0x07, 0x00, 0x00, 0x0D, 0x07, 0x00, 0x00,  // ........
                        /* 0658 */  0x12, 0x07, 0x00, 0x00, 0x12, 0x07, 0x00, 0x00,  // ........
                        /* 0660 */  0x17, 0x07, 0x00, 0x00, 0x17, 0x07, 0x00, 0x00,  // ........
                        /* 0668 */  0x1C, 0x07, 0x00, 0x00, 0x1C, 0x07, 0x00, 0x00,  // ........
                        /* 0670 */  0x21, 0x07, 0x00, 0x00, 0x21, 0x07, 0x00, 0x00,  // !...!...
                        /* 0678 */  0x26, 0x07, 0x00, 0x00, 0x26, 0x07, 0x00, 0x00,  // &...&...
                        /* 0680 */  0x2B, 0x07, 0x00, 0x00, 0x2B, 0x07, 0x00, 0x00,  // +...+...
                        /* 0688 */  0x30, 0x07, 0x00, 0x00, 0x30, 0x07, 0x00, 0x00,  // 0...0...
                        /* 0690 */  0x35, 0x07, 0x00, 0x00, 0x35, 0x07, 0x00, 0x00,  // 5...5...
                        /* 0698 */  0x3A, 0x07, 0x00, 0x00, 0x3A, 0x07, 0x00, 0x00,  // :...:...
                        /* 06A0 */  0x3F, 0x07, 0x00, 0x00, 0x3F, 0x07, 0x00, 0x00,  // ?...?...
                        /* 06A8 */  0x44, 0x07, 0x00, 0x00, 0x44, 0x07, 0x00, 0x00,  // D...D...
                        /* 06B0 */  0x49, 0x07, 0x00, 0x00, 0x49, 0x07, 0x00, 0x00,  // I...I...
                        /* 06B8 */  0x4E, 0x07, 0x00, 0x00, 0x4E, 0x07, 0x00, 0x00,  // N...N...
                        /* 06C0 */  0x53, 0x07, 0x00, 0x00, 0x53, 0x07, 0x00, 0x00,  // S...S...
                        /* 06C8 */  0x58, 0x07, 0x00, 0x00, 0x58, 0x07, 0x00, 0x00,  // X...X...
                        /* 06D0 */  0x5D, 0x07, 0x00, 0x00, 0x5D, 0x07, 0x00, 0x00,  // ]...]...
                        /* 06D8 */  0x62, 0x07, 0x00, 0x00, 0x62, 0x07, 0x00, 0x00,  // b...b...
                        /* 06E0 */  0x67, 0x07, 0x00, 0x00, 0x67, 0x07, 0x00, 0x00,  // g...g...
                        /* 06E8 */  0x6C, 0x07, 0x00, 0x00, 0x6C, 0x07, 0x00, 0x00,  // l...l...
                        /* 06F0 */  0x71, 0x07, 0x00, 0x00, 0x71, 0x07, 0x00, 0x00,  // q...q...
                        /* 06F8 */  0x76, 0x07, 0x00, 0x00, 0x76, 0x07, 0x00, 0x00,  // v...v...
                        /* 0700 */  0x7B, 0x07, 0x00, 0x00, 0x7B, 0x07, 0x00, 0x00,  // {...{...
                        /* 0708 */  0x80, 0x07, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00,  // ........
                        /* 0710 */  0x85, 0x07, 0x00, 0x00, 0x85, 0x07, 0x00, 0x00,  // ........
                        /* 0718 */  0x8A, 0x07, 0x00, 0x00, 0x8A, 0x07, 0x00, 0x00,  // ........
                        /* 0720 */  0x8F, 0x07, 0x00, 0x00, 0x8F, 0x07, 0x00, 0x00,  // ........
                        /* 0728 */  0x94, 0x07, 0x00, 0x00, 0x94, 0x07, 0x00, 0x00,  // ........
                        /* 0730 */  0x99, 0x07, 0x00, 0x00, 0x99, 0x07, 0x00, 0x00,  // ........
                        /* 0738 */  0x9E, 0x07, 0x00, 0x00, 0x9E, 0x07, 0x00, 0x00,  // ........
                        /* 0740 */  0xA3, 0x07, 0x00, 0x00, 0xA3, 0x07, 0x00, 0x00,  // ........
                        /* 0748 */  0xA8, 0x07, 0x00, 0x00, 0xA8, 0x07, 0x00, 0x00,  // ........
                        /* 0750 */  0xAD, 0x07, 0x00, 0x00, 0xAD, 0x07, 0x00, 0x00,  // ........
                        /* 0758 */  0xB2, 0x07, 0x00, 0x00, 0xB2, 0x07, 0x00, 0x00,  // ........
                        /* 0760 */  0xB7, 0x07, 0x00, 0x00, 0xB7, 0x07, 0x00, 0x00,  // ........
                        /* 0768 */  0xBC, 0x07, 0x00, 0x00, 0xBC, 0x07, 0x00, 0x00,  // ........
                        /* 0770 */  0xC1, 0x07, 0x00, 0x00, 0xC1, 0x07, 0x00, 0x00,  // ........
                        /* 0778 */  0xC6, 0x07, 0x00, 0x00, 0xC6, 0x07, 0x00, 0x00,  // ........
                        /* 0780 */  0xCB, 0x07, 0x00, 0x00, 0xCB, 0x07, 0x00, 0x00,  // ........
                        /* 0788 */  0xD0, 0x07, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00,  // ........
                        /* 0790 */  0xD5, 0x07, 0x00, 0x00, 0xD5, 0x07, 0x00, 0x00,  // ........
                        /* 0798 */  0xDA, 0x07, 0x00, 0x00, 0xDA, 0x07, 0x00, 0x00,  // ........
                        /* 07A0 */  0xDF, 0x07, 0x00, 0x00, 0xDF, 0x07, 0x00, 0x00,  // ........
                        /* 07A8 */  0xE4, 0x07, 0x00, 0x00, 0xE4, 0x07, 0x00, 0x00,  // ........
                        /* 07B0 */  0xE9, 0x07, 0x00, 0x00, 0xE9, 0x07, 0x00, 0x00,  // ........
                        /* 07B8 */  0xEE, 0x07, 0x00, 0x00, 0xEE, 0x07, 0x00, 0x00,  // ........
                        /* 07C0 */  0xF3, 0x07, 0x00, 0x00, 0xF3, 0x07, 0x00, 0x00,  // ........
                        /* 07C8 */  0xF8, 0x07, 0x00, 0x00, 0xF8, 0x07, 0x00, 0x00,  // ........
                        /* 07D0 */  0xFD, 0x07, 0x00, 0x00, 0xFD, 0x07, 0x00, 0x00,  // ........
                        /* 07D8 */  0x02, 0x08, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00,  // ........
                        /* 07E0 */  0x07, 0x08, 0x00, 0x00, 0x07, 0x08, 0x00, 0x00,  // ........
                        /* 07E8 */  0x0C, 0x08, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,  // ........
                        /* 07F0 */  0x11, 0x08, 0x00, 0x00, 0x11, 0x08, 0x00, 0x00,  // ........
                        /* 07F8 */  0x16, 0x08, 0x00, 0x00, 0x16, 0x08, 0x00, 0x00,  // ........
                        /* 0800 */  0x1B, 0x08, 0x00, 0x00, 0x1B, 0x08, 0x00, 0x00,  // ........
                        /* 0808 */  0x20, 0x08, 0x00, 0x00, 0x20, 0x08, 0x00, 0x00,  //  ... ...
                        /* 0810 */  0x25, 0x08, 0x00, 0x00, 0x25, 0x08, 0x00, 0x00,  // %...%...
                        /* 0818 */  0x2A, 0x08, 0x00, 0x00, 0x2A, 0x08, 0x00, 0x00,  // *...*...
                        /* 0820 */  0x2F, 0x08, 0x00, 0x00, 0x2F, 0x08, 0x00, 0x00,  // /.../...
                        /* 0828 */  0x34, 0x08, 0x00, 0x00, 0x34, 0x08, 0x00, 0x00   // 4...4...
                    }
                })
                Name (GTVO, Package (0x02)
                {
                    Zero,
                    Buffer (0x0830)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x20, 0x03, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00,  //  ... ...
                        /* 0010 */  0x25, 0x03, 0x00, 0x00, 0x25, 0x03, 0x00, 0x00,  // %...%...
                        /* 0018 */  0x2A, 0x03, 0x00, 0x00, 0x2A, 0x03, 0x00, 0x00,  // *...*...
                        /* 0020 */  0x2F, 0x03, 0x00, 0x00, 0x2F, 0x03, 0x00, 0x00,  // /.../...
                        /* 0028 */  0x34, 0x03, 0x00, 0x00, 0x34, 0x03, 0x00, 0x00,  // 4...4...
                        /* 0030 */  0x39, 0x03, 0x00, 0x00, 0x39, 0x03, 0x00, 0x00,  // 9...9...
                        /* 0038 */  0x3E, 0x03, 0x00, 0x00, 0x3E, 0x03, 0x00, 0x00,  // >...>...
                        /* 0040 */  0x43, 0x03, 0x00, 0x00, 0x43, 0x03, 0x00, 0x00,  // C...C...
                        /* 0048 */  0x48, 0x03, 0x00, 0x00, 0x48, 0x03, 0x00, 0x00,  // H...H...
                        /* 0050 */  0x4D, 0x03, 0x00, 0x00, 0x4D, 0x03, 0x00, 0x00,  // M...M...
                        /* 0058 */  0x52, 0x03, 0x00, 0x00, 0x52, 0x03, 0x00, 0x00,  // R...R...
                        /* 0060 */  0x57, 0x03, 0x00, 0x00, 0x57, 0x03, 0x00, 0x00,  // W...W...
                        /* 0068 */  0x5C, 0x03, 0x00, 0x00, 0x5C, 0x03, 0x00, 0x00,  // \...\...
                        /* 0070 */  0x61, 0x03, 0x00, 0x00, 0x61, 0x03, 0x00, 0x00,  // a...a...
                        /* 0078 */  0x66, 0x03, 0x00, 0x00, 0x66, 0x03, 0x00, 0x00,  // f...f...
                        /* 0080 */  0x6B, 0x03, 0x00, 0x00, 0x6B, 0x03, 0x00, 0x00,  // k...k...
                        /* 0088 */  0x70, 0x03, 0x00, 0x00, 0x70, 0x03, 0x00, 0x00,  // p...p...
                        /* 0090 */  0x75, 0x03, 0x00, 0x00, 0x75, 0x03, 0x00, 0x00,  // u...u...
                        /* 0098 */  0x7A, 0x03, 0x00, 0x00, 0x7A, 0x03, 0x00, 0x00,  // z...z...
                        /* 00A0 */  0x7F, 0x03, 0x00, 0x00, 0x7F, 0x03, 0x00, 0x00,  // ........
                        /* 00A8 */  0x84, 0x03, 0x00, 0x00, 0x84, 0x03, 0x00, 0x00,  // ........
                        /* 00B0 */  0x89, 0x03, 0x00, 0x00, 0x89, 0x03, 0x00, 0x00,  // ........
                        /* 00B8 */  0x8E, 0x03, 0x00, 0x00, 0x8E, 0x03, 0x00, 0x00,  // ........
                        /* 00C0 */  0x93, 0x03, 0x00, 0x00, 0x93, 0x03, 0x00, 0x00,  // ........
                        /* 00C8 */  0x98, 0x03, 0x00, 0x00, 0x98, 0x03, 0x00, 0x00,  // ........
                        /* 00D0 */  0x9D, 0x03, 0x00, 0x00, 0x9D, 0x03, 0x00, 0x00,  // ........
                        /* 00D8 */  0xA2, 0x03, 0x00, 0x00, 0xA2, 0x03, 0x00, 0x00,  // ........
                        /* 00E0 */  0xA7, 0x03, 0x00, 0x00, 0xA7, 0x03, 0x00, 0x00,  // ........
                        /* 00E8 */  0xAC, 0x03, 0x00, 0x00, 0xAC, 0x03, 0x00, 0x00,  // ........
                        /* 00F0 */  0xB1, 0x03, 0x00, 0x00, 0xB1, 0x03, 0x00, 0x00,  // ........
                        /* 00F8 */  0xB6, 0x03, 0x00, 0x00, 0xB6, 0x03, 0x00, 0x00,  // ........
                        /* 0100 */  0xBB, 0x03, 0x00, 0x00, 0xBB, 0x03, 0x00, 0x00,  // ........
                        /* 0108 */  0xC0, 0x03, 0x00, 0x00, 0xC0, 0x03, 0x00, 0x00,  // ........
                        /* 0110 */  0xC5, 0x03, 0x00, 0x00, 0xC5, 0x03, 0x00, 0x00,  // ........
                        /* 0118 */  0xCA, 0x03, 0x00, 0x00, 0xCA, 0x03, 0x00, 0x00,  // ........
                        /* 0120 */  0xCF, 0x03, 0x00, 0x00, 0xCF, 0x03, 0x00, 0x00,  // ........
                        /* 0128 */  0xD4, 0x03, 0x00, 0x00, 0xD4, 0x03, 0x00, 0x00,  // ........
                        /* 0130 */  0xD9, 0x03, 0x00, 0x00, 0xD9, 0x03, 0x00, 0x00,  // ........
                        /* 0138 */  0xDE, 0x03, 0x00, 0x00, 0xDE, 0x03, 0x00, 0x00,  // ........
                        /* 0140 */  0xE3, 0x03, 0x00, 0x00, 0xE3, 0x03, 0x00, 0x00,  // ........
                        /* 0148 */  0xE8, 0x03, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00,  // ........
                        /* 0150 */  0xED, 0x03, 0x00, 0x00, 0xED, 0x03, 0x00, 0x00,  // ........
                        /* 0158 */  0xF2, 0x03, 0x00, 0x00, 0xF2, 0x03, 0x00, 0x00,  // ........
                        /* 0160 */  0xF7, 0x03, 0x00, 0x00, 0xF7, 0x03, 0x00, 0x00,  // ........
                        /* 0168 */  0xFC, 0x03, 0x00, 0x00, 0xFC, 0x03, 0x00, 0x00,  // ........
                        /* 0170 */  0x01, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00,  // ........
                        /* 0178 */  0x06, 0x04, 0x00, 0x00, 0x06, 0x04, 0x00, 0x00,  // ........
                        /* 0180 */  0x0B, 0x04, 0x00, 0x00, 0x0B, 0x04, 0x00, 0x00,  // ........
                        /* 0188 */  0x10, 0x04, 0x00, 0x00, 0x10, 0x04, 0x00, 0x00,  // ........
                        /* 0190 */  0x15, 0x04, 0x00, 0x00, 0x15, 0x04, 0x00, 0x00,  // ........
                        /* 0198 */  0x1A, 0x04, 0x00, 0x00, 0x1A, 0x04, 0x00, 0x00,  // ........
                        /* 01A0 */  0x1F, 0x04, 0x00, 0x00, 0x1F, 0x04, 0x00, 0x00,  // ........
                        /* 01A8 */  0x24, 0x04, 0x00, 0x00, 0x24, 0x04, 0x00, 0x00,  // $...$...
                        /* 01B0 */  0x29, 0x04, 0x00, 0x00, 0x29, 0x04, 0x00, 0x00,  // )...)...
                        /* 01B8 */  0x2E, 0x04, 0x00, 0x00, 0x2E, 0x04, 0x00, 0x00,  // ........
                        /* 01C0 */  0x33, 0x04, 0x00, 0x00, 0x33, 0x04, 0x00, 0x00,  // 3...3...
                        /* 01C8 */  0x38, 0x04, 0x00, 0x00, 0x38, 0x04, 0x00, 0x00,  // 8...8...
                        /* 01D0 */  0x3D, 0x04, 0x00, 0x00, 0x3D, 0x04, 0x00, 0x00,  // =...=...
                        /* 01D8 */  0x42, 0x04, 0x00, 0x00, 0x42, 0x04, 0x00, 0x00,  // B...B...
                        /* 01E0 */  0x47, 0x04, 0x00, 0x00, 0x47, 0x04, 0x00, 0x00,  // G...G...
                        /* 01E8 */  0x4C, 0x04, 0x00, 0x00, 0x4C, 0x04, 0x00, 0x00,  // L...L...
                        /* 01F0 */  0x51, 0x04, 0x00, 0x00, 0x51, 0x04, 0x00, 0x00,  // Q...Q...
                        /* 01F8 */  0x56, 0x04, 0x00, 0x00, 0x56, 0x04, 0x00, 0x00,  // V...V...
                        /* 0200 */  0x5B, 0x04, 0x00, 0x00, 0x5B, 0x04, 0x00, 0x00,  // [...[...
                        /* 0208 */  0x60, 0x04, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00,  // `...`...
                        /* 0210 */  0x65, 0x04, 0x00, 0x00, 0x65, 0x04, 0x00, 0x00,  // e...e...
                        /* 0218 */  0x6A, 0x04, 0x00, 0x00, 0x6A, 0x04, 0x00, 0x00,  // j...j...
                        /* 0220 */  0x6F, 0x04, 0x00, 0x00, 0x6F, 0x04, 0x00, 0x00,  // o...o...
                        /* 0228 */  0x74, 0x04, 0x00, 0x00, 0x74, 0x04, 0x00, 0x00,  // t...t...
                        /* 0230 */  0x79, 0x04, 0x00, 0x00, 0x79, 0x04, 0x00, 0x00,  // y...y...
                        /* 0238 */  0x7E, 0x04, 0x00, 0x00, 0x7E, 0x04, 0x00, 0x00,  // ~...~...
                        /* 0240 */  0x83, 0x04, 0x00, 0x00, 0x83, 0x04, 0x00, 0x00,  // ........
                        /* 0248 */  0x88, 0x04, 0x00, 0x00, 0x88, 0x04, 0x00, 0x00,  // ........
                        /* 0250 */  0x8D, 0x04, 0x00, 0x00, 0x8D, 0x04, 0x00, 0x00,  // ........
                        /* 0258 */  0x92, 0x04, 0x00, 0x00, 0x92, 0x04, 0x00, 0x00,  // ........
                        /* 0260 */  0x97, 0x04, 0x00, 0x00, 0x97, 0x04, 0x00, 0x00,  // ........
                        /* 0268 */  0x9C, 0x04, 0x00, 0x00, 0x9C, 0x04, 0x00, 0x00,  // ........
                        /* 0270 */  0xA1, 0x04, 0x00, 0x00, 0xA1, 0x04, 0x00, 0x00,  // ........
                        /* 0278 */  0xA6, 0x04, 0x00, 0x00, 0xA6, 0x04, 0x00, 0x00,  // ........
                        /* 0280 */  0xAB, 0x04, 0x00, 0x00, 0xAB, 0x04, 0x00, 0x00,  // ........
                        /* 0288 */  0xB0, 0x04, 0x00, 0x00, 0xB0, 0x04, 0x00, 0x00,  // ........
                        /* 0290 */  0xB5, 0x04, 0x00, 0x00, 0xB5, 0x04, 0x00, 0x00,  // ........
                        /* 0298 */  0xBA, 0x04, 0x00, 0x00, 0xBA, 0x04, 0x00, 0x00,  // ........
                        /* 02A0 */  0xBF, 0x04, 0x00, 0x00, 0xBF, 0x04, 0x00, 0x00,  // ........
                        /* 02A8 */  0xC4, 0x04, 0x00, 0x00, 0xC4, 0x04, 0x00, 0x00,  // ........
                        /* 02B0 */  0xC9, 0x04, 0x00, 0x00, 0xC9, 0x04, 0x00, 0x00,  // ........
                        /* 02B8 */  0xCE, 0x04, 0x00, 0x00, 0xCE, 0x04, 0x00, 0x00,  // ........
                        /* 02C0 */  0xD3, 0x04, 0x00, 0x00, 0xD3, 0x04, 0x00, 0x00,  // ........
                        /* 02C8 */  0xD8, 0x04, 0x00, 0x00, 0xD8, 0x04, 0x00, 0x00,  // ........
                        /* 02D0 */  0xDD, 0x04, 0x00, 0x00, 0xDD, 0x04, 0x00, 0x00,  // ........
                        /* 02D8 */  0xE2, 0x04, 0x00, 0x00, 0xE2, 0x04, 0x00, 0x00,  // ........
                        /* 02E0 */  0xE7, 0x04, 0x00, 0x00, 0xE7, 0x04, 0x00, 0x00,  // ........
                        /* 02E8 */  0xEC, 0x04, 0x00, 0x00, 0xEC, 0x04, 0x00, 0x00,  // ........
                        /* 02F0 */  0xF1, 0x04, 0x00, 0x00, 0xF1, 0x04, 0x00, 0x00,  // ........
                        /* 02F8 */  0xF6, 0x04, 0x00, 0x00, 0xF6, 0x04, 0x00, 0x00,  // ........
                        /* 0300 */  0xFB, 0x04, 0x00, 0x00, 0xFB, 0x04, 0x00, 0x00,  // ........
                        /* 0308 */  0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,  // ........
                        /* 0310 */  0x05, 0x05, 0x00, 0x00, 0x05, 0x05, 0x00, 0x00,  // ........
                        /* 0318 */  0x0A, 0x05, 0x00, 0x00, 0x0A, 0x05, 0x00, 0x00,  // ........
                        /* 0320 */  0x0F, 0x05, 0x00, 0x00, 0x0F, 0x05, 0x00, 0x00,  // ........
                        /* 0328 */  0x14, 0x05, 0x00, 0x00, 0x14, 0x05, 0x00, 0x00,  // ........
                        /* 0330 */  0x19, 0x05, 0x00, 0x00, 0x19, 0x05, 0x00, 0x00,  // ........
                        /* 0338 */  0x1E, 0x05, 0x00, 0x00, 0x1E, 0x05, 0x00, 0x00,  // ........
                        /* 0340 */  0x23, 0x05, 0x00, 0x00, 0x23, 0x05, 0x00, 0x00,  // #...#...
                        /* 0348 */  0x28, 0x05, 0x00, 0x00, 0x28, 0x05, 0x00, 0x00,  // (...(...
                        /* 0350 */  0x2D, 0x05, 0x00, 0x00, 0x2D, 0x05, 0x00, 0x00,  // -...-...
                        /* 0358 */  0x32, 0x05, 0x00, 0x00, 0x32, 0x05, 0x00, 0x00,  // 2...2...
                        /* 0360 */  0x37, 0x05, 0x00, 0x00, 0x37, 0x05, 0x00, 0x00,  // 7...7...
                        /* 0368 */  0x3C, 0x05, 0x00, 0x00, 0x3C, 0x05, 0x00, 0x00,  // <...<...
                        /* 0370 */  0x41, 0x05, 0x00, 0x00, 0x41, 0x05, 0x00, 0x00,  // A...A...
                        /* 0378 */  0x46, 0x05, 0x00, 0x00, 0x46, 0x05, 0x00, 0x00,  // F...F...
                        /* 0380 */  0x4B, 0x05, 0x00, 0x00, 0x4B, 0x05, 0x00, 0x00,  // K...K...
                        /* 0388 */  0x50, 0x05, 0x00, 0x00, 0x50, 0x05, 0x00, 0x00,  // P...P...
                        /* 0390 */  0x55, 0x05, 0x00, 0x00, 0x55, 0x05, 0x00, 0x00,  // U...U...
                        /* 0398 */  0x5A, 0x05, 0x00, 0x00, 0x5A, 0x05, 0x00, 0x00,  // Z...Z...
                        /* 03A0 */  0x5F, 0x05, 0x00, 0x00, 0x5F, 0x05, 0x00, 0x00,  // _..._...
                        /* 03A8 */  0x64, 0x05, 0x00, 0x00, 0x64, 0x05, 0x00, 0x00,  // d...d...
                        /* 03B0 */  0x69, 0x05, 0x00, 0x00, 0x69, 0x05, 0x00, 0x00,  // i...i...
                        /* 03B8 */  0x6E, 0x05, 0x00, 0x00, 0x6E, 0x05, 0x00, 0x00,  // n...n...
                        /* 03C0 */  0x73, 0x05, 0x00, 0x00, 0x73, 0x05, 0x00, 0x00,  // s...s...
                        /* 03C8 */  0x78, 0x05, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00,  // x...x...
                        /* 03D0 */  0x7D, 0x05, 0x00, 0x00, 0x7D, 0x05, 0x00, 0x00,  // }...}...
                        /* 03D8 */  0x82, 0x05, 0x00, 0x00, 0x82, 0x05, 0x00, 0x00,  // ........
                        /* 03E0 */  0x87, 0x05, 0x00, 0x00, 0x87, 0x05, 0x00, 0x00,  // ........
                        /* 03E8 */  0x8C, 0x05, 0x00, 0x00, 0x8C, 0x05, 0x00, 0x00,  // ........
                        /* 03F0 */  0x91, 0x05, 0x00, 0x00, 0x91, 0x05, 0x00, 0x00,  // ........
                        /* 03F8 */  0x96, 0x05, 0x00, 0x00, 0x96, 0x05, 0x00, 0x00,  // ........
                        /* 0400 */  0x9B, 0x05, 0x00, 0x00, 0x9B, 0x05, 0x00, 0x00,  // ........
                        /* 0408 */  0xA0, 0x05, 0x00, 0x00, 0xA0, 0x05, 0x00, 0x00,  // ........
                        /* 0410 */  0xA5, 0x05, 0x00, 0x00, 0xA5, 0x05, 0x00, 0x00,  // ........
                        /* 0418 */  0xAA, 0x05, 0x00, 0x00, 0xAA, 0x05, 0x00, 0x00,  // ........
                        /* 0420 */  0xAF, 0x05, 0x00, 0x00, 0xAF, 0x05, 0x00, 0x00,  // ........
                        /* 0428 */  0xB4, 0x05, 0x00, 0x00, 0xB4, 0x05, 0x00, 0x00,  // ........
                        /* 0430 */  0xB9, 0x05, 0x00, 0x00, 0xB9, 0x05, 0x00, 0x00,  // ........
                        /* 0438 */  0xBE, 0x05, 0x00, 0x00, 0xBE, 0x05, 0x00, 0x00,  // ........
                        /* 0440 */  0xC3, 0x05, 0x00, 0x00, 0xC3, 0x05, 0x00, 0x00,  // ........
                        /* 0448 */  0xC8, 0x05, 0x00, 0x00, 0xC8, 0x05, 0x00, 0x00,  // ........
                        /* 0450 */  0xCD, 0x05, 0x00, 0x00, 0xCD, 0x05, 0x00, 0x00,  // ........
                        /* 0458 */  0xD2, 0x05, 0x00, 0x00, 0xD2, 0x05, 0x00, 0x00,  // ........
                        /* 0460 */  0xD7, 0x05, 0x00, 0x00, 0xD7, 0x05, 0x00, 0x00,  // ........
                        /* 0468 */  0xDC, 0x05, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00,  // ........
                        /* 0470 */  0xE1, 0x05, 0x00, 0x00, 0xE1, 0x05, 0x00, 0x00,  // ........
                        /* 0478 */  0xE6, 0x05, 0x00, 0x00, 0xE6, 0x05, 0x00, 0x00,  // ........
                        /* 0480 */  0xEB, 0x05, 0x00, 0x00, 0xEB, 0x05, 0x00, 0x00,  // ........
                        /* 0488 */  0xF0, 0x05, 0x00, 0x00, 0xF0, 0x05, 0x00, 0x00,  // ........
                        /* 0490 */  0xF5, 0x05, 0x00, 0x00, 0xF5, 0x05, 0x00, 0x00,  // ........
                        /* 0498 */  0xFA, 0x05, 0x00, 0x00, 0xFA, 0x05, 0x00, 0x00,  // ........
                        /* 04A0 */  0xFF, 0x05, 0x00, 0x00, 0xFF, 0x05, 0x00, 0x00,  // ........
                        /* 04A8 */  0x04, 0x06, 0x00, 0x00, 0x04, 0x06, 0x00, 0x00,  // ........
                        /* 04B0 */  0x09, 0x06, 0x00, 0x00, 0x09, 0x06, 0x00, 0x00,  // ........
                        /* 04B8 */  0x0E, 0x06, 0x00, 0x00, 0x0E, 0x06, 0x00, 0x00,  // ........
                        /* 04C0 */  0x13, 0x06, 0x00, 0x00, 0x13, 0x06, 0x00, 0x00,  // ........
                        /* 04C8 */  0x18, 0x06, 0x00, 0x00, 0x18, 0x06, 0x00, 0x00,  // ........
                        /* 04D0 */  0x1D, 0x06, 0x00, 0x00, 0x1D, 0x06, 0x00, 0x00,  // ........
                        /* 04D8 */  0x22, 0x06, 0x00, 0x00, 0x22, 0x06, 0x00, 0x00,  // "..."...
                        /* 04E0 */  0x27, 0x06, 0x00, 0x00, 0x27, 0x06, 0x00, 0x00,  // '...'...
                        /* 04E8 */  0x2C, 0x06, 0x00, 0x00, 0x2C, 0x06, 0x00, 0x00,  // ,...,...
                        /* 04F0 */  0x31, 0x06, 0x00, 0x00, 0x31, 0x06, 0x00, 0x00,  // 1...1...
                        /* 04F8 */  0x36, 0x06, 0x00, 0x00, 0x36, 0x06, 0x00, 0x00,  // 6...6...
                        /* 0500 */  0x3B, 0x06, 0x00, 0x00, 0x3B, 0x06, 0x00, 0x00,  // ;...;...
                        /* 0508 */  0x40, 0x06, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  // @...@...
                        /* 0510 */  0x45, 0x06, 0x00, 0x00, 0x45, 0x06, 0x00, 0x00,  // E...E...
                        /* 0518 */  0x4A, 0x06, 0x00, 0x00, 0x4A, 0x06, 0x00, 0x00,  // J...J...
                        /* 0520 */  0x4F, 0x06, 0x00, 0x00, 0x4F, 0x06, 0x00, 0x00,  // O...O...
                        /* 0528 */  0x54, 0x06, 0x00, 0x00, 0x54, 0x06, 0x00, 0x00,  // T...T...
                        /* 0530 */  0x59, 0x06, 0x00, 0x00, 0x59, 0x06, 0x00, 0x00,  // Y...Y...
                        /* 0538 */  0x5E, 0x06, 0x00, 0x00, 0x5E, 0x06, 0x00, 0x00,  // ^...^...
                        /* 0540 */  0x63, 0x06, 0x00, 0x00, 0x63, 0x06, 0x00, 0x00,  // c...c...
                        /* 0548 */  0x68, 0x06, 0x00, 0x00, 0x68, 0x06, 0x00, 0x00,  // h...h...
                        /* 0550 */  0x6D, 0x06, 0x00, 0x00, 0x6D, 0x06, 0x00, 0x00,  // m...m...
                        /* 0558 */  0x72, 0x06, 0x00, 0x00, 0x72, 0x06, 0x00, 0x00,  // r...r...
                        /* 0560 */  0x77, 0x06, 0x00, 0x00, 0x77, 0x06, 0x00, 0x00,  // w...w...
                        /* 0568 */  0x7C, 0x06, 0x00, 0x00, 0x7C, 0x06, 0x00, 0x00,  // |...|...
                        /* 0570 */  0x81, 0x06, 0x00, 0x00, 0x81, 0x06, 0x00, 0x00,  // ........
                        /* 0578 */  0x86, 0x06, 0x00, 0x00, 0x86, 0x06, 0x00, 0x00,  // ........
                        /* 0580 */  0x8B, 0x06, 0x00, 0x00, 0x8B, 0x06, 0x00, 0x00,  // ........
                        /* 0588 */  0x90, 0x06, 0x00, 0x00, 0x90, 0x06, 0x00, 0x00,  // ........
                        /* 0590 */  0x95, 0x06, 0x00, 0x00, 0x95, 0x06, 0x00, 0x00,  // ........
                        /* 0598 */  0x9A, 0x06, 0x00, 0x00, 0x9A, 0x06, 0x00, 0x00,  // ........
                        /* 05A0 */  0x9F, 0x06, 0x00, 0x00, 0x9F, 0x06, 0x00, 0x00,  // ........
                        /* 05A8 */  0xA4, 0x06, 0x00, 0x00, 0xA4, 0x06, 0x00, 0x00,  // ........
                        /* 05B0 */  0xA9, 0x06, 0x00, 0x00, 0xA9, 0x06, 0x00, 0x00,  // ........
                        /* 05B8 */  0xAE, 0x06, 0x00, 0x00, 0xAE, 0x06, 0x00, 0x00,  // ........
                        /* 05C0 */  0xB3, 0x06, 0x00, 0x00, 0xB3, 0x06, 0x00, 0x00,  // ........
                        /* 05C8 */  0xB8, 0x06, 0x00, 0x00, 0xB8, 0x06, 0x00, 0x00,  // ........
                        /* 05D0 */  0xBD, 0x06, 0x00, 0x00, 0xBD, 0x06, 0x00, 0x00,  // ........
                        /* 05D8 */  0xC2, 0x06, 0x00, 0x00, 0xC2, 0x06, 0x00, 0x00,  // ........
                        /* 05E0 */  0xC7, 0x06, 0x00, 0x00, 0xC7, 0x06, 0x00, 0x00,  // ........
                        /* 05E8 */  0xCC, 0x06, 0x00, 0x00, 0xCC, 0x06, 0x00, 0x00,  // ........
                        /* 05F0 */  0xD1, 0x06, 0x00, 0x00, 0xD1, 0x06, 0x00, 0x00,  // ........
                        /* 05F8 */  0xD6, 0x06, 0x00, 0x00, 0xD6, 0x06, 0x00, 0x00,  // ........
                        /* 0600 */  0xDB, 0x06, 0x00, 0x00, 0xDB, 0x06, 0x00, 0x00,  // ........
                        /* 0608 */  0xE0, 0x06, 0x00, 0x00, 0xE0, 0x06, 0x00, 0x00,  // ........
                        /* 0610 */  0xE5, 0x06, 0x00, 0x00, 0xE5, 0x06, 0x00, 0x00,  // ........
                        /* 0618 */  0xEA, 0x06, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00,  // ........
                        /* 0620 */  0xEF, 0x06, 0x00, 0x00, 0xEF, 0x06, 0x00, 0x00,  // ........
                        /* 0628 */  0xF4, 0x06, 0x00, 0x00, 0xF4, 0x06, 0x00, 0x00,  // ........
                        /* 0630 */  0xF9, 0x06, 0x00, 0x00, 0xF9, 0x06, 0x00, 0x00,  // ........
                        /* 0638 */  0xFE, 0x06, 0x00, 0x00, 0xFE, 0x06, 0x00, 0x00,  // ........
                        /* 0640 */  0x03, 0x07, 0x00, 0x00, 0x03, 0x07, 0x00, 0x00,  // ........
                        /* 0648 */  0x08, 0x07, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00,  // ........
                        /* 0650 */  0x0D, 0x07, 0x00, 0x00, 0x0D, 0x07, 0x00, 0x00,  // ........
                        /* 0658 */  0x12, 0x07, 0x00, 0x00, 0x12, 0x07, 0x00, 0x00,  // ........
                        /* 0660 */  0x17, 0x07, 0x00, 0x00, 0x17, 0x07, 0x00, 0x00,  // ........
                        /* 0668 */  0x1C, 0x07, 0x00, 0x00, 0x1C, 0x07, 0x00, 0x00,  // ........
                        /* 0670 */  0x21, 0x07, 0x00, 0x00, 0x21, 0x07, 0x00, 0x00,  // !...!...
                        /* 0678 */  0x26, 0x07, 0x00, 0x00, 0x26, 0x07, 0x00, 0x00,  // &...&...
                        /* 0680 */  0x2B, 0x07, 0x00, 0x00, 0x2B, 0x07, 0x00, 0x00,  // +...+...
                        /* 0688 */  0x30, 0x07, 0x00, 0x00, 0x30, 0x07, 0x00, 0x00,  // 0...0...
                        /* 0690 */  0x35, 0x07, 0x00, 0x00, 0x35, 0x07, 0x00, 0x00,  // 5...5...
                        /* 0698 */  0x3A, 0x07, 0x00, 0x00, 0x3A, 0x07, 0x00, 0x00,  // :...:...
                        /* 06A0 */  0x3F, 0x07, 0x00, 0x00, 0x3F, 0x07, 0x00, 0x00,  // ?...?...
                        /* 06A8 */  0x44, 0x07, 0x00, 0x00, 0x44, 0x07, 0x00, 0x00,  // D...D...
                        /* 06B0 */  0x49, 0x07, 0x00, 0x00, 0x49, 0x07, 0x00, 0x00,  // I...I...
                        /* 06B8 */  0x4E, 0x07, 0x00, 0x00, 0x4E, 0x07, 0x00, 0x00,  // N...N...
                        /* 06C0 */  0x53, 0x07, 0x00, 0x00, 0x53, 0x07, 0x00, 0x00,  // S...S...
                        /* 06C8 */  0x58, 0x07, 0x00, 0x00, 0x58, 0x07, 0x00, 0x00,  // X...X...
                        /* 06D0 */  0x5D, 0x07, 0x00, 0x00, 0x5D, 0x07, 0x00, 0x00,  // ]...]...
                        /* 06D8 */  0x62, 0x07, 0x00, 0x00, 0x62, 0x07, 0x00, 0x00,  // b...b...
                        /* 06E0 */  0x67, 0x07, 0x00, 0x00, 0x67, 0x07, 0x00, 0x00,  // g...g...
                        /* 06E8 */  0x6C, 0x07, 0x00, 0x00, 0x6C, 0x07, 0x00, 0x00,  // l...l...
                        /* 06F0 */  0x71, 0x07, 0x00, 0x00, 0x71, 0x07, 0x00, 0x00,  // q...q...
                        /* 06F8 */  0x76, 0x07, 0x00, 0x00, 0x76, 0x07, 0x00, 0x00,  // v...v...
                        /* 0700 */  0x7B, 0x07, 0x00, 0x00, 0x7B, 0x07, 0x00, 0x00,  // {...{...
                        /* 0708 */  0x80, 0x07, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00,  // ........
                        /* 0710 */  0x85, 0x07, 0x00, 0x00, 0x85, 0x07, 0x00, 0x00,  // ........
                        /* 0718 */  0x8A, 0x07, 0x00, 0x00, 0x8A, 0x07, 0x00, 0x00,  // ........
                        /* 0720 */  0x8F, 0x07, 0x00, 0x00, 0x8F, 0x07, 0x00, 0x00,  // ........
                        /* 0728 */  0x94, 0x07, 0x00, 0x00, 0x94, 0x07, 0x00, 0x00,  // ........
                        /* 0730 */  0x99, 0x07, 0x00, 0x00, 0x99, 0x07, 0x00, 0x00,  // ........
                        /* 0738 */  0x9E, 0x07, 0x00, 0x00, 0x9E, 0x07, 0x00, 0x00,  // ........
                        /* 0740 */  0xA3, 0x07, 0x00, 0x00, 0xA3, 0x07, 0x00, 0x00,  // ........
                        /* 0748 */  0xA8, 0x07, 0x00, 0x00, 0xA8, 0x07, 0x00, 0x00,  // ........
                        /* 0750 */  0xAD, 0x07, 0x00, 0x00, 0xAD, 0x07, 0x00, 0x00,  // ........
                        /* 0758 */  0xB2, 0x07, 0x00, 0x00, 0xB2, 0x07, 0x00, 0x00,  // ........
                        /* 0760 */  0xB7, 0x07, 0x00, 0x00, 0xB7, 0x07, 0x00, 0x00,  // ........
                        /* 0768 */  0xBC, 0x07, 0x00, 0x00, 0xBC, 0x07, 0x00, 0x00,  // ........
                        /* 0770 */  0xC1, 0x07, 0x00, 0x00, 0xC1, 0x07, 0x00, 0x00,  // ........
                        /* 0778 */  0xC6, 0x07, 0x00, 0x00, 0xC6, 0x07, 0x00, 0x00,  // ........
                        /* 0780 */  0xCB, 0x07, 0x00, 0x00, 0xCB, 0x07, 0x00, 0x00,  // ........
                        /* 0788 */  0xD0, 0x07, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00,  // ........
                        /* 0790 */  0xD5, 0x07, 0x00, 0x00, 0xD5, 0x07, 0x00, 0x00,  // ........
                        /* 0798 */  0xDA, 0x07, 0x00, 0x00, 0xDA, 0x07, 0x00, 0x00,  // ........
                        /* 07A0 */  0xDF, 0x07, 0x00, 0x00, 0xDF, 0x07, 0x00, 0x00,  // ........
                        /* 07A8 */  0xE4, 0x07, 0x00, 0x00, 0xE4, 0x07, 0x00, 0x00,  // ........
                        /* 07B0 */  0xE9, 0x07, 0x00, 0x00, 0xE9, 0x07, 0x00, 0x00,  // ........
                        /* 07B8 */  0xEE, 0x07, 0x00, 0x00, 0xEE, 0x07, 0x00, 0x00,  // ........
                        /* 07C0 */  0xF3, 0x07, 0x00, 0x00, 0xF3, 0x07, 0x00, 0x00,  // ........
                        /* 07C8 */  0xF8, 0x07, 0x00, 0x00, 0xF8, 0x07, 0x00, 0x00,  // ........
                        /* 07D0 */  0xFD, 0x07, 0x00, 0x00, 0xFD, 0x07, 0x00, 0x00,  // ........
                        /* 07D8 */  0x02, 0x08, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00,  // ........
                        /* 07E0 */  0x07, 0x08, 0x00, 0x00, 0x07, 0x08, 0x00, 0x00,  // ........
                        /* 07E8 */  0x0C, 0x08, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,  // ........
                        /* 07F0 */  0x11, 0x08, 0x00, 0x00, 0x11, 0x08, 0x00, 0x00,  // ........
                        /* 07F8 */  0x16, 0x08, 0x00, 0x00, 0x16, 0x08, 0x00, 0x00,  // ........
                        /* 0800 */  0x1B, 0x08, 0x00, 0x00, 0x1B, 0x08, 0x00, 0x00,  // ........
                        /* 0808 */  0x20, 0x08, 0x00, 0x00, 0x20, 0x08, 0x00, 0x00,  //  ... ...
                        /* 0810 */  0x25, 0x08, 0x00, 0x00, 0x25, 0x08, 0x00, 0x00,  // %...%...
                        /* 0818 */  0x2A, 0x08, 0x00, 0x00, 0x2A, 0x08, 0x00, 0x00,  // *...*...
                        /* 0820 */  0x2F, 0x08, 0x00, 0x00, 0x2F, 0x08, 0x00, 0x00,  // /.../...
                        /* 0828 */  0x34, 0x08, 0x00, 0x00, 0x34, 0x08, 0x00, 0x00   // 4...4...
                    }
                })
                If ((Arg0 == 0x42))
                {
                    Return (PL1T) /* \_SB_.PTMD.GDSV.PL1T */
                //  Removed Section
                }

                If ((Arg0 == 0x59))
                {
                    Return (SVID) /* \_SB_.PTMD.GDSV.SVID */
                //  Removed Section
                }

                If ((Arg0 == 0x02))
                {
                    Return (CORE) /* \_SB_.PTMD.GDSV.CORE */
                //  Removed Section
                }

                If ((Arg0 == 0x4D))
                {
                    Return (RING) /* \_SB_.PTMD.GDSV.RING */
                //  Removed Section
                }

                If ((Arg0 == 0x51))
                {
                    Return (GTVO) /* \_SB_.PTMD.GDSV.GTVO */
                //  Removed Section
                }

                If ((Arg0 == 0x5A))
                {
                    Name (RCR1, Package (0x02)
                    {
                        Zero,
                        Buffer (0x20)
                        {
                            /* 0000 */  0x64, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00,  // d...d...
                            /* 0008 */  0x7D, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00,  // }...}...
                            /* 0010 */  0xA7, 0x00, 0x00, 0x00, 0xA7, 0x00, 0x00, 0x00,  // ........
                            /* 0018 */  0xFA, 0x00, 0x00, 0x00, 0xFA, 0x00, 0x00, 0x00   // ........
                        }
                    })
                    Return (RCR1) /* \_SB_.PTMD.GDSV.RCR1 */
                //  Removed Section
                }

                If ((Arg0 == 0x45))
                {
                    Name (RCR0, Package (0x02)
                    {
                        Zero,
                        Buffer (0x20)
                        {
                            /* 0000 */  0x64, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00,  // d...d...
                            /* 0008 */  0x7D, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00,  // }...}...
                            /* 0010 */  0xA7, 0x00, 0x00, 0x00, 0xA7, 0x00, 0x00, 0x00,  // ........
                            /* 0018 */  0xFA, 0x00, 0x00, 0x00, 0xFA, 0x00, 0x00, 0x00   // ........
                        }
                    })
                    Return (RCR0) /* \_SB_.PTMD.GDSV.RCR0 */
                //  Removed Section
                }

                Name (DM00, Package (0x02)
                {
                    Zero,
                    Buffer (0x58)
                    {
                        /* 0000 */  0x08, 0x00, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00,  // .... ...
                        /* 0008 */  0x0A, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00,  // ........
                        /* 0010 */  0x0C, 0x00, 0x00, 0x00, 0xB0, 0x04, 0x00, 0x00,  // ........
                        /* 0018 */  0x0E, 0x00, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00,  // ....x...
                        /* 0020 */  0x10, 0x00, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  // ....@...
                        /* 0028 */  0x12, 0x00, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00,  // ........
                        /* 0030 */  0x14, 0x00, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00,  // ........
                        /* 0038 */  0x16, 0x00, 0x00, 0x00, 0x98, 0x08, 0x00, 0x00,  // ........
                        /* 0040 */  0x18, 0x00, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00,  // ....`...
                        /* 0048 */  0x1A, 0x00, 0x00, 0x00, 0x28, 0x0A, 0x00, 0x00,  // ....(...
                        /* 0050 */  0x1C, 0x00, 0x00, 0x00, 0xF0, 0x0A, 0x00, 0x00   // ........
                    }
                })
                Name (RF00, Package (0x02)
                {
                    Zero,
                    Buffer (0x10)
                    {
                        /* 0000 */  0x64, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00,  // d...d...
                        /* 0008 */  0x85, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x00   // ........
                    }
                })
                If ((Arg0 == 0x13))
                {
                    Return (DM00) /* \_SB_.PTMD.GDSV.DM00 */
                //  Removed Section
                }

                If ((Arg0 == 0x49))
                {
                    Return (RF00) /* \_SB_.PTMD.GDSV.RF00 */
                //  Removed Section
                }

            Return (Zero)  // Fixed Compiler Warning
            }

            Method (CDRD, 1, Serialized)
            {
                Return (Package (0x02)
                {
                    Zero,
                    Zero
                })
            }

            Method (CDWR, 2, Serialized)
            {
                Return (Zero)
            }

            Method (GXDV, 1, Serialized)  // Fixed Compiler Remark
            {
                Name (PRF1, 0x03)
                Name (PRF2, 0x01)
                If (((PRF1 == One) && (Arg0 == One)))
                {
                    Return (Package (0x01)
                    {
                        0x02
                    })
                }

                If (((PRF2 == One) && (Arg0 == 0x02)))
                {
                    Return (Package (0x01)
                    {
                        0x02
                    })
                }

                OperationRegion (PRFA, SystemMemory, 0xD97E1018, 0x00F0)
                Field (PRFA, ByteAcc, NoLock, Preserve)
                {
                    XMP1,   960,
                    XMP2,   960
                }

                Name (RPKG, Package (0x02){})
                Name (XMPT, Buffer (0x0078){})
                If ((Arg0 == One))
                {
                    XMPT = XMP1 /* \_SB_.PTMD.GXDV.XMP1 */
                    RPKG [Zero] = Zero
                    RPKG [One] = XMPT /* \_SB_.PTMD.GXDV.XMPT */
                    Return (RPKG) /* \_SB_.PTMD.GXDV.RPKG */
                }

                If ((Arg0 == 0x02))
                {
                    XMPT = XMP2 /* \_SB_.PTMD.GXDV.XMP2 */
                    RPKG [Zero] = Zero
                    RPKG [One] = XMPT /* \_SB_.PTMD.GXDV.XMPT */
                    Return (RPKG) /* \_SB_.PTMD.GXDV.RPKG */
                }

                Return (Package (0x01)
                {
                    One
                })
            }
        }
    }

    // Removed Device (H_EC)

    // Removed Device (BAT0)

    // Removed Device (BAT1)

    // Removed Device (BAT2)

    // Removed Device (LID0)

    // Removed Device (DOCK)

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero,
        Zero,
        Zero,
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One,
            Zero,
            Zero,
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05,
            Zero,
            Zero,
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06,
            Zero,
            Zero,
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07,
        Zero,
        Zero,
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.LPCB.SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
            \_SB.PCI0.LPCB.SIOS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.LPCB.SWAK (Arg0)
        \_SB.PCI0.NWAK (Arg0)
        \_SB.PCI0.LPCB.SIOW (Arg0)
    }

    Method (OSCM, 4, NotSerialized)
    {
        Return (Zero)
    }

    // Removed Method (PINI)
}

