
macro SPO_GameSpecificAssemblySettings()
	!ROM_SPO_U = $0001								;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_SPO_J = $0002								;|
	!ROM_SPO_E = $0004								;/

!Define_SPO_Global_DisableCopyDetection = !FALSE

	%SetROMToAssembleForHack(SPO_U, !ROMID)
endmacro

macro SPO_LoadGameSpecificMainSNESFiles()
	incsrc ../SPC700/ARAMPtrs_SPO.asm
	incsrc ../Misc_Defines_SPO.asm
	incsrc ../RAM_Map_SPO.asm
	incsrc ../Routine_Macros_SPO.asm
	incsrc ../SNES_Macros_SPO.asm
	%LoadExtraRAMFile("SRAM_Map_SPO.asm", !GameID, SPO)
endmacro

macro SPO_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_SPO.asm
	incsrc ../Misc_Defines_SPO.asm
	incsrc ../SPC700/SPC700_Routine_Macros_SPO.asm
	incsrc ../SPC700/SPC700_Macros_SPO.asm
endmacro

macro SPO_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro SPO_LoadGameSpecificMSU1Files()
endmacro

macro SPO_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_ApplyDefaultPatches = !TRUE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 3
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Nintendo"
	!Define_Global_DeveloperName = "Nintendo R&D3"
	!Define_Global_ReleaseDate = "September 14, 1994"
	!Define_Global_BaseROMMD5Hash = "d41d8cd98f00b204e9800998ecf8427e"

	!Define_Global_MakerCode = "01"
	!Define_Global_GameCode = "4Q  "
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "Super Punch-Out!!    "
	!Define_Global_ROMLayout = !ROMLayout_LoROM
	!Define_Global_ROMType = !ROMType_ROM_RAM_SRAM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_2MB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_8KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $FE90
	!UnusedNativeModeVector1 = $0000
	!UnusedNativeModeVector2 = $0000
	!NativeModeCOPVector = CODE_0088C4
	!NativeModeBRKVector = CODE_008000
	!NativeModeAbortVector = CODE_008004
	!NativeModeNMIVector = CODE_00A299
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_00A06D
	!UnusedEmulationModeVector1 = $0000
	!UnusedEmulationModeVector2 = $0000
	!EmulationModeCOPVector = CODE_0088C4
	!EmulationModeBRKVector = $0000
	!EmulationModeAbortVector = CODE_008004
	!EmulationModeNMIVector = CODE_008004
	!EmulationModeResetVector = CODE_008005
	!EmulationModeIRQVector = CODE_00A06D
endmacro

macro SPO_LoadROMMap()
	%SPOBank00Macros(!BANK_00, !BANK_00)
	%SPOBank01Macros(!BANK_01, !BANK_01)
	%SPOBank02Macros(!BANK_02, !BANK_02)
	%SPOBank03Macros(!BANK_03, !BANK_03)
	%SPOBank04Macros(!BANK_04, !BANK_04)
	%SPOBank05Macros(!BANK_05, !BANK_05)
	%SPOBank06Macros(!BANK_06, !BANK_06)
	%SPOBank07Macros(!BANK_07, !BANK_07)
	%SPOBank08Macros(!BANK_08, !BANK_08)
	%SPOBank09Macros(!BANK_09, !BANK_09)
	%SPOBank0AMacros(!BANK_0A, !BANK_0A)
	%SPOBank0BMacros(!BANK_0B, !BANK_0B)
	%SPOBank0CMacros(!BANK_0C, !BANK_0C)
	%SPOBank0DMacros(!BANK_0D, !BANK_0D)
	%SPOBank0EMacros(!BANK_0E, !BANK_0E)
	%SPOBank0FMacros(!BANK_0F, !BANK_0F)
	%SPOBank10Macros(!BANK_10, !BANK_10)
	%SPOBank11Macros(!BANK_11, !BANK_11)
	%SPOBank12Macros(!BANK_12, !BANK_12)
	%SPOBank13Macros(!BANK_13, !BANK_13)
	%SPOBank14Macros(!BANK_14, !BANK_14)
	%SPOBank15Macros(!BANK_15, !BANK_15)
	%SPOBank16Macros(!BANK_16, !BANK_16)
	%SPOBank17Macros(!BANK_17, !BANK_17)
	%SPOBank18Macros(!BANK_18, !BANK_18)
	%SPOBank19Macros(!BANK_19, !BANK_19)
	%SPOBank1AMacros(!BANK_1A, !BANK_1A)
	%SPOBank1BMacros(!BANK_1B, !BANK_1B)
	%SPOBank1CMacros(!BANK_1C, !BANK_1C)
	%SPOBank1DMacros(!BANK_1D, !BANK_1D)
	%SPOBank1EMacros(!BANK_1E, !BANK_1E)
	%SPOBank1FMacros(!BANK_1F, !BANK_1F)
	%SPOBank20Macros(!BANK_20, !BANK_20)
	%SPOBank21Macros(!BANK_21, !BANK_21)
	%SPOBank22Macros(!BANK_22, !BANK_22)
	%SPOBank23Macros(!BANK_23, !BANK_23)
	%SPOBank24Macros(!BANK_24, !BANK_24)
	%SPOBank25Macros(!BANK_25, !BANK_25)
	%SPOBank26Macros(!BANK_26, !BANK_26)
	%SPOBank27Macros(!BANK_27, !BANK_27)
	%SPOBank28Macros(!BANK_28, !BANK_28)
	%SPOBank29Macros(!BANK_29, !BANK_29)
	%SPOBank2AMacros(!BANK_2A, !BANK_2A)
	%SPOBank2BMacros(!BANK_2B, !BANK_2B)
	%SPOBank2CMacros(!BANK_2C, !BANK_2C)
	%SPOBank2DMacros(!BANK_2D, !BANK_2D)
	%SPOBank2EMacros(!BANK_2E, !BANK_2E)
	%SPOBank2FMacros(!BANK_2F, !BANK_2F)
	%SPOBank30Macros(!BANK_30, !BANK_30)
	%SPOBank31Macros(!BANK_31, !BANK_31)
	%SPOBank32Macros(!BANK_32, !BANK_32)
	%SPOBank33Macros(!BANK_33, !BANK_33)
	%SPOBank34Macros(!BANK_34, !BANK_34)
	%SPOBank35Macros(!BANK_35, !BANK_35)
	%SPOBank36Macros(!BANK_36, !BANK_36)
	%SPOBank37Macros(!BANK_37, !BANK_37)
	%SPOBank38Macros(!BANK_38, !BANK_38)
	%SPOBank39Macros(!BANK_39, !BANK_39)
	%SPOBank3AMacros(!BANK_3A, !BANK_3A)
	%SPOBank3BMacros(!BANK_3B, !BANK_3B)
	%SPOBank3CMacros(!BANK_3C, !BANK_3C)
	%SPOBank3DMacros(!BANK_3D, !BANK_3D)
	%SPOBank3EMacros(!BANK_3E, !BANK_3E)
	%SPOBank3FMacros(!BANK_3F, !BANK_3F)
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPO_LoadSPC700ROMMap()
%SPC700RoutinePointer(SPO_SPC700Engine_GlobalSampleBank_Ptrs, SPO_SPC700Block0Start, SPO_SPC700Block0End)
%SPC700RoutinePointer(SPO_SPC700Engine_CODE_7E00, SPO_SPC700Block1Start, SPO_SPC700Block1End)
%SPC700RoutinePointer(SPO_CircuitWinOrLoseMusicBank_Main, SPO_SPC700Block2Start, SPO_SPC700Block2End)
%SPC700RoutinePointer(SPO_FighterIntroMusicBank_Main, SPO_SPC700Block3Start, SPO_SPC700Block3End)
%SPC700RoutinePointer(SPO_MainMenuMusicBank_Main, SPO_SPC700Block4Start, SPO_SPC700Block4End)
%SPC700RoutinePointer(SPO_TitleScreenMusicBank_Main, SPO_SPC700Block5Start, SPO_SPC700Block5End)
%SPC700RoutinePointer(SPO_GlobalSampleBank_Main, SPO_SPC700Block6Start, SPO_SPC700Block6End)
%SPC700RoutinePointer(SPO_StandaloneMusic_MinorCircuit, SPO_SPC700Block7Start, SPO_SPC700Block7End)
%SPC700RoutinePointer(SPO_StandaloneMusic_MajorCircuit, SPO_SPC700Block8Start, SPO_SPC700Block8End)
%SPC700RoutinePointer(SPO_StandaloneMusic_WorldCircuit, SPO_SPC700Block9Start, SPO_SPC700Block9End)
%SPC700RoutinePointer(SPO_StandaloneMusic_SpecialCircuit, SPO_SPC700Block10Start, SPO_SPC700Block10End)
%SPC700RoutinePointer(SPO_StandaloneMusic_Credits, SPO_SPC700Block11Start, SPO_SPC700Block11End)
%SPC700RoutinePointer(SPO_StandaloneMusic_Tutorial, SPO_SPC700Block12Start, SPO_SPC700Block12End)
%SPC700RoutinePointer(SPO_FootstepSample_Light, SPO_SPC700Block13Start, SPO_SPC700Block13End)
%SPC700RoutinePointer(SPO_FootstepSample_Medium, SPO_SPC700Block14Start, SPO_SPC700Block14End)
%SPC700RoutinePointer(SPO_FootstepSample_Heavy, SPO_SPC700Block15Start, SPO_SPC700Block15End)
%SPC700RoutinePointer(SPO_HurtSoundSample_GabbyJay, SPO_SPC700Block16Start, SPO_SPC700Block16End)
%SPC700RoutinePointer(SPO_HurtSoundSample_BearHugger, SPO_SPC700Block17Start, SPO_SPC700Block17End)
%SPC700RoutinePointer(SPO_HurtSoundSample_PistonHurricane, SPO_SPC700Block18Start, SPO_SPC700Block18End)
%SPC700RoutinePointer(SPO_HurtSoundSample_BaldBull, SPO_SPC700Block19Start, SPO_SPC700Block19End)
%SPC700RoutinePointer(SPO_HurtSoundSample_DragonChan, SPO_SPC700Block20Start, SPO_SPC700Block20End)
%SPC700RoutinePointer(SPO_HurtSoundSample_MaskedMuscle, SPO_SPC700Block21Start, SPO_SPC700Block21End)
%SPC700RoutinePointer(SPO_HurtSoundSample_NarcisPrince, SPO_SPC700Block22Start, SPO_SPC700Block22End)
%SPC700RoutinePointer(SPO_HurtSoundSample_RickBruiser, SPO_SPC700Block23Start, SPO_SPC700Block23End)
%SPC700RoutinePointer(SPO_HurtSoundSample_Contender, SPO_SPC700Block24Start, SPO_SPC700Block24End)
%SPC700RoutinePointer(SPO_MiscSample_GabbyJayComeOn, SPO_SPC700Block25Start, SPO_SPC700Block25End)
%SPC700RoutinePointer(SPO_MiscSample_Headbutt, SPO_SPC700Block26Start, SPO_SPC700Block26End)
%SPC700RoutinePointer(SPO_MiscSample_Squeak, SPO_SPC700Block27Start, SPO_SPC700Block27End)
%SPC700RoutinePointer(SPO_MiscSample_BullCharge, SPO_SPC700Block28Start, SPO_SPC700Block28End)
%SPC700RoutinePointer(SPO_MiscSample_BobCharlieOoo, SPO_SPC700Block29Start, SPO_SPC700Block29End)
%SPC700RoutinePointer(SPO_MiscSample_DragonChanHiYah, SPO_SPC700Block30Start, SPO_SPC700Block30End)
%SPC700RoutinePointer(SPO_MiscSample_Grabbed, SPO_SPC700Block31Start, SPO_SPC700Block31End)
%SPC700RoutinePointer(SPO_MiscSample_SuperMachoManLariatSwing, SPO_SPC700Block32Start, SPO_SPC700Block32End)
%SPC700RoutinePointer(SPO_MiscSample_BearHuggerStomachPunch, SPO_SPC700Block33Start, SPO_SPC700Block33End)
%SPC700RoutinePointer(SPO_MiscSample_MaskedMuscleSpit, SPO_SPC700Block34Start, SPO_SPC700Block34End)
%SPC700RoutinePointer(SPO_MiscSample_HeikeKageroHairAttack, SPO_SPC700Block35Start, SPO_SPC700Block35End)
%SPC700RoutinePointer(SPO_MiscSample_Leap, SPO_SPC700Block36Start, SPO_SPC700Block36End)
%SPC700RoutinePointer(SPO_MiscSample_MadClownJump, SPO_SPC700Block37Start, SPO_SPC700Block37End)
%SPC700RoutinePointer(SPO_MiscSample_HoyQuarlowHwaah, SPO_SPC700Block38Start, SPO_SPC700Block38End)
%SPC700RoutinePointer(SPO_MiscSample_NickBruiserRapidPunchHurt, SPO_SPC700Block39Start, SPO_SPC700Block39End)

SPO_SPC700Block0Start:
	%SPC700_RT00_SPO_SPC700Engine(!SourceDirectoryOffset_0200)
SPO_SPC700Block0End:
SPO_SPC700Block1Start:
	%SPC700_RT01_SPO_SPC700Engine($7E00)
SPO_SPC700Block1End:
SPO_SPC700Block2Start:
	%SPC700_SPO_CircuitWinOrLoseMusicBank($9F7A)
SPO_SPC700Block2End:
SPO_SPC700Block3Start:
	%SPC700_SPO_FighterIntroMusicBank($9F7A)
SPO_SPC700Block3End:
SPO_SPC700Block4Start:
	%SPC700_SPO_MainMenuMusicBank($9F7A)
SPO_SPC700Block4End:
SPO_SPC700Block5Start:
	%SPC700_SPO_TitleScreenMusicBank($9F7A)
SPO_SPC700Block5End:
SPO_SPC700Block6Start:
	%SPC700_SPO_GlobalSampleBank($123D)
SPO_SPC700Block6End:
SPO_SPC700Block7Start:
	%SPC700_RT00_SPO_StandaloneMusic($A4AF)
SPO_SPC700Block7End:
SPO_SPC700Block8Start:
	%SPC700_RT01_SPO_StandaloneMusic($A4AF)
SPO_SPC700Block8End:
SPO_SPC700Block9Start:
	%SPC700_RT02_SPO_StandaloneMusic($A4AF)
SPO_SPC700Block9End:
SPO_SPC700Block10Start:
	%SPC700_RT03_SPO_StandaloneMusic($A4AF)
SPO_SPC700Block10End:
SPO_SPC700Block11Start:
	%SPC700_RT04_SPO_StandaloneMusic($5CB5)
SPO_SPC700Block11End:
SPO_SPC700Block12Start:
	%SPC700_RT05_SPO_StandaloneMusic($B441)
SPO_SPC700Block12End:
SPO_SPC700Block13Start:
	%SPC700_RT00_SPO_FootstepSample($AA5B)
SPO_SPC700Block13End:
SPO_SPC700Block14Start:
	%SPC700_RT01_SPO_FootstepSample($AA5B)
SPO_SPC700Block14End:
SPO_SPC700Block15Start:
	%SPC700_RT02_SPO_FootstepSample($AA5B)
SPO_SPC700Block15End:
SPO_SPC700Block16Start:
	%SPC700_RT00_SPO_HurtSoundSample($AA73)
SPO_SPC700Block16End:
SPO_SPC700Block17Start:
	%SPC700_RT01_SPO_HurtSoundSample($AA73)
SPO_SPC700Block17End:
SPO_SPC700Block18Start:
	%SPC700_RT02_SPO_HurtSoundSample($AA73)
SPO_SPC700Block18End:
SPO_SPC700Block19Start:
	%SPC700_RT03_SPO_HurtSoundSample($AA73)
SPO_SPC700Block19End:
SPO_SPC700Block20Start:
	%SPC700_RT04_SPO_HurtSoundSample($AA73)
SPO_SPC700Block20End:
SPO_SPC700Block21Start:
	%SPC700_RT05_SPO_HurtSoundSample($AA73)
SPO_SPC700Block21End:
SPO_SPC700Block22Start:
	%SPC700_RT06_SPO_HurtSoundSample($AA73)
SPO_SPC700Block22End:
SPO_SPC700Block23Start:
	%SPC700_RT07_SPO_HurtSoundSample($AA87)
SPO_SPC700Block23End:
SPO_SPC700Block24Start:
	%SPC700_RT08_SPO_HurtSoundSample($FBAF)
SPO_SPC700Block24End:
SPO_SPC700Block25Start:
	%SPC700_RT00_SPO_MiscSample($B1DB)
SPO_SPC700Block25End:
SPO_SPC700Block26Start:
	%SPC700_RT01_SPO_MiscSample($B1DB)
SPO_SPC700Block26End:
SPO_SPC700Block27Start:
	%SPC700_RT02_SPO_MiscSample($B1DB)
SPO_SPC700Block27End:
SPO_SPC700Block28Start:
	%SPC700_RT03_SPO_MiscSample($B1DB)
SPO_SPC700Block28End:
SPO_SPC700Block29Start:
	%SPC700_RT04_SPO_MiscSample($B1DB)
SPO_SPC700Block29End:
SPO_SPC700Block30Start:
	%SPC700_RT05_SPO_MiscSample($B1DB)
SPO_SPC700Block30End:
SPO_SPC700Block31Start:
	%SPC700_RT06_SPO_MiscSample($B1DB)
SPO_SPC700Block31End:
SPO_SPC700Block32Start:
	%SPC700_RT07_SPO_MiscSample($B1DB)
SPO_SPC700Block32End:
SPO_SPC700Block33Start:
	%SPC700_RT08_SPO_MiscSample($B1EC)
SPO_SPC700Block33End:
SPO_SPC700Block34Start:
	%SPC700_RT09_SPO_MiscSample($B1EC)
SPO_SPC700Block34End:
SPO_SPC700Block35Start:
	%SPC700_RT10_SPO_MiscSample($AA73)
SPO_SPC700Block35End:
SPO_SPC700Block36Start:
	%SPC700_RT11_SPO_MiscSample($AA73)
SPO_SPC700Block36End:
SPO_SPC700Block37Start:
	%SPC700_RT12_SPO_MiscSample($BDA2)
SPO_SPC700Block37End:
SPO_SPC700Block38Start:
	%SPC700_RT13_SPO_MiscSample($AA87)
SPO_SPC700Block38End:
SPO_SPC700Block39Start:
	%SPC700_RT14_SPO_MiscSample($AA87)
SPO_SPC700Block39End:
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPO_LoadSuperFXROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPO_LoadMSU1ROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################
