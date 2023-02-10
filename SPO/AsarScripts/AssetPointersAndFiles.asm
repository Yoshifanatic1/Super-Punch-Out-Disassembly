; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!SPO_U = $0001
!SPO_J = $0002
!SPO_E = $0004

check bankcross off

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl CompressedTilemapsStart,(CompressedTilemapsEnd-CompressedTilemapsStart)/$0C
	dl PalettesStart,(PalettesEnd-PalettesStart)/$0C
	dl GarbageDataStart,(GarbageDataEnd-GarbageDataStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $07E500,$07E5C0,GFX_Sprite_DragonChanHeikeKageroIndex9E,GFX_Sprite_DragonChanHeikeKageroIndex9EEnd
	dl $07E5C0,$07EB60,GFX_Sprite_DragonChanHeikeKageroIndex9F,GFX_Sprite_DragonChanHeikeKageroIndex9FEnd
	dl $07EB60,$07EF40,GFX_Sprite_PistonHurricaneAranRyanIndex7F,GFX_Sprite_PistonHurricaneAranRyanIndex7FEnd
	dl $07EF40,$07F240,GFX_Sprite_MaskedMuscleSuperMachoManIndex90,GFX_Sprite_MaskedMuscleSuperMachoManIndex90End
	dl $07F240,$07F620,GFX_Sprite_BaldBullMrSandmanIndex70,GFX_Sprite_BaldBullMrSandmanIndex70End
	dl $07F620,$07F9A0,GFX_Sprite_PistonHurricaneAranRyanIndex49,GFX_Sprite_PistonHurricaneAranRyanIndex49End
	dl $07F9A0,$088000,GFX_Sprite_PistonHurricaneAranRyanIndex4A,GFX_Sprite_PistonHurricaneAranRyanIndex4AEnd
	dl $08DA00,$098000,GFX_Player_BoxingGloves,GFX_Player_BoxingGlovesEnd
	dl $0DB7D8,$0DB9D8,GFX_Sprite_GabbyJayIcon,GFX_Sprite_GabbyJayIconEnd
	dl $0DBA3A,$0DBC3A,GFX_Sprite_BearHuggerIcon,GFX_Sprite_BearHuggerIconEnd
	dl $0DBC9C,$0DBE9C,GFX_Sprite_PistonHurricaneIcon,GFX_Sprite_PistonHurricaneIconEnd
	dl $0DBEFE,$0DC0FE,GFX_Sprite_BaldBullIcon,GFX_Sprite_BaldBullIconEnd
	dl $0DC180,$0DC380,GFX_Sprite_BobCharlieIcon,GFX_Sprite_BobCharlieIconEnd
	dl $0DC3E2,$0DC5E2,GFX_Sprite_DragonChanIcon,GFX_Sprite_DragonChanIconEnd
	dl $0DC644,$0DC844,GFX_Sprite_MaskedMuscleIcon,GFX_Sprite_MaskedMuscleIconEnd
	dl $0DC8C6,$0DCAC6,GFX_Sprite_MrSandmanIcon,GFX_Sprite_MrSandmanIconEnd
	dl $0DCB28,$0DCD28,GFX_Sprite_AranRyanIcon,GFX_Sprite_AranRyanIconEnd
	dl $0DCD8A,$0DCF8A,GFX_Sprite_HeikeKageroIcon,GFX_Sprite_HeikeKageroIconEnd
	dl $0DCFEC,$0DD1EC,GFX_Sprite_MadClownIcon,GFX_Sprite_MadClownIconEnd
	dl $0DD26E,$0DD46E,GFX_Sprite_SuperMachoManIcon,GFX_Sprite_SuperMachoManIconEnd
	dl $0DD4D0,$0DD6D0,GFX_Sprite_NarcisPrinceIcon,GFX_Sprite_NarcisPrinceIconEnd
	dl $0DD732,$0DD932,GFX_Sprite_HoyQuarlowIcon,GFX_Sprite_HoyQuarlowIconEnd
	dl $0DD994,$0DDB94,GFX_Sprite_RickBruiserIcon,GFX_Sprite_RickBruiserIconEnd
	dl $0DDC56,$0DDE56,GFX_Sprite_NickBruiserIcon,GFX_Sprite_NickBruiserIconEnd
	dl $0DDF18,$0DE118,GFX_Sprite_ContenderIcon,GFX_Sprite_ContenderIconEnd
	dl $0FEF80,$0FF900,GFX_Sprite_RickBruiserNickBruiserIndex6A,GFX_Sprite_RickBruiserNickBruiserIndex6AEnd
	dl $0FF900,$108000,GFX_Sprite_RickBruiserNickBruiserIndex6B,GFX_Sprite_RickBruiserNickBruiserIndex6BEnd
	dl $12DAC0,$12E620,GFX_Layer1_ContenderIndex2F,GFX_Layer1_ContenderIndex2FEnd
	dl $12E620,$12E9E0,GFX_Layer1_ContenderIndex30,GFX_Layer1_ContenderIndex30End
	dl $12E9E0,$12ECA0,GFX_Layer1_ContenderIndex31,GFX_Layer1_ContenderIndex31End
	dl $12ECA0,$12F520,GFX_Layer1_ContenderIndex32,GFX_Layer1_ContenderIndex32End
	dl $12F520,$12FB00,GFX_Layer1_ContenderIndex33,GFX_Layer1_ContenderIndex33End
	dl $12FB00,$138000,GFX_Layer1_ContenderIndex34,GFX_Layer1_ContenderIndex34End
	dl $13D960,$13DA40,GFX_Sprite_GabbyJayBobCharlieIndex4E,GFX_Sprite_GabbyJayBobCharlieIndex4EEnd
	dl $13DA40,$13DE20,GFX_Sprite_RickBruiserNickBruiserIndex41,GFX_Sprite_RickBruiserNickBruiserIndex41End
	dl $13DE20,$13E4A0,GFX_Sprite_RickBruiserNickBruiserIndex42,GFX_Sprite_RickBruiserNickBruiserIndex42End
	dl $13E4A0,$13ED40,GFX_Sprite_RickBruiserNickBruiserIndex43,GFX_Sprite_RickBruiserNickBruiserIndex43End
	dl $13ED40,$13EFC0,GFX_Sprite_DragonChanHeikeKageroIndex45,GFX_Sprite_DragonChanHeikeKageroIndex45End
	dl $13EFC0,$13F680,GFX_Sprite_DragonChanHeikeKageroIndex46,GFX_Sprite_DragonChanHeikeKageroIndex46End
	dl $13F680,$13F7E0,GFX_Sprite_MaskedMuscleSuperMachoManIndex03,GFX_Sprite_MaskedMuscleSuperMachoManIndex03End
	dl $13F7E0,$148000,GFX_Sprite_MaskedMuscleSuperMachoManIndex04,GFX_Sprite_MaskedMuscleSuperMachoManIndex04End
	dl $14DD40,$14E120,GFX_Sprite_RickBruiserNickBruiserIndex12,GFX_Sprite_RickBruiserNickBruiserIndex12End
	dl $14E120,$14E9E0,GFX_Sprite_RickBruiserNickBruiserIndex13,GFX_Sprite_RickBruiserNickBruiserIndex13End
	dl $14E9E0,$14F2A0,GFX_Sprite_RickBruiserNickBruiserIndex14,GFX_Sprite_RickBruiserNickBruiserIndex14End
	dl $14F2A0,$14F720,GFX_Sprite_RickBruiserNickBruiserIndex15,GFX_Sprite_RickBruiserNickBruiserIndex15End
	dl $14F720,$158000,GFX_Sprite_RickBruiserNickBruiserIndex16,GFX_Sprite_RickBruiserNickBruiserIndex16End
	dl $15A1C0,$15A760,GFX_Sprite_RickBruiserNickBruiserIndex0A,GFX_Sprite_RickBruiserNickBruiserIndex0AEnd
	dl $15A760,$15AF60,GFX_Sprite_RickBruiserNickBruiserIndex0B,GFX_Sprite_RickBruiserNickBruiserIndex0BEnd
	dl $15AF60,$15B5A0,GFX_Sprite_RickBruiserNickBruiserIndex0C,GFX_Sprite_RickBruiserNickBruiserIndex0CEnd
	dl $15B5A0,$15B8E0,GFX_Sprite_RickBruiserNickBruiserIndex4B,GFX_Sprite_RickBruiserNickBruiserIndex4BEnd
	dl $15B8E0,$15C1A0,GFX_Sprite_RickBruiserNickBruiserIndex4C,GFX_Sprite_RickBruiserNickBruiserIndex4CEnd
	dl $15C1A0,$15CC00,GFX_Sprite_RickBruiserNickBruiserIndex4D,GFX_Sprite_RickBruiserNickBruiserIndex4DEnd
	dl $15CC00,$15D360,GFX_Sprite_RickBruiserNickBruiserIndex55,GFX_Sprite_RickBruiserNickBruiserIndex55End
	dl $15D360,$15DB40,GFX_Sprite_RickBruiserNickBruiserIndex56,GFX_Sprite_RickBruiserNickBruiserIndex56End
	dl $15DB40,$15DEE0,GFX_Sprite_RickBruiserNickBruiserIndex6C,GFX_Sprite_RickBruiserNickBruiserIndex6CEnd
	dl $15DEE0,$15E660,GFX_Sprite_RickBruiserNickBruiserIndex6D,GFX_Sprite_RickBruiserNickBruiserIndex6DEnd
	dl $15E660,$15EF20,GFX_Sprite_RickBruiserNickBruiserIndex6E,GFX_Sprite_RickBruiserNickBruiserIndex6EEnd
	dl $15EF20,$15F1E0,GFX_Sprite_RickBruiserNickBruiserIndex74,GFX_Sprite_RickBruiserNickBruiserIndex74End
	dl $15F1E0,$15F9C0,GFX_Sprite_RickBruiserNickBruiserIndex75,GFX_Sprite_RickBruiserNickBruiserIndex75End
	dl $15F9C0,$168000,GFX_Sprite_RickBruiserNickBruiserIndex76,GFX_Sprite_RickBruiserNickBruiserIndex76End
	dl $16DEE0,$16E240,GFX_Sprite_RickBruiserNickBruiserIndex50,GFX_Sprite_RickBruiserNickBruiserIndex50End
	dl $16E240,$16E940,GFX_Sprite_RickBruiserNickBruiserIndex51,GFX_Sprite_RickBruiserNickBruiserIndex51End
	dl $16E940,$16F100,GFX_Sprite_RickBruiserNickBruiserIndex52,GFX_Sprite_RickBruiserNickBruiserIndex52End
	dl $16F100,$16F400,GFX_Sprite_RickBruiserNickBruiserIndex58,GFX_Sprite_RickBruiserNickBruiserIndex58End
	dl $16F400,$16F880,GFX_Sprite_RickBruiserNickBruiserIndex08,GFX_Sprite_RickBruiserNickBruiserIndex08End
	dl $16F880,$178000,GFX_Sprite_RickBruiserNickBruiserIndex09,GFX_Sprite_RickBruiserNickBruiserIndex09End
	dl $17DE80,$17E160,GFX_Sprite_RickBruiserNickBruiserIndex20,GFX_Sprite_RickBruiserNickBruiserIndex20End
	dl $17E160,$17E8A0,GFX_Sprite_RickBruiserNickBruiserIndex21,GFX_Sprite_RickBruiserNickBruiserIndex21End
	dl $17E8A0,$17ED00,GFX_Sprite_RickBruiserNickBruiserIndex22,GFX_Sprite_RickBruiserNickBruiserIndex22End
	dl $17ED00,$17F020,GFX_Sprite_RickBruiserNickBruiserIndex71,GFX_Sprite_RickBruiserNickBruiserIndex71End
	dl $17F020,$17F7A0,GFX_Sprite_RickBruiserNickBruiserIndex72,GFX_Sprite_RickBruiserNickBruiserIndex72End
	dl $17F7A0,$188000,GFX_Sprite_RickBruiserNickBruiserIndex73,GFX_Sprite_RickBruiserNickBruiserIndex73End
	dl $188000,$188080,GFX_Sprite_HoyQuarlowIndex25,GFX_Sprite_HoyQuarlowIndex25End
	dl $188080,$188A20,GFX_Sprite_HoyQuarlowIndex26,GFX_Sprite_HoyQuarlowIndex26End
	dl $188A20,$188FC0,GFX_Sprite_HoyQuarlowIndex27,GFX_Sprite_HoyQuarlowIndex27End
	dl $188FC0,$1893E0,GFX_Sprite_HoyQuarlowIndex46,GFX_Sprite_HoyQuarlowIndex46End
	dl $1893E0,$189C40,GFX_Sprite_HoyQuarlowIndex47,GFX_Sprite_HoyQuarlowIndex47End
	dl $189C40,$189EE0,GFX_Sprite_HoyQuarlowIndex48,GFX_Sprite_HoyQuarlowIndex48End
	dl $189EE0,$18A380,GFX_Sprite_HoyQuarlowIndex5F,GFX_Sprite_HoyQuarlowIndex5FEnd
	dl $18A380,$18AB40,GFX_Sprite_HoyQuarlowIndex60,GFX_Sprite_HoyQuarlowIndex60End
	dl $18AB40,$18AFA0,GFX_Sprite_HoyQuarlowIndex61,GFX_Sprite_HoyQuarlowIndex61End
	dl $18AFA0,$18B4A0,GFX_Sprite_HoyQuarlowIndex6E,GFX_Sprite_HoyQuarlowIndex6EEnd
	dl $18B4A0,$18BCE0,GFX_Sprite_HoyQuarlowIndex6F,GFX_Sprite_HoyQuarlowIndex6FEnd
	dl $18BCE0,$18C100,GFX_Sprite_HoyQuarlowIndex70,GFX_Sprite_HoyQuarlowIndex70End
	dl $18C100,$18C580,GFX_Sprite_RickBruiserNickBruiserIndex00,GFX_Sprite_RickBruiserNickBruiserIndex00End
	dl $18C580,$18CEC0,GFX_Sprite_RickBruiserNickBruiserIndex01,GFX_Sprite_RickBruiserNickBruiserIndex01End
	dl $18CEC0,$18D700,GFX_Sprite_RickBruiserNickBruiserIndex02,GFX_Sprite_RickBruiserNickBruiserIndex02End
	dl $18D700,$18DAE0,GFX_Sprite_RickBruiserNickBruiserIndex0F,GFX_Sprite_RickBruiserNickBruiserIndex0FEnd
	dl $18DAE0,$18E240,GFX_Sprite_RickBruiserNickBruiserIndex10,GFX_Sprite_RickBruiserNickBruiserIndex10End
	dl $18E240,$18E8E0,GFX_Sprite_RickBruiserNickBruiserIndex11,GFX_Sprite_RickBruiserNickBruiserIndex11End
	dl $18E8E0,$18ECA0,GFX_Sprite_RickBruiserNickBruiserIndex2C,GFX_Sprite_RickBruiserNickBruiserIndex2CEnd
	dl $18ECA0,$18F480,GFX_Sprite_RickBruiserNickBruiserIndex2D,GFX_Sprite_RickBruiserNickBruiserIndex2DEnd
	dl $18F480,$18F860,GFX_Sprite_RickBruiserNickBruiserIndex2E,GFX_Sprite_RickBruiserNickBruiserIndex2EEnd
	dl $18F860,$198000,GFX_Sprite_RickBruiserNickBruiserIndex2F,GFX_Sprite_RickBruiserNickBruiserIndex2FEnd
	dl $19E920,$19ED00,GFX_Sprite_HoyQuarlowIndex16,GFX_Sprite_HoyQuarlowIndex16End
	dl $19ED00,$19F7A0,GFX_Sprite_HoyQuarlowIndex17,GFX_Sprite_HoyQuarlowIndex17End
	dl $19F7A0,$1A8000,GFX_Sprite_HoyQuarlowIndex18,GFX_Sprite_HoyQuarlowIndex18End
	dl $1AE760,$1AEB20,GFX_Sprite_HoyQuarlowIndex50,GFX_Sprite_HoyQuarlowIndex50End
	dl $1AEB20,$1AEEA0,GFX_Sprite_HoyQuarlowIndex71,GFX_Sprite_HoyQuarlowIndex71End
	dl $1AEEA0,$1AF860,GFX_Sprite_HoyQuarlowIndex72,GFX_Sprite_HoyQuarlowIndex72End
	dl $1AF860,$1B8000,GFX_Sprite_HoyQuarlowIndex73,GFX_Sprite_HoyQuarlowIndex73End
	dl $1BE9A0,$1BEC40,GFX_Sprite_NarcisPrinceIndex0D,GFX_Sprite_NarcisPrinceIndex0DEnd
	dl $1BEC40,$1BEEC0,GFX_Sprite_NarcisPrinceIndex60,GFX_Sprite_NarcisPrinceIndex60End
	dl $1BEEC0,$1BF340,GFX_Sprite_HoyQuarlowIndex5C,GFX_Sprite_HoyQuarlowIndex5CEnd
	dl $1BF340,$1BFB00,GFX_Sprite_HoyQuarlowIndex5D,GFX_Sprite_HoyQuarlowIndex5DEnd
	dl $1BFB00,$1C8000,GFX_Sprite_HoyQuarlowIndex5E,GFX_Sprite_HoyQuarlowIndex5EEnd
	dl $1C8000,$1C8280,GFX_Sprite_HoyQuarlowIndex05,GFX_Sprite_HoyQuarlowIndex05End
	dl $1C8280,$1C8C00,GFX_Sprite_HoyQuarlowIndex06,GFX_Sprite_HoyQuarlowIndex06End
	dl $1C8C00,$1C9480,GFX_Sprite_HoyQuarlowIndex07,GFX_Sprite_HoyQuarlowIndex07End
	dl $1C9480,$1C98C0,GFX_Sprite_HoyQuarlowIndex0A,GFX_Sprite_HoyQuarlowIndex0AEnd
	dl $1C98C0,$1CA120,GFX_Sprite_HoyQuarlowIndex0B,GFX_Sprite_HoyQuarlowIndex0BEnd
	dl $1CA120,$1CA420,GFX_Sprite_HoyQuarlowIndex0C,GFX_Sprite_HoyQuarlowIndex0CEnd
	dl $1CA420,$1CABC0,GFX_Sprite_HoyQuarlowIndex0D,GFX_Sprite_HoyQuarlowIndex0DEnd
	dl $1CABC0,$1CB4A0,GFX_Sprite_HoyQuarlowIndex0E,GFX_Sprite_HoyQuarlowIndex0EEnd
	dl $1CB4A0,$1CB920,GFX_Sprite_HoyQuarlowIndex0F,GFX_Sprite_HoyQuarlowIndex0FEnd
	dl $1CB920,$1CB960,GFX_Sprite_HoyQuarlowIndex19,GFX_Sprite_HoyQuarlowIndex19End
	dl $1CB960,$1CC240,GFX_Sprite_HoyQuarlowIndex1A,GFX_Sprite_HoyQuarlowIndex1AEnd
	dl $1CC240,$1CC8E0,GFX_Sprite_HoyQuarlowIndex1B,GFX_Sprite_HoyQuarlowIndex1BEnd
	dl $1CC8E0,$1CCC80,GFX_Sprite_HoyQuarlowIndex43,GFX_Sprite_HoyQuarlowIndex43End
	dl $1CCC80,$1CD3A0,GFX_Sprite_HoyQuarlowIndex44,GFX_Sprite_HoyQuarlowIndex44End
	dl $1CD3A0,$1CD980,GFX_Sprite_HoyQuarlowIndex45,GFX_Sprite_HoyQuarlowIndex45End
	dl $1CD980,$1CDCA0,GFX_Sprite_HoyQuarlowIndex4C,GFX_Sprite_HoyQuarlowIndex4CEnd
	dl $1CDCA0,$1CE060,GFX_Sprite_HoyQuarlowIndex4D,GFX_Sprite_HoyQuarlowIndex4DEnd
	dl $1CE060,$1CE980,GFX_Sprite_HoyQuarlowIndex4E,GFX_Sprite_HoyQuarlowIndex4EEnd
	dl $1CE980,$1CF100,GFX_Sprite_HoyQuarlowIndex4F,GFX_Sprite_HoyQuarlowIndex4FEnd
	dl $1CF100,$1CF4A0,GFX_Sprite_HoyQuarlowIndex62,GFX_Sprite_HoyQuarlowIndex62End
	dl $1CF4A0,$1CFC20,GFX_Sprite_HoyQuarlowIndex63,GFX_Sprite_HoyQuarlowIndex63End
	dl $1CFC20,$1D8000,GFX_Sprite_HoyQuarlowIndex64,GFX_Sprite_HoyQuarlowIndex64End
	dl $1DE5A0,$1DE880,GFX_Sprite_NarcisPrinceIndex03,GFX_Sprite_NarcisPrinceIndex03End
	dl $1DE880,$1DEE60,GFX_Sprite_NarcisPrinceIndex04,GFX_Sprite_NarcisPrinceIndex04End
	dl $1DEE60,$1DEEA0,GFX_Sprite_NarcisPrinceIndex2A,GFX_Sprite_NarcisPrinceIndex2AEnd
	dl $1DEEA0,$1DF4A0,GFX_Sprite_NarcisPrinceIndex2B,GFX_Sprite_NarcisPrinceIndex2BEnd
	dl $1DF4A0,$1DF720,GFX_Sprite_NarcisPrinceIndex2C,GFX_Sprite_NarcisPrinceIndex2CEnd
	dl $1DF720,$1DF9A0,GFX_Sprite_NarcisPrinceIndex39,GFX_Sprite_NarcisPrinceIndex39End
	dl $1DF9A0,$1E8000,GFX_Sprite_NarcisPrinceIndex3A,GFX_Sprite_NarcisPrinceIndex3AEnd
	dl $1EE2A0,$1EE540,GFX_Sprite_NarcisPrinceIndex09,GFX_Sprite_NarcisPrinceIndex09End
	dl $1EE540,$1EEAC0,GFX_Sprite_NarcisPrinceIndex0A,GFX_Sprite_NarcisPrinceIndex0AEnd
	dl $1EEAC0,$1EEDE0,GFX_Sprite_NarcisPrinceIndex17,GFX_Sprite_NarcisPrinceIndex17End
	dl $1EEDE0,$1EF0E0,GFX_Sprite_NarcisPrinceIndex5F,GFX_Sprite_NarcisPrinceIndex5FEnd
	dl $1EF0E0,$1EF380,GFX_Sprite_NarcisPrinceIndex64,GFX_Sprite_NarcisPrinceIndex64End
	dl $1EF380,$1EF660,GFX_Sprite_NarcisPrinceIndex65,GFX_Sprite_NarcisPrinceIndex65End
	dl $1EF660,$1EF980,GFX_Sprite_NarcisPrinceIndex63,GFX_Sprite_NarcisPrinceIndex63End
	dl $1EF980,$1EFCA0,GFX_Sprite_NarcisPrinceIndex68,GFX_Sprite_NarcisPrinceIndex68End
	dl $1EFCA0,$1F8000,GFX_Sprite_NarcisPrinceIndex71,GFX_Sprite_NarcisPrinceIndex71End
	dl $1FE180,$1FE420,GFX_Sprite_NarcisPrinceIndex0B,GFX_Sprite_NarcisPrinceIndex0BEnd
	dl $1FE420,$1FE980,GFX_Sprite_NarcisPrinceIndex0C,GFX_Sprite_NarcisPrinceIndex0CEnd
	dl $1FE980,$1FE9E0,GFX_Sprite_NarcisPrinceIndex27,GFX_Sprite_NarcisPrinceIndex27End
	dl $1FE9E0,$1FF0A0,GFX_Sprite_NarcisPrinceIndex28,GFX_Sprite_NarcisPrinceIndex28End
	dl $1FF0A0,$1FF200,GFX_Sprite_NarcisPrinceIndex29,GFX_Sprite_NarcisPrinceIndex29End
	dl $1FF200,$1FF4C0,GFX_Sprite_NarcisPrinceIndex5B,GFX_Sprite_NarcisPrinceIndex5BEnd
	dl $1FF4C0,$1FF7A0,GFX_Sprite_NarcisPrinceIndex61,GFX_Sprite_NarcisPrinceIndex61End
	dl $1FF7A0,$1FFA80,GFX_Sprite_NarcisPrinceIndex62,GFX_Sprite_NarcisPrinceIndex62End
	dl $1FFA80,$1FFD40,GFX_Sprite_NarcisPrinceIndex66,GFX_Sprite_NarcisPrinceIndex66End
	dl $1FFD40,$208000,GFX_Sprite_NarcisPrinceIndex69,GFX_Sprite_NarcisPrinceIndex69End
	dl $208000,$2082A0,GFX_Sprite_MaskedMuscleSuperMachoManIndex4D,GFX_Sprite_MaskedMuscleSuperMachoManIndex4DEnd
	dl $2082A0,$208960,GFX_Sprite_MaskedMuscleSuperMachoManIndex4E,GFX_Sprite_MaskedMuscleSuperMachoManIndex4EEnd
	dl $208960,$208BC0,GFX_Sprite_MaskedMuscleSuperMachoManIndex51,GFX_Sprite_MaskedMuscleSuperMachoManIndex51End
	dl $208BC0,$2092C0,GFX_Sprite_MaskedMuscleSuperMachoManIndex52,GFX_Sprite_MaskedMuscleSuperMachoManIndex52End
	dl $2092C0,$2093E0,GFX_Sprite_MaskedMuscleSuperMachoManIndex53,GFX_Sprite_MaskedMuscleSuperMachoManIndex53End
	dl $2093E0,$209760,GFX_Sprite_MaskedMuscleSuperMachoManIndex54,GFX_Sprite_MaskedMuscleSuperMachoManIndex54End
	dl $209760,$209D00,GFX_Sprite_MaskedMuscleSuperMachoManIndex55,GFX_Sprite_MaskedMuscleSuperMachoManIndex55End
	dl $209D00,$20A300,GFX_Sprite_MaskedMuscleSuperMachoManIndex56,GFX_Sprite_MaskedMuscleSuperMachoManIndex56End
	dl $20A300,$20A540,GFX_Sprite_MaskedMuscleSuperMachoManIndex5A,GFX_Sprite_MaskedMuscleSuperMachoManIndex5AEnd
	dl $20A540,$20ACA0,GFX_Sprite_MaskedMuscleSuperMachoManIndex5B,GFX_Sprite_MaskedMuscleSuperMachoManIndex5BEnd
	dl $20ACA0,$20B2C0,GFX_Sprite_MaskedMuscleSuperMachoManIndex5C,GFX_Sprite_MaskedMuscleSuperMachoManIndex5CEnd
	dl $20B2C0,$20B640,GFX_Sprite_MaskedMuscleSuperMachoManIndex64,GFX_Sprite_MaskedMuscleSuperMachoManIndex64End
	dl $20B640,$20BCC0,GFX_Sprite_MaskedMuscleSuperMachoManIndex65,GFX_Sprite_MaskedMuscleSuperMachoManIndex65End
	dl $20BCC0,$20C0A0,GFX_Sprite_MaskedMuscleSuperMachoManIndex66,GFX_Sprite_MaskedMuscleSuperMachoManIndex66End
	dl $20C0A0,$20C780,GFX_Sprite_MaskedMuscleSuperMachoManIndex67,GFX_Sprite_MaskedMuscleSuperMachoManIndex67End
	dl $20C780,$20CA00,GFX_Sprite_MaskedMuscleSuperMachoManIndex72,GFX_Sprite_MaskedMuscleSuperMachoManIndex72End
	dl $20CA00,$20CF20,GFX_Sprite_MaskedMuscleSuperMachoManIndex73,GFX_Sprite_MaskedMuscleSuperMachoManIndex73End
	dl $20CF20,$20D180,GFX_Sprite_MaskedMuscleSuperMachoManIndex74,GFX_Sprite_MaskedMuscleSuperMachoManIndex74End
	dl $20D180,$20D780,GFX_Sprite_MaskedMuscleSuperMachoManIndex75,GFX_Sprite_MaskedMuscleSuperMachoManIndex75End
	dl $20D780,$20DA20,GFX_Sprite_MaskedMuscleSuperMachoManIndex76,GFX_Sprite_MaskedMuscleSuperMachoManIndex76End
	dl $20DA20,$20E0E0,GFX_Sprite_MaskedMuscleSuperMachoManIndex77,GFX_Sprite_MaskedMuscleSuperMachoManIndex77End
	dl $20E0E0,$20E380,GFX_Sprite_MaskedMuscleSuperMachoManIndex78,GFX_Sprite_MaskedMuscleSuperMachoManIndex78End
	dl $20E380,$20E9A0,GFX_Sprite_MaskedMuscleSuperMachoManIndex79,GFX_Sprite_MaskedMuscleSuperMachoManIndex79End
	dl $20E9A0,$20EC40,GFX_Sprite_MaskedMuscleSuperMachoManIndex7C,GFX_Sprite_MaskedMuscleSuperMachoManIndex7CEnd
	dl $20EC40,$20F1E0,GFX_Sprite_MaskedMuscleSuperMachoManIndex7D,GFX_Sprite_MaskedMuscleSuperMachoManIndex7DEnd
	dl $20F1E0,$20F4A0,GFX_Sprite_MaskedMuscleSuperMachoManIndex81,GFX_Sprite_MaskedMuscleSuperMachoManIndex81End
	dl $20F4A0,$20FAE0,GFX_Sprite_MaskedMuscleSuperMachoManIndex82,GFX_Sprite_MaskedMuscleSuperMachoManIndex82End
	dl $20FAE0,$218000,GFX_Sprite_MaskedMuscleSuperMachoManIndex83,GFX_Sprite_MaskedMuscleSuperMachoManIndex83End
	dl $238000,$2383A0,GFX_Sprite_BearHuggerMadClownIndex2B,GFX_Sprite_BearHuggerMadClownIndex2BEnd
	dl $2383A0,$238E00,GFX_Sprite_BearHuggerMadClownIndex2C,GFX_Sprite_BearHuggerMadClownIndex2CEnd
	dl $238E00,$239B20,GFX_Sprite_BearHuggerMadClownIndex2D,GFX_Sprite_BearHuggerMadClownIndex2DEnd
	dl $239B20,$239EE0,GFX_Sprite_BearHuggerMadClownIndex2E,GFX_Sprite_BearHuggerMadClownIndex2EEnd
	dl $239EE0,$23A840,GFX_Sprite_BearHuggerMadClownIndex2F,GFX_Sprite_BearHuggerMadClownIndex2FEnd
	dl $23A840,$23B620,GFX_Sprite_BearHuggerMadClownIndex30,GFX_Sprite_BearHuggerMadClownIndex30End
	dl $23B620,$23BA00,GFX_Sprite_BearHuggerMadClownIndex31,GFX_Sprite_BearHuggerMadClownIndex31End
	dl $23BA00,$23C420,GFX_Sprite_BearHuggerMadClownIndex34,GFX_Sprite_BearHuggerMadClownIndex34End
	dl $23C420,$23C7E0,GFX_Sprite_BearHuggerMadClownIndex3A,GFX_Sprite_BearHuggerMadClownIndex3AEnd
	dl $23C7E0,$23D160,GFX_Sprite_BearHuggerMadClownIndex3B,GFX_Sprite_BearHuggerMadClownIndex3BEnd
	dl $23D160,$23D4E0,GFX_Sprite_BearHuggerMadClownIndex43,GFX_Sprite_BearHuggerMadClownIndex43End
	dl $23D4E0,$23DAC0,GFX_Sprite_BearHuggerMadClownIndex44,GFX_Sprite_BearHuggerMadClownIndex44End
	dl $23DAC0,$23E7C0,GFX_Sprite_BearHuggerMadClownIndex4A,GFX_Sprite_BearHuggerMadClownIndex4AEnd
	dl $23E7C0,$23F200,GFX_Sprite_BearHuggerMadClownIndex56,GFX_Sprite_BearHuggerMadClownIndex56End
	dl $23F200,$23F5C0,GFX_Sprite_BearHuggerMadClownIndex59,GFX_Sprite_BearHuggerMadClownIndex59End
	dl $23F5C0,$248000,GFX_Sprite_BearHuggerMadClownIndex5A,GFX_Sprite_BearHuggerMadClownIndex5AEnd
	dl $248000,$248340,GFX_Sprite_BearHuggerMadClownIndex36,GFX_Sprite_BearHuggerMadClownIndex36End
	dl $248340,$248AC0,GFX_Sprite_BearHuggerMadClownIndex37,GFX_Sprite_BearHuggerMadClownIndex37End
	dl $248AC0,$248EA0,GFX_Sprite_BearHuggerMadClownIndex38,GFX_Sprite_BearHuggerMadClownIndex38End
	dl $248EA0,$2496A0,GFX_Sprite_BearHuggerMadClownIndex39,GFX_Sprite_BearHuggerMadClownIndex39End
	dl $2496A0,$24A300,GFX_Sprite_BearHuggerMadClownIndex3E,GFX_Sprite_BearHuggerMadClownIndex3EEnd
	dl $24A300,$24ADE0,GFX_Sprite_BearHuggerMadClownIndex3F,GFX_Sprite_BearHuggerMadClownIndex3FEnd
	dl $24ADE0,$24B040,GFX_Sprite_BearHuggerMadClownIndex40,GFX_Sprite_BearHuggerMadClownIndex40End
	dl $24B040,$24BA00,GFX_Sprite_BearHuggerMadClownIndex41,GFX_Sprite_BearHuggerMadClownIndex41End
	dl $24BA00,$24C5E0,GFX_Sprite_BearHuggerMadClownIndex42,GFX_Sprite_BearHuggerMadClownIndex42End
	dl $24C5E0,$24D280,GFX_Sprite_BearHuggerMadClownIndex47,GFX_Sprite_BearHuggerMadClownIndex47End
	dl $24D280,$24DD40,GFX_Sprite_BearHuggerMadClownIndex4B,GFX_Sprite_BearHuggerMadClownIndex4BEnd
	dl $24DD40,$24E960,GFX_Sprite_BearHuggerMadClownIndex55,GFX_Sprite_BearHuggerMadClownIndex55End
	dl $24E960,$24ED20,GFX_Sprite_BearHuggerMadClownIndex57,GFX_Sprite_BearHuggerMadClownIndex57End
	dl $24ED20,$24F480,GFX_Sprite_BearHuggerMadClownIndex58,GFX_Sprite_BearHuggerMadClownIndex58End
	dl $24F480,$24FC00,GFX_Sprite_BearHuggerMadClownIndex5F,GFX_Sprite_BearHuggerMadClownIndex5FEnd
	dl $24FC00,$258000,GFX_Sprite_BearHuggerMadClownIndex60,GFX_Sprite_BearHuggerMadClownIndex60End
	dl $258000,$2585A0,GFX_Sprite_DragonChanHeikeKageroIndex79,GFX_Sprite_DragonChanHeikeKageroIndex79End
	dl $2585A0,$2587C0,GFX_Sprite_DragonChanHeikeKageroIndex80,GFX_Sprite_DragonChanHeikeKageroIndex80End
	dl $2587C0,$258D40,GFX_Sprite_DragonChanHeikeKageroIndex81,GFX_Sprite_DragonChanHeikeKageroIndex81End
	dl $258D40,$258EC0,GFX_Sprite_DragonChanHeikeKageroIndex87,GFX_Sprite_DragonChanHeikeKageroIndex87End
	dl $258EC0,$2594A0,GFX_Sprite_DragonChanHeikeKageroIndex88,GFX_Sprite_DragonChanHeikeKageroIndex88End
	dl $2594A0,$259820,GFX_Sprite_BearHuggerMadClownIndex45,GFX_Sprite_BearHuggerMadClownIndex45End
	dl $259820,$259BC0,GFX_Sprite_BearHuggerMadClownIndex46,GFX_Sprite_BearHuggerMadClownIndex46End
	dl $259BC0,$259EA0,GFX_Sprite_BearHuggerMadClownIndex49,GFX_Sprite_BearHuggerMadClownIndex49End
	dl $259EA0,$25A6A0,GFX_Sprite_BearHuggerMadClownIndex5D,GFX_Sprite_BearHuggerMadClownIndex5DEnd
	dl $25A6A0,$25AB60,GFX_Sprite_BearHuggerMadClownIndex5E,GFX_Sprite_BearHuggerMadClownIndex5EEnd
	dl $25AB60,$25B5C0,GFX_Sprite_BearHuggerMadClownIndex63,GFX_Sprite_BearHuggerMadClownIndex63End
	dl $25B5C0,$25BBE0,GFX_Sprite_MaskedMuscleSuperMachoManIndex50,GFX_Sprite_MaskedMuscleSuperMachoManIndex50End
	dl $25BBE0,$25BF00,GFX_Sprite_MaskedMuscleSuperMachoManIndex63,GFX_Sprite_MaskedMuscleSuperMachoManIndex63End
	dl $25BF00,$25C080,GFX_Sprite_MaskedMuscleSuperMachoManIndex68,GFX_Sprite_MaskedMuscleSuperMachoManIndex68End
	dl $25C080,$25C6E0,GFX_Sprite_MaskedMuscleSuperMachoManIndex69,GFX_Sprite_MaskedMuscleSuperMachoManIndex69End
	dl $25C6E0,$25C7C0,GFX_Sprite_MaskedMuscleSuperMachoManIndex6A,GFX_Sprite_MaskedMuscleSuperMachoManIndex6AEnd
	dl $25C7C0,$25CDE0,GFX_Sprite_MaskedMuscleSuperMachoManIndex6B,GFX_Sprite_MaskedMuscleSuperMachoManIndex6BEnd
	dl $25CDE0,$25CF60,GFX_Sprite_MaskedMuscleSuperMachoManIndex6C,GFX_Sprite_MaskedMuscleSuperMachoManIndex6CEnd
	dl $25CF60,$25D400,GFX_Sprite_MaskedMuscleSuperMachoManIndex6D,GFX_Sprite_MaskedMuscleSuperMachoManIndex6DEnd
	dl $25D400,$25D6E0,GFX_Sprite_MaskedMuscleSuperMachoManIndex6E,GFX_Sprite_MaskedMuscleSuperMachoManIndex6EEnd
	dl $25D6E0,$25D9A0,GFX_Sprite_MaskedMuscleSuperMachoManIndex6F,GFX_Sprite_MaskedMuscleSuperMachoManIndex6FEnd
	dl $25D9A0,$25DDA0,GFX_Sprite_MaskedMuscleSuperMachoManIndex71,GFX_Sprite_MaskedMuscleSuperMachoManIndex71End
	dl $25DDA0,$25E0A0,GFX_Sprite_MaskedMuscleSuperMachoManIndex7A,GFX_Sprite_MaskedMuscleSuperMachoManIndex7AEnd
	dl $25E0A0,$25E580,GFX_Sprite_MaskedMuscleSuperMachoManIndex7B,GFX_Sprite_MaskedMuscleSuperMachoManIndex7BEnd
	dl $25E580,$25E840,GFX_Sprite_MaskedMuscleSuperMachoManIndex8C,GFX_Sprite_MaskedMuscleSuperMachoManIndex8CEnd
	dl $25E840,$25EB40,GFX_Sprite_MaskedMuscleSuperMachoManIndex8D,GFX_Sprite_MaskedMuscleSuperMachoManIndex8DEnd
	dl $25EB40,$25EE40,GFX_Sprite_MaskedMuscleSuperMachoManIndex8E,GFX_Sprite_MaskedMuscleSuperMachoManIndex8EEnd
	dl $25EE40,$25F040,GFX_Sprite_PistonHurricaneAranRyanIndex27,GFX_Sprite_PistonHurricaneAranRyanIndex27End
	dl $25F040,$25F5A0,GFX_Sprite_PistonHurricaneAranRyanIndex28,GFX_Sprite_PistonHurricaneAranRyanIndex28End
	dl $25F5A0,$25FC80,GFX_Sprite_PistonHurricaneAranRyanIndex48,GFX_Sprite_PistonHurricaneAranRyanIndex48End
	dl $25FC80,$268000,GFX_Sprite_DragonChanHeikeKageroIndex9D,GFX_Sprite_DragonChanHeikeKageroIndex9DEnd
	dl $28E4E0,$28F000,GFX_Sprite_BearHuggerMadClownIndex1F,GFX_Sprite_BearHuggerMadClownIndex1FEnd
	dl $28F000,$28FC80,GFX_Sprite_BearHuggerMadClownIndex20,GFX_Sprite_BearHuggerMadClownIndex20End
	dl $28FC80,$298000,GFX_Sprite_PistonHurricaneAranRyanIndex50,GFX_Sprite_PistonHurricaneAranRyanIndex50End
	dl $2C8000,$2C8360,GFX_Sprite_BaldBullMrSandmanIndex4E,GFX_Sprite_BaldBullMrSandmanIndex4EEnd
	dl $2C8360,$2C86A0,GFX_Sprite_BaldBullMrSandmanIndex4F,GFX_Sprite_BaldBullMrSandmanIndex4FEnd
	dl $2C86A0,$2C89C0,GFX_Sprite_BaldBullMrSandmanIndex50,GFX_Sprite_BaldBullMrSandmanIndex50End
	dl $2C89C0,$2C8C40,GFX_Sprite_BaldBullMrSandmanIndex51,GFX_Sprite_BaldBullMrSandmanIndex51End
	dl $2C8C40,$2C8FA0,GFX_Sprite_BaldBullMrSandmanIndex52,GFX_Sprite_BaldBullMrSandmanIndex52End
	dl $2C8FA0,$2C9240,GFX_Sprite_BaldBullMrSandmanIndex53,GFX_Sprite_BaldBullMrSandmanIndex53End
	dl $2C9240,$2C95A0,GFX_Sprite_BaldBullMrSandmanIndex54,GFX_Sprite_BaldBullMrSandmanIndex54End
	dl $2C95A0,$2C9820,GFX_Sprite_BaldBullMrSandmanIndex55,GFX_Sprite_BaldBullMrSandmanIndex55End
	dl $2C9820,$2C9920,GFX_Sprite_BaldBullMrSandmanIndex56,GFX_Sprite_BaldBullMrSandmanIndex56End
	dl $2C9920,$2C9A20,GFX_Sprite_BaldBullMrSandmanIndex57,GFX_Sprite_BaldBullMrSandmanIndex57End
	dl $2C9A20,$2C9B60,GFX_Sprite_BaldBullMrSandmanIndex58,GFX_Sprite_BaldBullMrSandmanIndex58End
	dl $2C9B60,$2C9DA0,GFX_Sprite_BaldBullMrSandmanIndex59,GFX_Sprite_BaldBullMrSandmanIndex59End
	dl $2C9DA0,$2CA0A0,GFX_Sprite_BaldBullMrSandmanIndex5A,GFX_Sprite_BaldBullMrSandmanIndex5AEnd
	dl $2CA0A0,$2CA380,GFX_Sprite_BaldBullMrSandmanIndex5B,GFX_Sprite_BaldBullMrSandmanIndex5BEnd
	dl $2CA380,$2CA400,GFX_Sprite_BaldBullMrSandmanIndex5C,GFX_Sprite_BaldBullMrSandmanIndex5CEnd
	dl $2CA400,$2CAC20,GFX_Sprite_BaldBullMrSandmanIndex5D,GFX_Sprite_BaldBullMrSandmanIndex5DEnd
	dl $2CAC20,$2CAF20,GFX_Sprite_BaldBullMrSandmanIndex5E,GFX_Sprite_BaldBullMrSandmanIndex5EEnd
	dl $2CAF20,$2CB260,GFX_Sprite_BaldBullMrSandmanIndex5F,GFX_Sprite_BaldBullMrSandmanIndex5FEnd
	dl $2CB260,$2CB580,GFX_Sprite_BaldBullMrSandmanIndex60,GFX_Sprite_BaldBullMrSandmanIndex60End
	dl $2CB580,$2CB8A0,GFX_Sprite_BaldBullMrSandmanIndex61,GFX_Sprite_BaldBullMrSandmanIndex61End
	dl $2CB8A0,$2CBC00,GFX_Sprite_BaldBullMrSandmanIndex62,GFX_Sprite_BaldBullMrSandmanIndex62End
	dl $2CBC00,$2CBFA0,GFX_Sprite_BaldBullMrSandmanIndex63,GFX_Sprite_BaldBullMrSandmanIndex63End
	dl $2CBFA0,$2CC2C0,GFX_Sprite_BaldBullMrSandmanIndex64,GFX_Sprite_BaldBullMrSandmanIndex64End
	dl $2CC2C0,$2CC620,GFX_Sprite_BaldBullMrSandmanIndex65,GFX_Sprite_BaldBullMrSandmanIndex65End
	dl $2CC620,$2CC960,GFX_Sprite_BaldBullMrSandmanIndex66,GFX_Sprite_BaldBullMrSandmanIndex66End
	dl $2CC960,$2CCCC0,GFX_Sprite_BaldBullMrSandmanIndex67,GFX_Sprite_BaldBullMrSandmanIndex67End
	dl $2CCCC0,$2CD060,GFX_Sprite_BaldBullMrSandmanIndex68,GFX_Sprite_BaldBullMrSandmanIndex68End
	dl $2CD060,$2CD360,GFX_Sprite_BaldBullMrSandmanIndex69,GFX_Sprite_BaldBullMrSandmanIndex69End
	dl $2CD360,$2CD980,GFX_Sprite_BaldBullMrSandmanIndex6A,GFX_Sprite_BaldBullMrSandmanIndex6AEnd
	dl $2CD980,$2CDCA0,GFX_Sprite_BaldBullMrSandmanIndex6B,GFX_Sprite_BaldBullMrSandmanIndex6BEnd
	dl $2CDCA0,$2CE580,GFX_Sprite_BaldBullMrSandmanIndex6C,GFX_Sprite_BaldBullMrSandmanIndex6CEnd
	dl $2CE580,$2CEC40,GFX_Sprite_BaldBullMrSandmanIndex6D,GFX_Sprite_BaldBullMrSandmanIndex6DEnd
	dl $2CEC40,$2CEFC0,GFX_Sprite_BaldBullMrSandmanIndex6E,GFX_Sprite_BaldBullMrSandmanIndex6EEnd
	dl $2CEFC0,$2CF340,GFX_Sprite_BaldBullMrSandmanIndex6F,GFX_Sprite_BaldBullMrSandmanIndex6FEnd
	dl $2CF340,$2CF6A0,GFX_Sprite_BaldBullMrSandmanIndex71,GFX_Sprite_BaldBullMrSandmanIndex71End
	dl $2CF6A0,$2CF920,GFX_Sprite_GabbyJayBobCharlieIndex6D,GFX_Sprite_GabbyJayBobCharlieIndex6DEnd
	dl $2CF920,$2CFFE0,GFX_Sprite_RickBruiserNickBruiserIndex05,GFX_Sprite_RickBruiserNickBruiserIndex05End
	dl $35C180,$35C500,GFX_Sprite_PistonHurricaneAranRyanIndex03,GFX_Sprite_PistonHurricaneAranRyanIndex03End
	dl $35C500,$35CA60,GFX_Sprite_PistonHurricaneAranRyanIndex04,GFX_Sprite_PistonHurricaneAranRyanIndex04End
	dl $35CA60,$35CC80,GFX_Sprite_PistonHurricaneAranRyanIndex08,GFX_Sprite_PistonHurricaneAranRyanIndex08End
	dl $35CC80,$35D260,GFX_Sprite_PistonHurricaneAranRyanIndex09,GFX_Sprite_PistonHurricaneAranRyanIndex09End
	dl $35D260,$35D560,GFX_Sprite_PistonHurricaneAranRyanIndex36,GFX_Sprite_PistonHurricaneAranRyanIndex36End
	dl $35D560,$35DAC0,GFX_Sprite_PistonHurricaneAranRyanIndex37,GFX_Sprite_PistonHurricaneAranRyanIndex37End
	dl $35DAC0,$35DFC0,GFX_Sprite_PistonHurricaneAranRyanIndex38,GFX_Sprite_PistonHurricaneAranRyanIndex38End
	dl $369980,$369CC0,GFX_Sprite_BearHuggerMadClownIndex08,GFX_Sprite_BearHuggerMadClownIndex08End
	dl $369CC0,$369FC0,GFX_Sprite_PistonHurricaneAranRyanIndex51,GFX_Sprite_PistonHurricaneAranRyanIndex51End
	dl $369FC0,$36A500,GFX_Sprite_PistonHurricaneAranRyanIndex52,GFX_Sprite_PistonHurricaneAranRyanIndex52End
	dl $36A500,$36A800,GFX_Sprite_BaldBullMrSandmanIndex41,GFX_Sprite_BaldBullMrSandmanIndex41End
	dl $36A800,$36AF80,GFX_Sprite_BaldBullMrSandmanIndex42,GFX_Sprite_BaldBullMrSandmanIndex42End
	dl $36AF80,$36B560,GFX_Sprite_BaldBullMrSandmanIndex43,GFX_Sprite_BaldBullMrSandmanIndex43End
	dl $36B560,$36B880,GFX_Sprite_BaldBullMrSandmanIndex47,GFX_Sprite_BaldBullMrSandmanIndex47End
	dl $36B880,$36BC00,GFX_Sprite_BaldBullMrSandmanIndex48,GFX_Sprite_BaldBullMrSandmanIndex48End
	dl $36BC00,$36BF80,GFX_Sprite_BaldBullMrSandmanIndex4B,GFX_Sprite_BaldBullMrSandmanIndex4BEnd
	dl $36BF80,$36C360,GFX_Sprite_DragonChanHeikeKageroIndex04,GFX_Sprite_DragonChanHeikeKageroIndex04End
	dl $36C360,$36CF60,GFX_Sprite_BearHuggerMadClownIndex04,GFX_Sprite_BearHuggerMadClownIndex04End
	dl $36CF60,$36D220,GFX_Sprite_PistonHurricaneAranRyanIndex22,GFX_Sprite_PistonHurricaneAranRyanIndex22End
	dl $36D220,$36D7E0,GFX_Sprite_PistonHurricaneAranRyanIndex23,GFX_Sprite_PistonHurricaneAranRyanIndex23End
	dl $36D7E0,$36DA60,GFX_Sprite_PistonHurricaneAranRyanIndex4B,GFX_Sprite_PistonHurricaneAranRyanIndex4BEnd
	dl $36DA60,$36DFC0,GFX_Sprite_PistonHurricaneAranRyanIndex4C,GFX_Sprite_PistonHurricaneAranRyanIndex4CEnd
	dl $36DFC0,$36E2A0,GFX_Sprite_GabbyJayBobCharlieIndex48,GFX_Sprite_GabbyJayBobCharlieIndex48End
	dl $36E2A0,$36E580,GFX_Sprite_GabbyJayBobCharlieIndex59,GFX_Sprite_GabbyJayBobCharlieIndex59End
	dl $36E580,$36E8A0,GFX_Sprite_GabbyJayBobCharlieIndex64,GFX_Sprite_GabbyJayBobCharlieIndex64End
	dl $36E8A0,$36EBA0,GFX_Sprite_GabbyJayBobCharlieIndex65,GFX_Sprite_GabbyJayBobCharlieIndex65End
	dl $36EBA0,$36F5E0,GFX_Sprite_BearHuggerMadClownIndex35,GFX_Sprite_BearHuggerMadClownIndex35End
	dl $36F5E0,$378000,GFX_Sprite_BearHuggerMadClownIndex48,GFX_Sprite_BearHuggerMadClownIndex48End
	dl $3A8000,$3A8440,GFX_Sprite_GabbyJayBobCharlieIndex04,GFX_Sprite_GabbyJayBobCharlieIndex04End
	dl $3A8440,$3A86A0,GFX_Sprite_GabbyJayBobCharlieIndex05,GFX_Sprite_GabbyJayBobCharlieIndex05End
	dl $3A86A0,$3A8B40,GFX_Sprite_GabbyJayBobCharlieIndex06,GFX_Sprite_GabbyJayBobCharlieIndex06End
	dl $3A8B40,$3A8D60,GFX_Sprite_GabbyJayBobCharlieIndex21,GFX_Sprite_GabbyJayBobCharlieIndex21End
	dl $3A8D60,$3A92C0,GFX_Sprite_GabbyJayBobCharlieIndex22,GFX_Sprite_GabbyJayBobCharlieIndex22End
	dl $3A92C0,$3A9820,GFX_Sprite_GabbyJayBobCharlieIndex3E,GFX_Sprite_GabbyJayBobCharlieIndex3EEnd
	dl $3A9820,$3A9A60,GFX_Sprite_GabbyJayBobCharlieIndex43,GFX_Sprite_GabbyJayBobCharlieIndex43End
	dl $3A9A60,$3A9C60,GFX_Sprite_GabbyJayBobCharlieIndex44,GFX_Sprite_GabbyJayBobCharlieIndex44End
	dl $3A9C60,$3AA1C0,GFX_Sprite_GabbyJayBobCharlieIndex45,GFX_Sprite_GabbyJayBobCharlieIndex45End
	dl $3AA1C0,$3AA5A0,GFX_Sprite_BearHuggerMadClownIndex14,GFX_Sprite_BearHuggerMadClownIndex14End
	dl $3AA5A0,$3AAC20,GFX_Sprite_BearHuggerMadClownIndex15,GFX_Sprite_BearHuggerMadClownIndex15End
	dl $3AAC20,$3AB8E0,GFX_Sprite_BearHuggerMadClownIndex16,GFX_Sprite_BearHuggerMadClownIndex16End
	dl $3AB8E0,$3ABC00,GFX_Sprite_MaskedMuscleSuperMachoManIndex2F,GFX_Sprite_MaskedMuscleSuperMachoManIndex2FEnd
	dl $3ABC00,$3AC220,GFX_Sprite_MaskedMuscleSuperMachoManIndex30,GFX_Sprite_MaskedMuscleSuperMachoManIndex30End
	dl $3AC220,$3AC4A0,GFX_Sprite_MaskedMuscleSuperMachoManIndex4A,GFX_Sprite_MaskedMuscleSuperMachoManIndex4AEnd
	dl $3AC4A0,$3AC8E0,GFX_Sprite_DragonChanHeikeKageroIndex51,GFX_Sprite_DragonChanHeikeKageroIndex51End
	dl $3AC8E0,$3ACD20,GFX_Sprite_DragonChanHeikeKageroIndex54,GFX_Sprite_DragonChanHeikeKageroIndex54End
	dl $3ACD20,$3ACDA0,GFX_Sprite_DragonChanHeikeKageroIndex71,GFX_Sprite_DragonChanHeikeKageroIndex71End
	dl $3ACDA0,$3AD340,GFX_Sprite_DragonChanHeikeKageroIndex72,GFX_Sprite_DragonChanHeikeKageroIndex72End
	dl $3AD340,$3AD420,GFX_Sprite_DragonChanHeikeKageroIndex73,GFX_Sprite_DragonChanHeikeKageroIndex73End
	dl $3AD420,$3AD7A0,GFX_Sprite_DragonChanHeikeKageroIndex77,GFX_Sprite_DragonChanHeikeKageroIndex77End
	dl $3AD7A0,$3ADCA0,GFX_Sprite_DragonChanHeikeKageroIndex78,GFX_Sprite_DragonChanHeikeKageroIndex78End
	dl $3ADCA0,$3ADF60,GFX_Sprite_DragonChanHeikeKageroIndex82,GFX_Sprite_DragonChanHeikeKageroIndex82End
	dl $3ADF60,$3AE520,GFX_Sprite_DragonChanHeikeKageroIndex83,GFX_Sprite_DragonChanHeikeKageroIndex83End
	dl $3AE520,$3AEC00,GFX_Sprite_DragonChanHeikeKageroIndex8B,GFX_Sprite_DragonChanHeikeKageroIndex8BEnd
	dl $3AEC00,$3AEEA0,GFX_Sprite_DragonChanHeikeKageroIndex8F,GFX_Sprite_DragonChanHeikeKageroIndex8FEnd
	dl $3AEEA0,$3AF480,GFX_Sprite_DragonChanHeikeKageroIndex90,GFX_Sprite_DragonChanHeikeKageroIndex90End
	dl $3AF480,$3AF660,GFX_Sprite_DragonChanHeikeKageroIndex96,GFX_Sprite_DragonChanHeikeKageroIndex96End
	dl $3AF660,$3AFC80,GFX_Sprite_DragonChanHeikeKageroIndex97,GFX_Sprite_DragonChanHeikeKageroIndex97End
	dl $3AFC80,$3B8000,GFX_Sprite_DragonChanHeikeKageroIndex98,GFX_Sprite_DragonChanHeikeKageroIndex98End
	dl $3D8000,$3D8AC0,GFX_Layer1_ContenderIndex02,GFX_Layer1_ContenderIndex02End
	dl $3D8AC0,$3D93C0,GFX_Layer1_ContenderIndex03,GFX_Layer1_ContenderIndex03End
	dl $3D93C0,$3D9EA0,GFX_Layer1_ContenderIndex04,GFX_Layer1_ContenderIndex04End
	dl $3D9EA0,$3DA6A0,GFX_Layer1_ContenderIndex0A,GFX_Layer1_ContenderIndex0AEnd
	dl $3DA6A0,$3DAA20,GFX_Layer1_ContenderIndex0B,GFX_Layer1_ContenderIndex0BEnd
	dl $3DAA20,$3DB420,GFX_Layer1_ContenderIndex0C,GFX_Layer1_ContenderIndex0CEnd
	dl $3DB420,$3DB660,GFX_Layer1_ContenderIndex0D,GFX_Layer1_ContenderIndex0DEnd
	dl $3DB660,$3DC060,GFX_Layer1_ContenderIndex12,GFX_Layer1_ContenderIndex12End
	dl $3DC060,$3DCBC0,GFX_Layer1_ContenderIndex15,GFX_Layer1_ContenderIndex15End
	dl $3DCBC0,$3DD680,GFX_Layer1_ContenderIndex16,GFX_Layer1_ContenderIndex16End
	dl $3DD680,$3DE0C0,GFX_Layer1_ContenderIndex1D,GFX_Layer1_ContenderIndex1DEnd
	dl $3DE0C0,$3DEC40,GFX_Layer1_ContenderIndex22,GFX_Layer1_ContenderIndex22End
	dl $3DEC40,$3DEF40,GFX_Sprite_PistonHurricaneAranRyanIndex55,GFX_Sprite_PistonHurricaneAranRyanIndex55End
	dl $3DEF40,$3DF220,GFX_Sprite_PistonHurricaneAranRyanIndex6D,GFX_Sprite_PistonHurricaneAranRyanIndex6DEnd
	dl $3DF220,$3DF500,GFX_Sprite_PistonHurricaneAranRyanIndex72,GFX_Sprite_PistonHurricaneAranRyanIndex72End
	dl $3DF500,$3DF8C0,GFX_Sprite_GabbyJayBobCharlieIndex6E,GFX_Sprite_GabbyJayBobCharlieIndex6EEnd
	dl $3DF8C0,$3DFC40,GFX_Sprite_RickBruiserNickBruiserIndex53,GFX_Sprite_RickBruiserNickBruiserIndex53End
	dl $3DFC40,$3DFFE0,GFX_Sprite_RickBruiserNickBruiserIndex54,GFX_Sprite_RickBruiserNickBruiserIndex54End
	dl $3E8000,$3E8C80,GFX_Layer1_ContenderIndex07,GFX_Layer1_ContenderIndex07End
	dl $3E8C80,$3E9680,GFX_Layer1_ContenderIndex0E,GFX_Layer1_ContenderIndex0EEnd
	dl $3E9680,$3E9A00,GFX_Layer1_ContenderIndex0F,GFX_Layer1_ContenderIndex0FEnd
	dl $3E9A00,$3EA200,GFX_Layer1_ContenderIndex10,GFX_Layer1_ContenderIndex10End
	dl $3EA200,$3EA5E0,GFX_Layer1_ContenderIndex11,GFX_Layer1_ContenderIndex11End
	dl $3EA5E0,$3EB0E0,GFX_Layer1_ContenderIndex13,GFX_Layer1_ContenderIndex13End
	dl $3EB0E0,$3EBAE0,GFX_Layer1_ContenderIndex14,GFX_Layer1_ContenderIndex14End
	dl $3EBAE0,$3EC2C0,GFX_Layer1_ContenderIndex1B,GFX_Layer1_ContenderIndex1BEnd
	dl $3EC2C0,$3ECB40,GFX_Layer1_ContenderIndex1E,GFX_Layer1_ContenderIndex1EEnd
	dl $3ECB40,$3ED880,GFX_Layer1_ContenderIndex23,GFX_Layer1_ContenderIndex23End
	dl $3ED880,$3EE5A0,GFX_Layer1_ContenderIndex24,GFX_Layer1_ContenderIndex24End
	dl $3EE5A0,$3EF000,GFX_Layer1_ContenderIndex2B,GFX_Layer1_ContenderIndex2BEnd
	dl $3EF000,$3EF2A0,GFX_Layer1_ContenderIndex2C,GFX_Layer1_ContenderIndex2CEnd
	dl $3EF2A0,$3EFDC0,GFX_Layer1_ContenderIndex2D,GFX_Layer1_ContenderIndex2DEnd
	dl $3EFDC0,$3F8000,GFX_Layer1_ContenderIndex2E,GFX_Layer1_ContenderIndex2EEnd
	dl $3F8000,$3F8B20,GFX_Layer1_ContenderIndex00,GFX_Layer1_ContenderIndex00End
	dl $3F8B20,$3F8F20,GFX_Layer1_ContenderIndex01,GFX_Layer1_ContenderIndex01End
	dl $3F8F20,$3F9900,GFX_Layer1_ContenderIndex05,GFX_Layer1_ContenderIndex05End
	dl $3F9900,$3F9F40,GFX_Layer1_ContenderIndex06,GFX_Layer1_ContenderIndex06End
	dl $3F9F40,$3FAB40,GFX_Layer1_ContenderIndex08,GFX_Layer1_ContenderIndex08End
	dl $3FAB40,$3FACC0,GFX_Layer1_ContenderIndex09,GFX_Layer1_ContenderIndex09End
	dl $3FACC0,$3FB8C0,GFX_Layer1_ContenderIndex17,GFX_Layer1_ContenderIndex17End
	dl $3FB8C0,$3FBBA0,GFX_Layer1_ContenderIndex18,GFX_Layer1_ContenderIndex18End
	dl $3FBBA0,$3FC580,GFX_Layer1_ContenderIndex19,GFX_Layer1_ContenderIndex19End
	dl $3FC580,$3FC940,GFX_Layer1_ContenderIndex1A,GFX_Layer1_ContenderIndex1AEnd
	dl $3FC940,$3FD340,GFX_Layer1_ContenderIndex1C,GFX_Layer1_ContenderIndex1CEnd
	dl $3FD340,$3FDF40,GFX_Layer1_ContenderIndex25,GFX_Layer1_ContenderIndex25End
	dl $3FDF40,$3FE240,GFX_Layer1_ContenderIndex26,GFX_Layer1_ContenderIndex26End
	dl $3FE240,$3FEDC0,GFX_Layer1_ContenderIndex27,GFX_Layer1_ContenderIndex27End
	dl $3FEDC0,$3FF240,GFX_Layer1_ContenderIndex28,GFX_Layer1_ContenderIndex28End
	dl $3FF240,$3FFC80,GFX_Layer1_ContenderIndex29,GFX_Layer1_ContenderIndex29End
	dl $3FFC80,$408000,GFX_Layer1_ContenderIndex2A,GFX_Layer1_ContenderIndex2AEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $078010,$07833D,GFX_Layer2_AudienceAndBoxingRing2,GFX_Layer2_AudienceAndBoxingRing2End
	dl $07833D,$078AB1,GFX_Sprite_Effects,GFX_Sprite_EffectsEnd
	dl $078AB1,$0797A6,GFX_Layer3_HUDAndSmallFont,GFX_Layer3_HUDAndSmallFontEnd
	dl $0797A6,$07CE4C,GFX_Layer2_AudienceAndBoxingRing1,GFX_Layer2_AudienceAndBoxingRing1End
	dl $07CE4C,$07D1A8,GFX_Sprite_MaskedMuscleSpit,GFX_Sprite_MaskedMuscleSpitEnd
	dl $07D1A8,$07D2BC,GFX_Sprite_MadClownBall,GFX_Sprite_MadClownBallEnd
	dl $07D2BC,$07E3CC,GFX_Sprite_WinScreenContender,GFX_Sprite_WinScreenContenderEnd
	dl $0E800E,$0E9516,GFX_Layer1AndSprite_MainMenu,GFX_Layer1AndSprite_MainMenuEnd
	dl $0E9516,$0EA610,GFX_Layer2_MinorCircuitRingLogo,GFX_Layer2_MinorCircuitRingLogoEnd
	dl $0EA610,$0EB715,GFX_Layer2_MajorCircuitRingLogo,GFX_Layer2_MajorCircuitRingLogoEnd
	dl $0EB715,$0EC826,GFX_Layer2_WorldCircuitRingLogo,GFX_Layer2_WorldCircuitRingLogoEnd
	dl $0EC826,$0ED998,GFX_Layer2_SpecialCircuitRingLogo,GFX_Layer2_SpecialCircuitRingLogoEnd
	dl $0ED998,$0EED90,GFX_Layer2_GameOverScreen,GFX_Layer2_GameOverScreenEnd
	dl $0F800E,$0FAD2C,GFX_Layer3_LargeFont,GFX_Layer3_LargeFontEnd
	dl $0FAD2C,$0FB8B4,GFX_Layer2_MinorCircuitLogoBackground,GFX_Layer2_MinorCircuitLogoBackgroundEnd
	dl $0FB8B4,$0FC513,GFX_Layer2_MajorCircuitLogoBackground,GFX_Layer2_MajorCircuitLogoBackgroundEnd
	dl $0FC513,$0FD09D,GFX_Layer2_WorldCircuitLogoBackground,GFX_Layer2_WorldCircuitLogoBackgroundEnd
	dl $0FD09D,$0FDCAF,GFX_Layer2_SpecialCircuitLogoBackground,GFX_Layer2_SpecialCircuitLogoBackgroundEnd
	dl $0FDCAF,$0FEE86,GFX_Layer1_TitleScreenLogo,GFX_Layer1_TitleScreenLogoEnd
	dl $10801C,$108919,GFX_Sprite_GabbyJayLargePortrait,GFX_Sprite_GabbyJayLargePortraitEnd
	dl $108919,$109253,GFX_Sprite_BearHuggerLargePortrait,GFX_Sprite_BearHuggerLargePortraitEnd
	dl $109253,$109BBB,GFX_Sprite_PistonHurricaneLargePortrait,GFX_Sprite_PistonHurricaneLargePortraitEnd
	dl $109BBB,$10A554,GFX_Sprite_BaldBullLargePortrait,GFX_Sprite_BaldBullLargePortraitEnd
	dl $10A554,$10AEF0,GFX_Sprite_BobCharlieLargePortrait,GFX_Sprite_BobCharlieLargePortraitEnd
	dl $10AEF0,$10B855,GFX_Sprite_DragonChanLargePortrait,GFX_Sprite_DragonChanLargePortraitEnd
	dl $10B855,$10C191,GFX_Sprite_MaskedMuscleLargePortrait,GFX_Sprite_MaskedMuscleLargePortraitEnd
	dl $10C191,$10CA63,GFX_Sprite_MrSandmanLargePortrait,GFX_Sprite_MrSandmanLargePortraitEnd
	dl $10CA63,$10E0E7,GFX_Sprite_IntroGlove,GFX_Sprite_IntroGloveEnd
	dl $10E0E7,$10F70A,GFX_Sprite_IntroEntry,GFX_Sprite_IntroEntryEnd
	dl $10F70A,$10F86D,GFX_Sprite_SplashScreenNintendoLogo,GFX_Sprite_SplashScreenNintendoLogoEnd
	dl $10F86D,$10F8DD,GFX_Sprite_TutorialArrow,GFX_Sprite_TutorialArrowEnd
	dl $10F8DD,$10F979,GFX_Layer3_Ending,GFX_Layer3_EndingEnd
	dl $11801A,$1188E2,GFX_Sprite_AranRyanLargePortrait,GFX_Sprite_AranRyanLargePortraitEnd
	dl $1188E2,$11924C,GFX_Sprite_HeikeKageroLargePortrait,GFX_Sprite_HeikeKageroLargePortraitEnd
	dl $11924C,$119BDC,GFX_Sprite_MadClownLargePortrait,GFX_Sprite_MadClownLargePortraitEnd
	dl $119BDC,$11A553,GFX_Sprite_SuperMachoManLargePortrait,GFX_Sprite_SuperMachoManLargePortraitEnd
	dl $11A553,$11AFF4,GFX_Sprite_NarcisPrinceLargePortrait,GFX_Sprite_NarcisPrinceLargePortraitEnd
	dl $11AFF4,$11B942,GFX_Sprite_HoyQuarlowLargePortrait,GFX_Sprite_HoyQuarlowLargePortraitEnd
	dl $11B942,$11C35D,GFX_Sprite_RickBruiserLargePortrait,GFX_Sprite_RickBruiserLargePortraitEnd
	dl $11C35D,$11CD39,GFX_Sprite_NickBruiserLargePortrait,GFX_Sprite_NickBruiserLargePortraitEnd
	dl $11CD39,$11DE70,GFX_Sprite_IntroBoot,GFX_Sprite_IntroBootEnd
	dl $11DE70,$11F1DD,GFX_Sprite_IntroArms,GFX_Sprite_IntroArmsEnd
	dl $11F1DD,$11FC22,GFX_Layer1_GameOverScreen,GFX_Layer1_GameOverScreenEnd
	dl $11FC22,$11FE00,GFX_Layer2_MainMenu,GFX_Layer2_MainMenuEnd
	dl $12800A,$129007,GFX_Layer1_MinorCircuitBelt,GFX_Layer1_MinorCircuitBeltEnd
	dl $129007,$12A189,GFX_Layer1_MajorCircuitBelt,GFX_Layer1_MajorCircuitBeltEnd
	dl $12A189,$12B296,GFX_Layer1_WorldCircuitBelt,GFX_Layer1_WorldCircuitBeltEnd
	dl $12B296,$12C46D,GFX_Layer1_SpecialCircuitBelt,GFX_Layer1_SpecialCircuitBeltEnd
	dl $138006,$138F86,GFX_FGBG_EndScreen,GFX_FGBG_EndScreenEnd
	dl $138F86,$139CDB,GFX_Sprite_EndScreen,GFX_Sprite_EndScreenEnd
	dl $148002,$14DD1D,GFX_Sprite_NickBruiser1,GFX_Sprite_NickBruiser1End
	dl $158002,$15A1AD,GFX_Sprite_RickBruiser1,GFX_Sprite_RickBruiser1End
	dl $168002,$16DED1,GFX_Sprite_RickBruiser2_NickBruiser2,GFX_Sprite_RickBruiser2_NickBruiser2End
	dl $178002,$17DE4E,GFX_Sprite_RickBruiser3_NickBruiser3,GFX_Sprite_RickBruiser3_NickBruiser3End
	dl $198002,$19E8E5,GFX_Sprite_HoyQuarlow1,GFX_Sprite_HoyQuarlow1End
	dl $1A8002,$1AE75D,GFX_Sprite_HoyQuarlow2,GFX_Sprite_HoyQuarlow2End
	dl $1B8002,$1BE995,GFX_Sprite_HoyQuarlow3,GFX_Sprite_HoyQuarlow3End
	dl $1D8002,$1DE568,GFX_Sprite_NarcisPrince1,GFX_Sprite_NarcisPrince1End
	dl $1E8002,$1EE24F,GFX_Sprite_NarcisPrince2,GFX_Sprite_NarcisPrince2End
	dl $1F8002,$1FE17F,GFX_Sprite_NarcisPrince3,GFX_Sprite_NarcisPrince3End
	dl $218002,$21E6C7,GFX_Sprite_SuperMachoMan1,GFX_Sprite_SuperMachoMan1End
	dl $228002,$22E0B1,GFX_Sprite_MadClown1,GFX_Sprite_MadClown1End
	dl $268002,$26E667,GFX_Sprite_HeikeKagero3,GFX_Sprite_HeikeKagero3End
	dl $278002,$27E6BD,GFX_Sprite_HeikeKagero1,GFX_Sprite_HeikeKagero1End
	dl $288002,$28E4AC,GFX_Sprite_AranRyan1,GFX_Sprite_AranRyan1End
	dl $298002,$29E47D,GFX_Sprite_MaskedMuscle3_SuperMachoMan3,GFX_Sprite_MaskedMuscle3_SuperMachoMan3End
	dl $2A8002,$2AE312,GFX_Sprite_MaskedMuscle2_SuperMachoMan2,GFX_Sprite_MaskedMuscle2_SuperMachoMan2End
	dl $2B8002,$2BDF6D,GFX_Sprite_MaskedMuscle1,GFX_Sprite_MaskedMuscle1End
	dl $2D8002,$2DE290,GFX_Sprite_BobCharlie3,GFX_Sprite_BobCharlie3End
	dl $2E8002,$2EDF94,GFX_Sprite_DragonChan2_HeikeKagero2,GFX_Sprite_DragonChan2_HeikeKagero2End
	dl $2F8002,$2FDCF6,GFX_Sprite_DragonChan3,GFX_Sprite_DragonChan3End
	dl $308002,$30E1A4,GFX_Sprite_BaldBull3_MrSandman3,GFX_Sprite_BaldBull3_MrSandman3End
	dl $318002,$31E627,GFX_Sprite_BaldBull2_MrSandman2,GFX_Sprite_BaldBull2_MrSandman2End
	dl $328002,$32E3E9,GFX_Sprite_BaldBull1_MrSandman1,GFX_Sprite_BaldBull1_MrSandman1End
	dl $338002,$33DCAC,GFX_Sprite_PistonHurricane3_AranRyan3,GFX_Sprite_PistonHurricane3_AranRyan3End
	dl $348002,$34E0FF,GFX_Sprite_PistonHurricane2_AranRyan2,GFX_Sprite_PistonHurricane2_AranRyan2End
	dl $358002,$35C161,GFX_Sprite_PistonHurricane1,GFX_Sprite_PistonHurricane1End
	dl $368002,$369895,GFX_Sprite_DragonChan1,GFX_Sprite_DragonChan1End
	dl $378002,$37D5D3,GFX_Sprite_BearHugger3_MadClown3,GFX_Sprite_BearHugger3_MadClown3End
	dl $388002,$38D5EF,GFX_Sprite_BearHugger2_MadClown2,GFX_Sprite_BearHugger2_MadClown2End
	dl $398002,$39D1AD,GFX_Sprite_BearHugger1,GFX_Sprite_BearHugger1End
	dl $3B8002,$3BE598,GFX_Sprite_GabbyJay2_BobCharlie2,GFX_Sprite_GabbyJay2_BobCharlie2End
	dl $3C8002,$3CE6AD,GFX_Sprite_GabbyJay1_BobCharlie1,GFX_Sprite_GabbyJay1_BobCharlie1End
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedTilemapsStart:
	dl $089EC2,$08A4D6,TM_Audience,TM_AudienceEnd
CompressedTilemapsEnd:

;--------------------------------------------------------------------

PalettesStart:
	dl $008035,$008235,PAL_CircuitWinScreen,PAL_CircuitWinScreenEnd
	dl $008235,$008295,PAL_FGBG_GameOverScreen,PAL_FGBG_GameOverScreenEnd
	dl $008295,$0082D5,PAL_Layer3_HighScoreScreen,PAL_Layer3_HighScoreScreenEnd
	dl $0082D5,$0082F5,PAL_Unknown1,PAL_Unknown1End
	dl $0082F5,$008395,PAL_Layer1_HighScoreScreen,PAL_Layer1_HighScoreScreenEnd
	dl $008395,$0084D5,PAL_MainMenu,PAL_MainMenuEnd
	dl $0084D5,$0084E7,PAL_Sprite_MenuCursor,PAL_Sprite_MenuCursorEnd
	dl $0084E7,$008547,PAL_FGBG_Intro,PAL_FGBG_IntroEnd
	dl $008547,$008667,PAL_ColorEndScreen,PAL_ColorEndScreenEnd
	dl $008667,$008787,PAL_SepiaEndScreen,PAL_SepiaEndScreenEnd
	dl $008787,$0087A7,PAL_Sprite_UnselectedFighterIcons,PAL_Sprite_UnselectedFighterIconsEnd
	dl $0897D6,$089876,PAL_FGBG_MinorCircuitMatch,PAL_FGBG_MinorCircuitMatchEnd
	dl $089876,$089916,PAL_FGBG_MajorCircuitMatch,PAL_FGBG_MajorCircuitMatchEnd
	dl $089916,$0899B6,PAL_FGBG_WorldCircuitMatch,PAL_FGBG_WorldCircuitMatchEnd
	dl $0899B6,$089A56,PAL_FGBG_SpecialCircuitMatch,PAL_FGBG_SpecialCircuitMatchEnd
	dl $089A56,$089A96,PAL_Layer3_HUD,PAL_Layer3_HUDEnd
	dl $089A96,$089AB6,PAL_Layer1_Contender,PAL_Layer1_ContenderEnd
	dl $089AB6,$089AF6,PAL_Sprite_VS,PAL_Sprite_VSEnd
	dl $0DB9DA,$0DBA3A,PAL_Sprite_GabbyJay,PAL_Sprite_GabbyJayEnd
	dl $0DBC3C,$0DBC9C,PAL_Sprite_BearHugger,PAL_Sprite_BearHuggerEnd
	dl $0DBE9E,$0DBEFE,PAL_Sprite_PistonHurricane,PAL_Sprite_PistonHurricaneEnd
	dl $0DC100,$0DC180,PAL_Sprite_BaldBull,PAL_Sprite_BaldBullEnd
	dl $0DC382,$0DC3E2,PAL_Sprite_BobCharlie,PAL_Sprite_BobCharlieEnd
	dl $0DC5E4,$0DC644,PAL_Sprite_DragonChan,PAL_Sprite_DragonChanEnd
	dl $0DC846,$0DC8C6,PAL_Sprite_MaskedMuscle,PAL_Sprite_MaskedMuscleEnd
	dl $0DCAC8,$0DCB28,PAL_Sprite_MrSandman,PAL_Sprite_MrSandmanEnd
	dl $0DCD2A,$0DCD8A,PAL_Sprite_AranRyan,PAL_Sprite_AranRyanEnd
	dl $0DCF8C,$0DCFEC,PAL_Sprite_HeikeKagero,PAL_Sprite_HeikeKageroEnd
	dl $0DD1EE,$0DD26E,PAL_Sprite_MadClown,PAL_Sprite_MadClownEnd
	dl $0DD470,$0DD4D0,PAL_Sprite_SuperMachoMan,PAL_Sprite_SuperMachoManEnd
	dl $0DD6D2,$0DD732,PAL_Sprite_NarcisPrince,PAL_Sprite_NarcisPrinceEnd
	dl $0DD934,$0DD994,PAL_Sprite_HoyQuarlow,PAL_Sprite_HoyQuarlowEnd
	dl $0DDB96,$0DDC56,PAL_Sprite_RickBruiser,PAL_Sprite_RickBruiserEnd
	dl $0DDE58,$0DDF18,PAL_Sprite_NickBruiser,PAL_Sprite_NickBruiserEnd
	dl $10FB00,$10FBC0,PAL_Layer1_MinorCircuitHighScoreScreen,PAL_Layer1_MinorCircuitHighScoreScreenEnd
	dl $10FBC0,$10FC80,PAL_Layer1_MajorCircuitHighScoreScreen,PAL_Layer1_MajorCircuitHighScoreScreenEnd
	dl $10FC80,$10FD40,PAL_Layer1_WorldCircuitHighScoreScreen,PAL_Layer1_WorldCircuitHighScoreScreenEnd
	dl $10FD40,$10FE00,PAL_Layer1_SpecialCircuitHighScoreScreen,PAL_Layer1_SpecialCircuitHighScoreScreenEnd
	dl $10FE00,$118000,PAL_Sprite_LargePortraits,PAL_Sprite_LargePortraitsEnd
PalettesEnd:

;--------------------------------------------------------------------

GarbageDataStart:
	dl $00F5D0,$00FF90,UNK_00F5D0,UNK_00F5D0End
	dl $01EB2D,$01EC00,UNK_01EB2D,UNK_01EB2DEnd
	dl $01F784,$01F800,UNK_01F784,UNK_01F784End
	dl $09E936,$09F5D0,UNK_09E936,UNK_09E936End
	dl $0AED5E,$0AF5D0,UNK_0AED5E,UNK_0AED5EEnd
	dl $0BF47B,$0BF5D0,UNK_0BF47B,UNK_0BF47BEnd
	dl $0CF146,$0CF5D0,UNK_0CF146,UNK_0CF146End
	dl $0EED90,$0EF3DD,UNK_0EED90,UNK_0EED90End
	dl $0FEE86,$0FEF80,UNK_0FEE86,UNK_0FEE86End
	dl $10F979,$10FB00,UNK_10F979,UNK_10F979End
	dl $19E8E5,$19E920,UNK_19E8E5,UNK_19E8E5End
	dl $1AE75D,$1AE760,UNK_1AE75D,UNK_1AE75DEnd
	dl $1BE995,$1BE9A0,UNK_1BE995,UNK_1BE995End
GarbageDataEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $03B9B1,$03BBCE,Music_MatchWon,Music_MatchWonEnd
	dl $03BBCE,$03BD39,Music_MatchLost,Music_MatchLostEnd
	dl $03BD39,$03BDEE,Music_PlayerDown,Music_PlayerDownEnd
	dl $03BDEE,$03BEE6,Music_OpponentDown,Music_OpponentDownEnd
	dl $03BEE6,$03C074,Music_GabbyJayIntro,Music_GabbyJayIntroEnd
	dl $03C074,$03C1A1,Music_BearHuggerIntro,Music_BearHuggerIntroEnd
	dl $03C1A1,$03C39D,Music_PistonHurricaneIntro,Music_PistonHurricaneIntroEnd
	dl $03C39D,$03C536,Music_BaldBullIntro,Music_BaldBullIntroEnd
	dl $03C536,$03C70A,Music_BobCharlieIntro,Music_BobCharlieIntroEnd
	dl $03C70A,$03C8E4,Music_DragonChanIntro,Music_DragonChanIntroEnd
	dl $03C8E4,$03CA3A,Music_MaskedMuscleIntro,Music_MaskedMuscleIntroEnd
	dl $03CA3A,$03CB78,Music_MrSandmanIntro,Music_MrSandmanIntroEnd
	dl $03CB78,$03CDC9,Music_AranRyanIntro,Music_AranRyanIntroEnd
	dl $03CDC9,$03CF85,Music_HeikeKageroIntro,Music_HeikeKageroIntroEnd
	dl $03CF85,$03D217,Music_MadClownIntro,Music_MadClownIntroEnd
	dl $03D217,$03D686,Music_SuperMachoManIntro,Music_SuperMachoManIntroEnd
	dl $03D686,$03D78C,Music_NarcisPrinceIntro,Music_NarcisPrinceIntroEnd
	dl $03D78C,$03DA5E,Music_HoyQuarlowIntro,Music_HoyQuarlowIntroEnd
	dl $03DA5E,$03DC5A,Music_RickBruiserIntro,Music_RickBruiserIntroEnd
	dl $03DC5A,$03DD87,Music_NickBruiserIntro,Music_NickBruiserIntroEnd
	dl $048000,$049533,UnknownData1,UnknownData1End
	dl $049533,$0498AC,Music_CircuitWin,Music_CircuitWinEnd
	dl $0498AC,$049979,Music_GameOver,Music_GameOverEnd
	dl $049979,$04A202,UnknownData2,UnknownData2End
	dl $04A202,$04A954,Music_MainMenu,Music_MainMenuEnd
	dl $04A954,$04B866,UnknownData3,UnknownData3End
	dl $04B866,$04B91D,Music_PressedStartOnTitleScreen,Music_PressedStartOnTitleScreenEnd
	dl $04B91D,$04CFC9,UnknownData4,UnknownData4End
	dl $04CFC9,$04D19F,Music_TitleScreen,Music_TitleScreenEnd
	dl $04F9D9,$04FF85,Music_MajorCircuitMatch,Music_MajorCircuitMatchEnd
	dl $06A146,$06AA38,Music_Credits,Music_CreditsEnd
	dl $06D84F,$06DB55,Music_Tutorial,Music_TutorialEnd
	dl $2BF1BE,$2BF665,Music_WorldCircuitMatch,Music_WorldCircuitMatchEnd
	dl $2EF1C7,$2EF5A8,Music_SpecialCircuitMatch,Music_SpecialCircuitMatchEnd
	dl $34F95A,$34FE04,Music_MinorCircuitMatch,Music_MinorCircuitMatchEnd
MusicPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $02903D,$02906D,BRRFile00,BRRFile00End
	dl $02906D,$029096,BRRFile01,BRRFile01End
	dl $029096,$02979E,BRRFile02,BRRFile02End
	dl $02979E,$029FCD,BRRFile03,BRRFile03End
	dl $029FCD,$02A55F,BRRFile04,BRRFile04End
	dl $02A55F,$02AC68,BRRFile05,BRRFile05End
	dl $02AC68,$02B1B9,BRRFile06,BRRFile06End
	dl $02B1B9,$02B683,BRRFile07,BRRFile07End
	dl $02B683,$02BC5A,BRRFile08,BRRFile08End
	dl $02BC5A,$02BC90,BRRFile09,BRRFile09End
	dl $02BC90,$02BD2F,BRRFile0A,BRRFile0AEnd
	dl $02BD2F,$02C564,BRRFile0B,BRRFile0BEnd
	dl $02C564,$02C56D,BRRFile0C,BRRFile0CEnd
	dl $02C56D,$02C5BD,BRRFile0D,BRRFile0DEnd
	dl $02C5BD,$02C8D0,BRRFile0E,BRRFile0EEnd
	dl $02C8D0,$02CE7F,BRRFile0F,BRRFile0FEnd
	dl $02CE7F,$02D2CB,BRRFile10,BRRFile10End
	dl $02D2CB,$02DAB5,BRRFile11,BRRFile11End
	dl $02DAB5,$02E275,BRRFile12,BRRFile12End
	dl $02E275,$02E3C9,BRRFile13,BRRFile13End
	dl $038000,$0388B8,BRRFile14,BRRFile14End
	dl $0388B8,$038F27,BRRFile15,BRRFile15End
	dl $038F27,$039488,BRRFile16,BRRFile16End
	dl $039488,$0396D1,BRRFile17,BRRFile17End
	dl $0396D1,$039930,BRRFile18,BRRFile18End
	dl $039930,$03A298,BRRFile19,BRRFile19End
	dl $03A298,$03A613,BRRFile1A,BRRFile1AEnd
	dl $03A613,$03ACAF,BRRFile1B,BRRFile1BEnd
	dl $03ACAF,$03B1E3,BRRFile1C,BRRFile1CEnd
	dl $03B1E3,$03B234,BRRFile1D,BRRFile1DEnd
	dl $03B234,$03B9B1,BRRFile1E,BRRFile1EEnd
	dl $02E3C9,$02E81A,BRR_Contender_Hurt,BRR_Contender_HurtEnd
	dl $02E81A,$02F50C,BRR_HeikeKagero_Laugh,BRR_HeikeKagero_LaughEnd
	dl $02F50C,$02FF3C,BRR_GabbyJay_KnockedDown,BRR_GabbyJay_KnockedDownEnd
	dl $02FF3C,$02FF50,BRR_Leap,BRR_LeapEnd
	dl $02FF50,$02FF68,BRR_MediumFootstep,BRR_MediumFootstepEnd
	dl $03DD87,$03F351,BRR_Wind,BRR_WindEnd
	dl $03F351,$03F97F,BRR_RickBruiser_Laugh,BRR_RickBruiser_LaughEnd
	dl $03F97F,$03FFF2,BRR_GabbyJay_ComeOn,BRR_GabbyJay_ComeOnEnd
	dl $04D19F,$04DEFE,BRR_Announcer_Fight,BRR_Announcer_FightEnd
	dl $04DEFE,$04EC61,BRR_Announcer_Eight,BRR_Announcer_EightEnd
	dl $04EC61,$04F9D9,BRR_SuperMachoMan_LariatSwing,BRR_SuperMachoMan_LariatSwingEnd
	dl $058000,$058D5A,BRR_Announcer_Two,BRR_Announcer_TwoEnd
	dl $058D5A,$059AB4,BRR_Announcer_Seven,BRR_Announcer_SevenEnd
	dl $059AB4,$05A80E,BRR_Announcer_Nine,BRR_Announcer_NineEnd
	dl $05A80E,$05B568,BRR_Announcer_Ten,BRR_Announcer_TenEnd
	dl $05B568,$05C2C2,BRR_Announcer_Four,BRR_Announcer_FourEnd
	dl $05C2C2,$05D01C,BRR_Announcer_Six,BRR_Announcer_SixEnd
	dl $05D01C,$05D844,BRR_AudienceCheer,BRR_AudienceCheerEnd
	dl $05D844,$05E355,BRR_MaskedMuscle_Adios,BRR_MaskedMuscle_AdiosEnd
	dl $05E355,$05EE6A,BRR_BaldBull_Laugh,BRR_BaldBull_LaughEnd
	dl $05EE6A,$05F82B,BRR_GabbyJay_Yay,BRR_GabbyJay_YayEnd
	dl $05F82B,$05F83C,BRR_Grabbed,BRR_GrabbedEnd
	dl $05F83C,$05F84D,BRR_Headbutt,BRR_HeadbuttEnd
	dl $05F84D,$05F865,BRR_HeavyFootstep,BRR_HeavyFootstepEnd
	dl $05F865,$05FFCB,BRR_NarcisPrince_AngryGrunt,BRR_NarcisPrince_AngryGruntEnd
	dl $068000,$068A63,BRR_NarcisPrince_KnockedDown,BRR_NarcisPrince_KnockedDownEnd
	dl $068A63,$0694EA,BRR_HoyQuarlow_KnockedDown,BRR_HoyQuarlow_KnockedDownEnd
	dl $0694EA,$069C1D,BRR_BearHugger_Hurt,BRR_BearHugger_HurtEnd
	dl $069C1D,$06A0BC,BRR_BaldBull_Hoo,BRR_BaldBull_HooEnd
	dl $06A0BC,$06A0CE,BRR_Squeak,BRR_SqueakEnd
	dl $06A0CE,$06A0E6,BRR_LightFootstep,BRR_LightFootstepEnd
	dl $06A0E6,$06A146,BRR_MadClown_Jump,BRR_MadClown_JumpEnd
	dl $06AA38,$06B642,BRR_Contender_TooClose,BRR_Contender_TooCloseEnd
	dl $06B642,$06C3FF,BRR_Announcer_Knockout,BRR_Announcer_KnockoutEnd
	dl $06C3FF,$06D5E9,BRR_NickBruiser_RapidPunchHurt,BRR_NickBruiser_RapidPunchHurtEnd
	dl $06D5E9,$06D84F,BRR_BaldBull_BullCharge,BRR_BaldBull_BullChargeEnd
	dl $06DB55,$06E47D,BRR_MrSandman_GoodNight,BRR_MrSandman_GoodNightEnd
	dl $06E47D,$06EF16,BRR_MaskedMuscle_KnockedDown,BRR_MaskedMuscle_KnockedDownEnd
	dl $06EF16,$06F6F8,BRR_TimeOutAudience,BRR_TimeOutAudienceEnd
	dl $21E6C7,$21EDE8,BRR_RickBruiser_Hurt,BRR_RickBruiser_HurtEnd
	dl $21EDE8,$21F26D,BRR_GabbyJay_Hurt,BRR_GabbyJay_HurtEnd
	dl $21F26D,$21FFC9,BRR_Announcer_One,BRR_Announcer_OneEnd
	dl $22E0B1,$22F2C0,BRR_Announcer_HeikeKagero,BRR_Announcer_HeikeKageroEnd
	dl $22F2C0,$22FFFE,BRR_Contender_PieceOfCake,BRR_Contender_PieceOfCakeEnd
	dl $26E669,$26F234,BRR_Contender_GotHim,BRR_Contender_GotHimEnd
	dl $26F234,$26FFFA,BRR_Announcer_Five,BRR_Announcer_FiveEnd
	dl $27E6C7,$27F27D,BRR_BearHugger_StomachPunch,BRR_BearHugger_StomachPunchEnd
	dl $27F27D,$27FFFB,BRR_HoyQuarlow_Hwaah,BRR_HoyQuarlow_HwaahEnd
	dl $29E47D,$29F3F6,BRR_BellRing,BRR_BellRingEnd
	dl $29F3F6,$29FFEB,BRR_HeikeKagero_KnockedDown,BRR_HeikeKagero_KnockedDownEnd
	dl $2AE33C,$2AF506,BRR_Announcer_HoyQuarlow,BRR_Announcer_HoyQuarlowEnd
	dl $2AF506,$2AFFBA,BRR_PistonHurricane_KnockedDown,BRR_PistonHurricane_KnockedDownEnd
	dl $2BDF6D,$2BF1BE,BRR_Announcer_MadClown,BRR_Announcer_MadClownEnd
	dl $2BF665,$2BFF60,BRR_BearHugger_KnockedDown,BRR_BearHugger_KnockedDownEnd
	dl $2DE290,$2DF499,BRR_Announcer_NarcisPrince,BRR_Announcer_NarcisPrinceEnd
	dl $2DF499,$2DFFD4,BRR_Contender_KnockedDown,BRR_Contender_KnockedDownEnd
	dl $2EDF94,$2EF1C7,BRR_Announcer_BearHugger,BRR_AAnnouncer_BearHuggerEnd
	dl $2EF5A8,$2EFFF9,BRR_RickBruiser_KnockedDown,BRR_RickBruiser_KnockedDownEnd
	dl $2FDCF6,$2FEF4D,BRR_Announcer_BaldBull,BRR_Announcer_BaldBullEnd
	dl $2FEF4D,$2FF4D5,BRR_MaskedMuscle_Hurt,BRR_MaskedMuscle_HurtEnd
	dl $2FF4D5,$2FFFEC,BRR_BaldBull_KnockedDown,BRR_BaldBull_KnockedDownEnd
	dl $30E1A4,$30F3AF,BRR_Announcer_BobCharlie,BRR_Announcer_BobCharlieEnd
	dl $30F3AF,$30FA6A,BRR_DragnChan_Auuugh,BRR_DragnChan_AuuughEnd
	dl $30FA6A,$30FFCC,BRR_MaskedMuscle_Spit,BRR_MaskedMuscle_SpitEnd
	dl $31E627,$31F24C,BRR_Contender_RightOn,BRR_Contender_RightOnEnd
	dl $31F24C,$328000,BRR_Announcer_TimeUp,BRR_Announcer_TimeUpEnd
	dl $32E3E9,$32F5AE,BRR_Announcer_NickBruiser,BRR_Announcer_NickBruiserEnd
	dl $32F5AE,$32FFDB,BRR_DragonChan_KnockedDown,BRR_DragonChan_KnockedDownEnd
	dl $33DCAC,$33EF03,BRR_Announcer_DragonChan,BRR_Announcer_DragonChanEnd
	dl $33EF03,$33F5FD,BRR_PistonHurricane_AngryGrunt,BRR_PistonHurricane_AngryGruntEnd
	dl $33F5FD,$33FFFD,BRR_NickBruiser_DismissiveGrunt,BRR_NickBruiser_DismissiveGruntEnd
	dl $34E0FF,$34F30C,BRR_Announcer_RickBruiser,BRR_Announcer_RickBruiserEnd
	dl $34F30C,$34F95A,BRR_PistonHurricane_Hurt,BRR_PistonHurricane_HurtEnd
	dl $34FE04,$34FFD3,BRR_ArmFlex,BRR_ArmFlexEnd
	dl $35DFC0,$35F1EA,BRR_Announcer_GabbyJay,BRR_Announcer_GabbyJayEnd
	dl $35F1EA,$35F879,BRR_NarcisPrince_Laugh,BRR_NarcisPrince_LaughEnd
	dl $35F879,$35FFE1,BRR_BaldBull_Hurt,BRR_BaldBull_HurtEnd
	dl $37D5D3,$37E860,BRR_Announcer_AranRyan,BRR_Announcer_AranRyanEnd
	dl $37E860,$37FB1A,BRR_Announcer_PistonHurricane,BRR_Announcer_PistonHurricaneEnd
	dl $37FB1A,$37FFE3,BRR_DragonChan_Hurt,BRR_DragonChan_HurtEnd
	dl $38D5EF,$38E846,BRR_Announcer_MrSandman,BRR_Announcer_MrSandmanEnd
	dl $38E846,$38FAB8,BRR_Announcer_SuperMachoMan,BRR_Announcer_SuperMachoManEnd
	dl $38FAB8,$38FFCD,BRR_BobCharlie_Ooo,BRR_BobCharlie_OooEnd
	dl $39D1AD,$39E48E,BRR_Announcer_MaskedMuscle,BRR_Announcer_MaskedMuscleEnd
	dl $39E48E,$39F874,BRR_HeikeKagero_HairAttack,BRR_HeikeKagero_HairAttackEnd
	dl $39F874,$39FFF3,BRR_DragonChan_HiYah,BRR_DragonChan_HiYahEnd
	dl $3BE598,$3BF44D,BRR_NarcisPrince_Hurt,BRR_NarcisPrince_HurtEnd
	dl $3BF44D,$3BFFD3,BRR_NickBruiser_KnockedDown,BRR_NickBruiser_KnockedDownEnd
	dl $3CE6AD,$3CF48E,BRR_Announcer_Three,BRR_Announcer_ThreeEnd
	dl $3CF48E,$3CFBAC,BRR_AranRyan_Grunt,BRR_AranRyan_GruntEnd
	dl $3CFBAC,$3CFFF8,BRR_HoyQuarlow_Laugh,BRR_HoyQuarlow_LaughEnd
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Sprite_DragonChanHeikeKageroIndex9E:
	db "GFX_Sprite_DragonChanHeikeKageroIndex9E.bin"
GFX_Sprite_DragonChanHeikeKageroIndex9EEnd:
GFX_Sprite_DragonChanHeikeKageroIndex9F:
	db "GFX_Sprite_DragonChanHeikeKageroIndex9F.bin"
GFX_Sprite_DragonChanHeikeKageroIndex9FEnd:
GFX_Sprite_PistonHurricaneAranRyanIndex7F:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex7F.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex7FEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex90:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex90.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex90End:
GFX_Sprite_BaldBullMrSandmanIndex70:
	db "GFX_Sprite_BaldBullMrSandmanIndex70.bin"
GFX_Sprite_BaldBullMrSandmanIndex70End:
GFX_Sprite_PistonHurricaneAranRyanIndex49:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex49.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex49End:
GFX_Sprite_PistonHurricaneAranRyanIndex4A:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex4A.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex4AEnd:
GFX_Player_BoxingGloves:
	db "GFX_Player_BoxingGloves.bin"
GFX_Player_BoxingGlovesEnd:
GFX_Sprite_GabbyJayIcon:
	db "GFX_Sprite_GabbyJayIcon.bin"
GFX_Sprite_GabbyJayIconEnd:
GFX_Sprite_BearHuggerIcon:
	db "GFX_Sprite_BearHuggerIcon.bin"
GFX_Sprite_BearHuggerIconEnd:
GFX_Sprite_PistonHurricaneIcon:
	db "GFX_Sprite_PistonHurricaneIcon.bin"
GFX_Sprite_PistonHurricaneIconEnd:
GFX_Sprite_BaldBullIcon:
	db "GFX_Sprite_BaldBullIcon.bin"
GFX_Sprite_BaldBullIconEnd:
GFX_Sprite_BobCharlieIcon:
	db "GFX_Sprite_BobCharlieIcon.bin"
GFX_Sprite_BobCharlieIconEnd:
GFX_Sprite_DragonChanIcon:
	db "GFX_Sprite_DragonChanIcon.bin"
GFX_Sprite_DragonChanIconEnd:
GFX_Sprite_MaskedMuscleIcon:
	db "GFX_Sprite_MaskedMuscleIcon.bin"
GFX_Sprite_MaskedMuscleIconEnd:
GFX_Sprite_MrSandmanIcon:
	db "GFX_Sprite_MrSandmanIcon.bin"
GFX_Sprite_MrSandmanIconEnd:
GFX_Sprite_AranRyanIcon:
	db "GFX_Sprite_AranRyanIcon.bin"
GFX_Sprite_AranRyanIconEnd:
GFX_Sprite_HeikeKageroIcon:
	db "GFX_Sprite_HeikeKageroIcon.bin"
GFX_Sprite_HeikeKageroIconEnd:
GFX_Sprite_MadClownIcon:
	db "GFX_Sprite_MadClownIcon.bin"
GFX_Sprite_MadClownIconEnd:
GFX_Sprite_SuperMachoManIcon:
	db "GFX_Sprite_SuperMachoManIcon.bin"
GFX_Sprite_SuperMachoManIconEnd:
GFX_Sprite_NarcisPrinceIcon:
	db "GFX_Sprite_NarcisPrinceIcon.bin"
GFX_Sprite_NarcisPrinceIconEnd:
GFX_Sprite_HoyQuarlowIcon:
	db "GFX_Sprite_HoyQuarlowIcon.bin"
GFX_Sprite_HoyQuarlowIconEnd:
GFX_Sprite_RickBruiserIcon:
	db "GFX_Sprite_RickBruiserIcon.bin"
GFX_Sprite_RickBruiserIconEnd:
GFX_Sprite_NickBruiserIcon:
	db "GFX_Sprite_NickBruiserIcon.bin"
GFX_Sprite_NickBruiserIconEnd:
GFX_Sprite_ContenderIcon:
	db "GFX_Sprite_ContenderIcon.bin"
GFX_Sprite_ContenderIconEnd:
GFX_Sprite_RickBruiserNickBruiserIndex6A:
	db "GFX_Sprite_RickBruiserNickBruiserIndex6A.bin"
GFX_Sprite_RickBruiserNickBruiserIndex6AEnd:
GFX_Sprite_RickBruiserNickBruiserIndex6B:
	db "GFX_Sprite_RickBruiserNickBruiserIndex6B.bin"
GFX_Sprite_RickBruiserNickBruiserIndex6BEnd:
GFX_Layer1_ContenderIndex2F:
	db "GFX_Layer1_ContenderIndex2F.bin"
GFX_Layer1_ContenderIndex2FEnd:
GFX_Layer1_ContenderIndex30:
	db "GFX_Layer1_ContenderIndex30.bin"
GFX_Layer1_ContenderIndex30End:
GFX_Layer1_ContenderIndex31:
	db "GFX_Layer1_ContenderIndex31.bin"
GFX_Layer1_ContenderIndex31End:
GFX_Layer1_ContenderIndex32:
	db "GFX_Layer1_ContenderIndex32.bin"
GFX_Layer1_ContenderIndex32End:
GFX_Layer1_ContenderIndex33:
	db "GFX_Layer1_ContenderIndex33.bin"
GFX_Layer1_ContenderIndex33End:
GFX_Layer1_ContenderIndex34:
	db "GFX_Layer1_ContenderIndex34.bin"
GFX_Layer1_ContenderIndex34End:
GFX_Sprite_GabbyJayBobCharlieIndex4E:
	db "GFX_Sprite_GabbyJayBobCharlieIndex4E.bin"
GFX_Sprite_GabbyJayBobCharlieIndex4EEnd:
GFX_Sprite_RickBruiserNickBruiserIndex41:
	db "GFX_Sprite_RickBruiserNickBruiserIndex41.bin"
GFX_Sprite_RickBruiserNickBruiserIndex41End:
GFX_Sprite_RickBruiserNickBruiserIndex42:
	db "GFX_Sprite_RickBruiserNickBruiserIndex42.bin"
GFX_Sprite_RickBruiserNickBruiserIndex42End:
GFX_Sprite_RickBruiserNickBruiserIndex43:
	db "GFX_Sprite_RickBruiserNickBruiserIndex43.bin"
GFX_Sprite_RickBruiserNickBruiserIndex43End:
GFX_Sprite_DragonChanHeikeKageroIndex45:
	db "GFX_Sprite_DragonChanHeikeKageroIndex45.bin"
GFX_Sprite_DragonChanHeikeKageroIndex45End:
GFX_Sprite_DragonChanHeikeKageroIndex46:
	db "GFX_Sprite_DragonChanHeikeKageroIndex46.bin"
GFX_Sprite_DragonChanHeikeKageroIndex46End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex03:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex03.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex03End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex04:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex04.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex04End:
GFX_Sprite_RickBruiserNickBruiserIndex12:
	db "GFX_Sprite_RickBruiserNickBruiserIndex12.bin"
GFX_Sprite_RickBruiserNickBruiserIndex12End:
GFX_Sprite_RickBruiserNickBruiserIndex13:
	db "GFX_Sprite_RickBruiserNickBruiserIndex13.bin"
GFX_Sprite_RickBruiserNickBruiserIndex13End:
GFX_Sprite_RickBruiserNickBruiserIndex14:
	db "GFX_Sprite_RickBruiserNickBruiserIndex14.bin"
GFX_Sprite_RickBruiserNickBruiserIndex14End:
GFX_Sprite_RickBruiserNickBruiserIndex15:
	db "GFX_Sprite_RickBruiserNickBruiserIndex15.bin"
GFX_Sprite_RickBruiserNickBruiserIndex15End:
GFX_Sprite_RickBruiserNickBruiserIndex16:
	db "GFX_Sprite_RickBruiserNickBruiserIndex16.bin"
GFX_Sprite_RickBruiserNickBruiserIndex16End:
GFX_Sprite_RickBruiserNickBruiserIndex0A:
	db "GFX_Sprite_RickBruiserNickBruiserIndex0A.bin"
GFX_Sprite_RickBruiserNickBruiserIndex0AEnd:
GFX_Sprite_RickBruiserNickBruiserIndex0B:
	db "GFX_Sprite_RickBruiserNickBruiserIndex0B.bin"
GFX_Sprite_RickBruiserNickBruiserIndex0BEnd:
GFX_Sprite_RickBruiserNickBruiserIndex0C:
	db "GFX_Sprite_RickBruiserNickBruiserIndex0C.bin"
GFX_Sprite_RickBruiserNickBruiserIndex0CEnd:
GFX_Sprite_RickBruiserNickBruiserIndex4B:
	db "GFX_Sprite_RickBruiserNickBruiserIndex4B.bin"
GFX_Sprite_RickBruiserNickBruiserIndex4BEnd:
GFX_Sprite_RickBruiserNickBruiserIndex4C:
	db "GFX_Sprite_RickBruiserNickBruiserIndex4C.bin"
GFX_Sprite_RickBruiserNickBruiserIndex4CEnd:
GFX_Sprite_RickBruiserNickBruiserIndex4D:
	db "GFX_Sprite_RickBruiserNickBruiserIndex4D.bin"
GFX_Sprite_RickBruiserNickBruiserIndex4DEnd:
GFX_Sprite_RickBruiserNickBruiserIndex55:
	db "GFX_Sprite_RickBruiserNickBruiserIndex55.bin"
GFX_Sprite_RickBruiserNickBruiserIndex55End:
GFX_Sprite_RickBruiserNickBruiserIndex56:
	db "GFX_Sprite_RickBruiserNickBruiserIndex56.bin"
GFX_Sprite_RickBruiserNickBruiserIndex56End:
GFX_Sprite_RickBruiserNickBruiserIndex6C:
	db "GFX_Sprite_RickBruiserNickBruiserIndex6C.bin"
GFX_Sprite_RickBruiserNickBruiserIndex6CEnd:
GFX_Sprite_RickBruiserNickBruiserIndex6D:
	db "GFX_Sprite_RickBruiserNickBruiserIndex6D.bin"
GFX_Sprite_RickBruiserNickBruiserIndex6DEnd:
GFX_Sprite_RickBruiserNickBruiserIndex6E:
	db "GFX_Sprite_RickBruiserNickBruiserIndex6E.bin"
GFX_Sprite_RickBruiserNickBruiserIndex6EEnd:
GFX_Sprite_RickBruiserNickBruiserIndex74:
	db "GFX_Sprite_RickBruiserNickBruiserIndex74.bin"
GFX_Sprite_RickBruiserNickBruiserIndex74End:
GFX_Sprite_RickBruiserNickBruiserIndex75:
	db "GFX_Sprite_RickBruiserNickBruiserIndex75.bin"
GFX_Sprite_RickBruiserNickBruiserIndex75End:
GFX_Sprite_RickBruiserNickBruiserIndex76:
	db "GFX_Sprite_RickBruiserNickBruiserIndex76.bin"
GFX_Sprite_RickBruiserNickBruiserIndex76End:
GFX_Sprite_RickBruiserNickBruiserIndex50:
	db "GFX_Sprite_RickBruiserNickBruiserIndex50.bin"
GFX_Sprite_RickBruiserNickBruiserIndex50End:
GFX_Sprite_RickBruiserNickBruiserIndex51:
	db "GFX_Sprite_RickBruiserNickBruiserIndex51.bin"
GFX_Sprite_RickBruiserNickBruiserIndex51End:
GFX_Sprite_RickBruiserNickBruiserIndex52:
	db "GFX_Sprite_RickBruiserNickBruiserIndex52.bin"
GFX_Sprite_RickBruiserNickBruiserIndex52End:
GFX_Sprite_RickBruiserNickBruiserIndex58:
	db "GFX_Sprite_RickBruiserNickBruiserIndex58.bin"
GFX_Sprite_RickBruiserNickBruiserIndex58End:
GFX_Sprite_RickBruiserNickBruiserIndex08:
	db "GFX_Sprite_RickBruiserNickBruiserIndex08.bin"
GFX_Sprite_RickBruiserNickBruiserIndex08End:
GFX_Sprite_RickBruiserNickBruiserIndex09:
	db "GFX_Sprite_RickBruiserNickBruiserIndex09.bin"
GFX_Sprite_RickBruiserNickBruiserIndex09End:
GFX_Sprite_RickBruiserNickBruiserIndex20:
	db "GFX_Sprite_RickBruiserNickBruiserIndex20.bin"
GFX_Sprite_RickBruiserNickBruiserIndex20End:
GFX_Sprite_RickBruiserNickBruiserIndex21:
	db "GFX_Sprite_RickBruiserNickBruiserIndex21.bin"
GFX_Sprite_RickBruiserNickBruiserIndex21End:
GFX_Sprite_RickBruiserNickBruiserIndex22:
	db "GFX_Sprite_RickBruiserNickBruiserIndex22.bin"
GFX_Sprite_RickBruiserNickBruiserIndex22End:
GFX_Sprite_RickBruiserNickBruiserIndex71:
	db "GFX_Sprite_RickBruiserNickBruiserIndex71.bin"
GFX_Sprite_RickBruiserNickBruiserIndex71End:
GFX_Sprite_RickBruiserNickBruiserIndex72:
	db "GFX_Sprite_RickBruiserNickBruiserIndex72.bin"
GFX_Sprite_RickBruiserNickBruiserIndex72End:
GFX_Sprite_RickBruiserNickBruiserIndex73:
	db "GFX_Sprite_RickBruiserNickBruiserIndex73.bin"
GFX_Sprite_RickBruiserNickBruiserIndex73End:
GFX_Sprite_HoyQuarlowIndex25:
	db "GFX_Sprite_HoyQuarlowIndex25.bin"
GFX_Sprite_HoyQuarlowIndex25End:
GFX_Sprite_HoyQuarlowIndex26:
	db "GFX_Sprite_HoyQuarlowIndex26.bin"
GFX_Sprite_HoyQuarlowIndex26End:
GFX_Sprite_HoyQuarlowIndex27:
	db "GFX_Sprite_HoyQuarlowIndex27.bin"
GFX_Sprite_HoyQuarlowIndex27End:
GFX_Sprite_HoyQuarlowIndex46:
	db "GFX_Sprite_HoyQuarlowIndex46.bin"
GFX_Sprite_HoyQuarlowIndex46End:
GFX_Sprite_HoyQuarlowIndex47:
	db "GFX_Sprite_HoyQuarlowIndex47.bin"
GFX_Sprite_HoyQuarlowIndex47End:
GFX_Sprite_HoyQuarlowIndex48:
	db "GFX_Sprite_HoyQuarlowIndex48.bin"
GFX_Sprite_HoyQuarlowIndex48End:
GFX_Sprite_HoyQuarlowIndex5F:
	db "GFX_Sprite_HoyQuarlowIndex5F.bin"
GFX_Sprite_HoyQuarlowIndex5FEnd:
GFX_Sprite_HoyQuarlowIndex60:
	db "GFX_Sprite_HoyQuarlowIndex60.bin"
GFX_Sprite_HoyQuarlowIndex60End:
GFX_Sprite_HoyQuarlowIndex61:
	db "GFX_Sprite_HoyQuarlowIndex61.bin"
GFX_Sprite_HoyQuarlowIndex61End:
GFX_Sprite_HoyQuarlowIndex6E:
	db "GFX_Sprite_HoyQuarlowIndex6E.bin"
GFX_Sprite_HoyQuarlowIndex6EEnd:
GFX_Sprite_HoyQuarlowIndex6F:
	db "GFX_Sprite_HoyQuarlowIndex6F.bin"
GFX_Sprite_HoyQuarlowIndex6FEnd:
GFX_Sprite_HoyQuarlowIndex70:
	db "GFX_Sprite_HoyQuarlowIndex70.bin"
GFX_Sprite_HoyQuarlowIndex70End:
GFX_Sprite_RickBruiserNickBruiserIndex00:
	db "GFX_Sprite_RickBruiserNickBruiserIndex00.bin"
GFX_Sprite_RickBruiserNickBruiserIndex00End:
GFX_Sprite_RickBruiserNickBruiserIndex01:
	db "GFX_Sprite_RickBruiserNickBruiserIndex01.bin"
GFX_Sprite_RickBruiserNickBruiserIndex01End:
GFX_Sprite_RickBruiserNickBruiserIndex02:
	db "GFX_Sprite_RickBruiserNickBruiserIndex02.bin"
GFX_Sprite_RickBruiserNickBruiserIndex02End:
GFX_Sprite_RickBruiserNickBruiserIndex0F:
	db "GFX_Sprite_RickBruiserNickBruiserIndex0F.bin"
GFX_Sprite_RickBruiserNickBruiserIndex0FEnd:
GFX_Sprite_RickBruiserNickBruiserIndex10:
	db "GFX_Sprite_RickBruiserNickBruiserIndex10.bin"
GFX_Sprite_RickBruiserNickBruiserIndex10End:
GFX_Sprite_RickBruiserNickBruiserIndex11:
	db "GFX_Sprite_RickBruiserNickBruiserIndex11.bin"
GFX_Sprite_RickBruiserNickBruiserIndex11End:
GFX_Sprite_RickBruiserNickBruiserIndex2C:
	db "GFX_Sprite_RickBruiserNickBruiserIndex2C.bin"
GFX_Sprite_RickBruiserNickBruiserIndex2CEnd:
GFX_Sprite_RickBruiserNickBruiserIndex2D:
	db "GFX_Sprite_RickBruiserNickBruiserIndex2D.bin"
GFX_Sprite_RickBruiserNickBruiserIndex2DEnd:
GFX_Sprite_RickBruiserNickBruiserIndex2E:
	db "GFX_Sprite_RickBruiserNickBruiserIndex2E.bin"
GFX_Sprite_RickBruiserNickBruiserIndex2EEnd:
GFX_Sprite_RickBruiserNickBruiserIndex2F:
	db "GFX_Sprite_RickBruiserNickBruiserIndex2F.bin"
GFX_Sprite_RickBruiserNickBruiserIndex2FEnd:
GFX_Sprite_HoyQuarlowIndex16:
	db "GFX_Sprite_HoyQuarlowIndex16.bin"
GFX_Sprite_HoyQuarlowIndex16End:
GFX_Sprite_HoyQuarlowIndex17:
	db "GFX_Sprite_HoyQuarlowIndex17.bin"
GFX_Sprite_HoyQuarlowIndex17End:
GFX_Sprite_HoyQuarlowIndex18:
	db "GFX_Sprite_HoyQuarlowIndex18.bin"
GFX_Sprite_HoyQuarlowIndex18End:
GFX_Sprite_HoyQuarlowIndex50:
	db "GFX_Sprite_HoyQuarlowIndex50.bin"
GFX_Sprite_HoyQuarlowIndex50End:
GFX_Sprite_HoyQuarlowIndex71:
	db "GFX_Sprite_HoyQuarlowIndex71.bin"
GFX_Sprite_HoyQuarlowIndex71End:
GFX_Sprite_HoyQuarlowIndex72:
	db "GFX_Sprite_HoyQuarlowIndex72.bin"
GFX_Sprite_HoyQuarlowIndex72End:
GFX_Sprite_HoyQuarlowIndex73:
	db "GFX_Sprite_HoyQuarlowIndex73.bin"
GFX_Sprite_HoyQuarlowIndex73End:
GFX_Sprite_NarcisPrinceIndex0D:
	db "GFX_Sprite_NarcisPrinceIndex0D.bin"
GFX_Sprite_NarcisPrinceIndex0DEnd:
GFX_Sprite_NarcisPrinceIndex60:
	db "GFX_Sprite_NarcisPrinceIndex60.bin"
GFX_Sprite_NarcisPrinceIndex60End:
GFX_Sprite_HoyQuarlowIndex5C:
	db "GFX_Sprite_HoyQuarlowIndex5C.bin"
GFX_Sprite_HoyQuarlowIndex5CEnd:
GFX_Sprite_HoyQuarlowIndex5D:
	db "GFX_Sprite_HoyQuarlowIndex5D.bin"
GFX_Sprite_HoyQuarlowIndex5DEnd:
GFX_Sprite_HoyQuarlowIndex5E:
	db "GFX_Sprite_HoyQuarlowIndex5E.bin"
GFX_Sprite_HoyQuarlowIndex5EEnd:
GFX_Sprite_HoyQuarlowIndex05:
	db "GFX_Sprite_HoyQuarlowIndex05.bin"
GFX_Sprite_HoyQuarlowIndex05End:
GFX_Sprite_HoyQuarlowIndex06:
	db "GFX_Sprite_HoyQuarlowIndex06.bin"
GFX_Sprite_HoyQuarlowIndex06End:
GFX_Sprite_HoyQuarlowIndex07:
	db "GFX_Sprite_HoyQuarlowIndex07.bin"
GFX_Sprite_HoyQuarlowIndex07End:
GFX_Sprite_HoyQuarlowIndex0A:
	db "GFX_Sprite_HoyQuarlowIndex0A.bin"
GFX_Sprite_HoyQuarlowIndex0AEnd:
GFX_Sprite_HoyQuarlowIndex0B:
	db "GFX_Sprite_HoyQuarlowIndex0B.bin"
GFX_Sprite_HoyQuarlowIndex0BEnd:
GFX_Sprite_HoyQuarlowIndex0C:
	db "GFX_Sprite_HoyQuarlowIndex0C.bin"
GFX_Sprite_HoyQuarlowIndex0CEnd:
GFX_Sprite_HoyQuarlowIndex0D:
	db "GFX_Sprite_HoyQuarlowIndex0D.bin"
GFX_Sprite_HoyQuarlowIndex0DEnd:
GFX_Sprite_HoyQuarlowIndex0E:
	db "GFX_Sprite_HoyQuarlowIndex0E.bin"
GFX_Sprite_HoyQuarlowIndex0EEnd:
GFX_Sprite_HoyQuarlowIndex0F:
	db "GFX_Sprite_HoyQuarlowIndex0F.bin"
GFX_Sprite_HoyQuarlowIndex0FEnd:
GFX_Sprite_HoyQuarlowIndex19:
	db "GFX_Sprite_HoyQuarlowIndex19.bin"
GFX_Sprite_HoyQuarlowIndex19End:
GFX_Sprite_HoyQuarlowIndex1A:
	db "GFX_Sprite_HoyQuarlowIndex1A.bin"
GFX_Sprite_HoyQuarlowIndex1AEnd:
GFX_Sprite_HoyQuarlowIndex1B:
	db "GFX_Sprite_HoyQuarlowIndex1B.bin"
GFX_Sprite_HoyQuarlowIndex1BEnd:
GFX_Sprite_HoyQuarlowIndex43:
	db "GFX_Sprite_HoyQuarlowIndex43.bin"
GFX_Sprite_HoyQuarlowIndex43End:
GFX_Sprite_HoyQuarlowIndex44:
	db "GFX_Sprite_HoyQuarlowIndex44.bin"
GFX_Sprite_HoyQuarlowIndex44End:
GFX_Sprite_HoyQuarlowIndex45:
	db "GFX_Sprite_HoyQuarlowIndex45.bin"
GFX_Sprite_HoyQuarlowIndex45End:
GFX_Sprite_HoyQuarlowIndex4C:
	db "GFX_Sprite_HoyQuarlowIndex4C.bin"
GFX_Sprite_HoyQuarlowIndex4CEnd:
GFX_Sprite_HoyQuarlowIndex4D:
	db "GFX_Sprite_HoyQuarlowIndex4D.bin"
GFX_Sprite_HoyQuarlowIndex4DEnd:
GFX_Sprite_HoyQuarlowIndex4E:
	db "GFX_Sprite_HoyQuarlowIndex4E.bin"
GFX_Sprite_HoyQuarlowIndex4EEnd:
GFX_Sprite_HoyQuarlowIndex4F:
	db "GFX_Sprite_HoyQuarlowIndex4F.bin"
GFX_Sprite_HoyQuarlowIndex4FEnd:
GFX_Sprite_HoyQuarlowIndex62:
	db "GFX_Sprite_HoyQuarlowIndex62.bin"
GFX_Sprite_HoyQuarlowIndex62End:
GFX_Sprite_HoyQuarlowIndex63:
	db "GFX_Sprite_HoyQuarlowIndex63.bin"
GFX_Sprite_HoyQuarlowIndex63End:
GFX_Sprite_HoyQuarlowIndex64:
	db "GFX_Sprite_HoyQuarlowIndex64.bin"
GFX_Sprite_HoyQuarlowIndex64End:
GFX_Sprite_NarcisPrinceIndex03:
	db "GFX_Sprite_NarcisPrinceIndex03.bin"
GFX_Sprite_NarcisPrinceIndex03End:
GFX_Sprite_NarcisPrinceIndex04:
	db "GFX_Sprite_NarcisPrinceIndex04.bin"
GFX_Sprite_NarcisPrinceIndex04End:
GFX_Sprite_NarcisPrinceIndex2A:
	db "GFX_Sprite_NarcisPrinceIndex2A.bin"
GFX_Sprite_NarcisPrinceIndex2AEnd:
GFX_Sprite_NarcisPrinceIndex2B:
	db "GFX_Sprite_NarcisPrinceIndex2B.bin"
GFX_Sprite_NarcisPrinceIndex2BEnd:
GFX_Sprite_NarcisPrinceIndex2C:
	db "GFX_Sprite_NarcisPrinceIndex2C.bin"
GFX_Sprite_NarcisPrinceIndex2CEnd:
GFX_Sprite_NarcisPrinceIndex39:
	db "GFX_Sprite_NarcisPrinceIndex39.bin"
GFX_Sprite_NarcisPrinceIndex39End:
GFX_Sprite_NarcisPrinceIndex3A:
	db "GFX_Sprite_NarcisPrinceIndex3A.bin"
GFX_Sprite_NarcisPrinceIndex3AEnd:
GFX_Sprite_NarcisPrinceIndex09:
	db "GFX_Sprite_NarcisPrinceIndex09.bin"
GFX_Sprite_NarcisPrinceIndex09End:
GFX_Sprite_NarcisPrinceIndex0A:
	db "GFX_Sprite_NarcisPrinceIndex0A.bin"
GFX_Sprite_NarcisPrinceIndex0AEnd:
GFX_Sprite_NarcisPrinceIndex17:
	db "GFX_Sprite_NarcisPrinceIndex17.bin"
GFX_Sprite_NarcisPrinceIndex17End:
GFX_Sprite_NarcisPrinceIndex5F:
	db "GFX_Sprite_NarcisPrinceIndex5F.bin"
GFX_Sprite_NarcisPrinceIndex5FEnd:
GFX_Sprite_NarcisPrinceIndex64:
	db "GFX_Sprite_NarcisPrinceIndex64.bin"
GFX_Sprite_NarcisPrinceIndex64End:
GFX_Sprite_NarcisPrinceIndex65:
	db "GFX_Sprite_NarcisPrinceIndex65.bin"
GFX_Sprite_NarcisPrinceIndex65End:
GFX_Sprite_NarcisPrinceIndex63:
	db "GFX_Sprite_NarcisPrinceIndex63.bin"
GFX_Sprite_NarcisPrinceIndex63End:
GFX_Sprite_NarcisPrinceIndex68:
	db "GFX_Sprite_NarcisPrinceIndex68.bin"
GFX_Sprite_NarcisPrinceIndex68End:
GFX_Sprite_NarcisPrinceIndex71:
	db "GFX_Sprite_NarcisPrinceIndex71.bin"
GFX_Sprite_NarcisPrinceIndex71End:
GFX_Sprite_NarcisPrinceIndex0B:
	db "GFX_Sprite_NarcisPrinceIndex0B.bin"
GFX_Sprite_NarcisPrinceIndex0BEnd:
GFX_Sprite_NarcisPrinceIndex0C:
	db "GFX_Sprite_NarcisPrinceIndex0C.bin"
GFX_Sprite_NarcisPrinceIndex0CEnd:
GFX_Sprite_NarcisPrinceIndex27:
	db "GFX_Sprite_NarcisPrinceIndex27.bin"
GFX_Sprite_NarcisPrinceIndex27End:
GFX_Sprite_NarcisPrinceIndex28:
	db "GFX_Sprite_NarcisPrinceIndex28.bin"
GFX_Sprite_NarcisPrinceIndex28End:
GFX_Sprite_NarcisPrinceIndex29:
	db "GFX_Sprite_NarcisPrinceIndex29.bin"
GFX_Sprite_NarcisPrinceIndex29End:
GFX_Sprite_NarcisPrinceIndex5B:
	db "GFX_Sprite_NarcisPrinceIndex5B.bin"
GFX_Sprite_NarcisPrinceIndex5BEnd:
GFX_Sprite_NarcisPrinceIndex61:
	db "GFX_Sprite_NarcisPrinceIndex61.bin"
GFX_Sprite_NarcisPrinceIndex61End:
GFX_Sprite_NarcisPrinceIndex62:
	db "GFX_Sprite_NarcisPrinceIndex62.bin"
GFX_Sprite_NarcisPrinceIndex62End:
GFX_Sprite_NarcisPrinceIndex66:
	db "GFX_Sprite_NarcisPrinceIndex66.bin"
GFX_Sprite_NarcisPrinceIndex66End:
GFX_Sprite_NarcisPrinceIndex69:
	db "GFX_Sprite_NarcisPrinceIndex69.bin"
GFX_Sprite_NarcisPrinceIndex69End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex4D:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex4D.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex4DEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex4E:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex4E.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex4EEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex51:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex51.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex51End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex52:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex52.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex52End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex53:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex53.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex53End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex54:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex54.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex54End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex55:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex55.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex55End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex56:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex56.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex56End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex5A:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex5A.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex5AEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex5B:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex5B.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex5BEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex5C:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex5C.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex5CEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex64:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex64.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex64End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex65:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex65.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex65End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex66:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex66.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex66End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex67:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex67.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex67End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex72:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex72.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex72End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex73:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex73.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex73End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex74:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex74.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex74End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex75:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex75.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex75End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex76:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex76.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex76End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex77:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex77.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex77End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex78:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex78.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex78End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex79:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex79.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex79End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex7C:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex7C.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex7CEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex7D:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex7D.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex7DEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex81:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex81.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex81End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex82:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex82.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex82End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex83:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex83.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex83End:
GFX_Sprite_BearHuggerMadClownIndex2B:
	db "GFX_Sprite_BearHuggerMadClownIndex2B.bin"
GFX_Sprite_BearHuggerMadClownIndex2BEnd:
GFX_Sprite_BearHuggerMadClownIndex2C:
	db "GFX_Sprite_BearHuggerMadClownIndex2C.bin"
GFX_Sprite_BearHuggerMadClownIndex2CEnd:
GFX_Sprite_BearHuggerMadClownIndex2D:
	db "GFX_Sprite_BearHuggerMadClownIndex2D.bin"
GFX_Sprite_BearHuggerMadClownIndex2DEnd:
GFX_Sprite_BearHuggerMadClownIndex2E:
	db "GFX_Sprite_BearHuggerMadClownIndex2E.bin"
GFX_Sprite_BearHuggerMadClownIndex2EEnd:
GFX_Sprite_BearHuggerMadClownIndex2F:
	db "GFX_Sprite_BearHuggerMadClownIndex2F.bin"
GFX_Sprite_BearHuggerMadClownIndex2FEnd:
GFX_Sprite_BearHuggerMadClownIndex30:
	db "GFX_Sprite_BearHuggerMadClownIndex30.bin"
GFX_Sprite_BearHuggerMadClownIndex30End:
GFX_Sprite_BearHuggerMadClownIndex31:
	db "GFX_Sprite_BearHuggerMadClownIndex31.bin"
GFX_Sprite_BearHuggerMadClownIndex31End:
GFX_Sprite_BearHuggerMadClownIndex34:
	db "GFX_Sprite_BearHuggerMadClownIndex34.bin"
GFX_Sprite_BearHuggerMadClownIndex34End:
GFX_Sprite_BearHuggerMadClownIndex3A:
	db "GFX_Sprite_BearHuggerMadClownIndex3A.bin"
GFX_Sprite_BearHuggerMadClownIndex3AEnd:
GFX_Sprite_BearHuggerMadClownIndex3B:
	db "GFX_Sprite_BearHuggerMadClownIndex3B.bin"
GFX_Sprite_BearHuggerMadClownIndex3BEnd:
GFX_Sprite_BearHuggerMadClownIndex43:
	db "GFX_Sprite_BearHuggerMadClownIndex43.bin"
GFX_Sprite_BearHuggerMadClownIndex43End:
GFX_Sprite_BearHuggerMadClownIndex44:
	db "GFX_Sprite_BearHuggerMadClownIndex44.bin"
GFX_Sprite_BearHuggerMadClownIndex44End:
GFX_Sprite_BearHuggerMadClownIndex4A:
	db "GFX_Sprite_BearHuggerMadClownIndex4A.bin"
GFX_Sprite_BearHuggerMadClownIndex4AEnd:
GFX_Sprite_BearHuggerMadClownIndex56:
	db "GFX_Sprite_BearHuggerMadClownIndex56.bin"
GFX_Sprite_BearHuggerMadClownIndex56End:
GFX_Sprite_BearHuggerMadClownIndex59:
	db "GFX_Sprite_BearHuggerMadClownIndex59.bin"
GFX_Sprite_BearHuggerMadClownIndex59End:
GFX_Sprite_BearHuggerMadClownIndex5A:
	db "GFX_Sprite_BearHuggerMadClownIndex5A.bin"
GFX_Sprite_BearHuggerMadClownIndex5AEnd:
GFX_Sprite_BearHuggerMadClownIndex36:
	db "GFX_Sprite_BearHuggerMadClownIndex36.bin"
GFX_Sprite_BearHuggerMadClownIndex36End:
GFX_Sprite_BearHuggerMadClownIndex37:
	db "GFX_Sprite_BearHuggerMadClownIndex37.bin"
GFX_Sprite_BearHuggerMadClownIndex37End:
GFX_Sprite_BearHuggerMadClownIndex38:
	db "GFX_Sprite_BearHuggerMadClownIndex38.bin"
GFX_Sprite_BearHuggerMadClownIndex38End:
GFX_Sprite_BearHuggerMadClownIndex39:
	db "GFX_Sprite_BearHuggerMadClownIndex39.bin"
GFX_Sprite_BearHuggerMadClownIndex39End:
GFX_Sprite_BearHuggerMadClownIndex3E:
	db "GFX_Sprite_BearHuggerMadClownIndex3E.bin"
GFX_Sprite_BearHuggerMadClownIndex3EEnd:
GFX_Sprite_BearHuggerMadClownIndex3F:
	db "GFX_Sprite_BearHuggerMadClownIndex3F.bin"
GFX_Sprite_BearHuggerMadClownIndex3FEnd:
GFX_Sprite_BearHuggerMadClownIndex40:
	db "GFX_Sprite_BearHuggerMadClownIndex40.bin"
GFX_Sprite_BearHuggerMadClownIndex40End:
GFX_Sprite_BearHuggerMadClownIndex41:
	db "GFX_Sprite_BearHuggerMadClownIndex41.bin"
GFX_Sprite_BearHuggerMadClownIndex41End:
GFX_Sprite_BearHuggerMadClownIndex42:
	db "GFX_Sprite_BearHuggerMadClownIndex42.bin"
GFX_Sprite_BearHuggerMadClownIndex42End:
GFX_Sprite_BearHuggerMadClownIndex47:
	db "GFX_Sprite_BearHuggerMadClownIndex47.bin"
GFX_Sprite_BearHuggerMadClownIndex47End:
GFX_Sprite_BearHuggerMadClownIndex4B:
	db "GFX_Sprite_BearHuggerMadClownIndex4B.bin"
GFX_Sprite_BearHuggerMadClownIndex4BEnd:
GFX_Sprite_BearHuggerMadClownIndex55:
	db "GFX_Sprite_BearHuggerMadClownIndex55.bin"
GFX_Sprite_BearHuggerMadClownIndex55End:
GFX_Sprite_BearHuggerMadClownIndex57:
	db "GFX_Sprite_BearHuggerMadClownIndex57.bin"
GFX_Sprite_BearHuggerMadClownIndex57End:
GFX_Sprite_BearHuggerMadClownIndex58:
	db "GFX_Sprite_BearHuggerMadClownIndex58.bin"
GFX_Sprite_BearHuggerMadClownIndex58End:
GFX_Sprite_BearHuggerMadClownIndex5F:
	db "GFX_Sprite_BearHuggerMadClownIndex5F.bin"
GFX_Sprite_BearHuggerMadClownIndex5FEnd:
GFX_Sprite_BearHuggerMadClownIndex60:
	db "GFX_Sprite_BearHuggerMadClownIndex60.bin"
GFX_Sprite_BearHuggerMadClownIndex60End:
GFX_Sprite_DragonChanHeikeKageroIndex79:
	db "GFX_Sprite_DragonChanHeikeKageroIndex79.bin"
GFX_Sprite_DragonChanHeikeKageroIndex79End:
GFX_Sprite_DragonChanHeikeKageroIndex80:
	db "GFX_Sprite_DragonChanHeikeKageroIndex80.bin"
GFX_Sprite_DragonChanHeikeKageroIndex80End:
GFX_Sprite_DragonChanHeikeKageroIndex81:
	db "GFX_Sprite_DragonChanHeikeKageroIndex81.bin"
GFX_Sprite_DragonChanHeikeKageroIndex81End:
GFX_Sprite_DragonChanHeikeKageroIndex87:
	db "GFX_Sprite_DragonChanHeikeKageroIndex87.bin"
GFX_Sprite_DragonChanHeikeKageroIndex87End:
GFX_Sprite_DragonChanHeikeKageroIndex88:
	db "GFX_Sprite_DragonChanHeikeKageroIndex88.bin"
GFX_Sprite_DragonChanHeikeKageroIndex88End:
GFX_Sprite_BearHuggerMadClownIndex45:
	db "GFX_Sprite_BearHuggerMadClownIndex45.bin"
GFX_Sprite_BearHuggerMadClownIndex45End:
GFX_Sprite_BearHuggerMadClownIndex46:
	db "GFX_Sprite_BearHuggerMadClownIndex46.bin"
GFX_Sprite_BearHuggerMadClownIndex46End:
GFX_Sprite_BearHuggerMadClownIndex49:
	db "GFX_Sprite_BearHuggerMadClownIndex49.bin"
GFX_Sprite_BearHuggerMadClownIndex49End:
GFX_Sprite_BearHuggerMadClownIndex5D:
	db "GFX_Sprite_BearHuggerMadClownIndex5D.bin"
GFX_Sprite_BearHuggerMadClownIndex5DEnd:
GFX_Sprite_BearHuggerMadClownIndex5E:
	db "GFX_Sprite_BearHuggerMadClownIndex5E.bin"
GFX_Sprite_BearHuggerMadClownIndex5EEnd:
GFX_Sprite_BearHuggerMadClownIndex63:
	db "GFX_Sprite_BearHuggerMadClownIndex63.bin"
GFX_Sprite_BearHuggerMadClownIndex63End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex50:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex50.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex50End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex63:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex63.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex63End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex68:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex68.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex68End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex69:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex69.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex69End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex6A:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex6A.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex6AEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex6B:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex6B.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex6BEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex6C:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex6C.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex6CEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex6D:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex6D.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex6DEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex6E:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex6E.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex6EEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex6F:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex6F.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex6FEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex71:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex71.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex71End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex7A:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex7A.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex7AEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex7B:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex7B.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex7BEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex8C:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex8C.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex8CEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex8D:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex8D.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex8DEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex8E:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex8E.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex8EEnd:
GFX_Sprite_PistonHurricaneAranRyanIndex27:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex27.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex27End:
GFX_Sprite_PistonHurricaneAranRyanIndex28:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex28.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex28End:
GFX_Sprite_PistonHurricaneAranRyanIndex48:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex48.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex48End:
GFX_Sprite_DragonChanHeikeKageroIndex9D:
	db "GFX_Sprite_DragonChanHeikeKageroIndex9D.bin"
GFX_Sprite_DragonChanHeikeKageroIndex9DEnd:
GFX_Sprite_BearHuggerMadClownIndex1F:
	db "GFX_Sprite_BearHuggerMadClownIndex1F.bin"
GFX_Sprite_BearHuggerMadClownIndex1FEnd:
GFX_Sprite_BearHuggerMadClownIndex20:
	db "GFX_Sprite_BearHuggerMadClownIndex20.bin"
GFX_Sprite_BearHuggerMadClownIndex20End:
GFX_Sprite_PistonHurricaneAranRyanIndex50:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex50.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex50End:
GFX_Sprite_BaldBullMrSandmanIndex4E:
	db "GFX_Sprite_BaldBullMrSandmanIndex4E.bin"
GFX_Sprite_BaldBullMrSandmanIndex4EEnd:
GFX_Sprite_BaldBullMrSandmanIndex4F:
	db "GFX_Sprite_BaldBullMrSandmanIndex4F.bin"
GFX_Sprite_BaldBullMrSandmanIndex4FEnd:
GFX_Sprite_BaldBullMrSandmanIndex50:
	db "GFX_Sprite_BaldBullMrSandmanIndex50.bin"
GFX_Sprite_BaldBullMrSandmanIndex50End:
GFX_Sprite_BaldBullMrSandmanIndex51:
	db "GFX_Sprite_BaldBullMrSandmanIndex51.bin"
GFX_Sprite_BaldBullMrSandmanIndex51End:
GFX_Sprite_BaldBullMrSandmanIndex52:
	db "GFX_Sprite_BaldBullMrSandmanIndex52.bin"
GFX_Sprite_BaldBullMrSandmanIndex52End:
GFX_Sprite_BaldBullMrSandmanIndex53:
	db "GFX_Sprite_BaldBullMrSandmanIndex53.bin"
GFX_Sprite_BaldBullMrSandmanIndex53End:
GFX_Sprite_BaldBullMrSandmanIndex54:
	db "GFX_Sprite_BaldBullMrSandmanIndex54.bin"
GFX_Sprite_BaldBullMrSandmanIndex54End:
GFX_Sprite_BaldBullMrSandmanIndex55:
	db "GFX_Sprite_BaldBullMrSandmanIndex55.bin"
GFX_Sprite_BaldBullMrSandmanIndex55End:
GFX_Sprite_BaldBullMrSandmanIndex56:
	db "GFX_Sprite_BaldBullMrSandmanIndex56.bin"
GFX_Sprite_BaldBullMrSandmanIndex56End:
GFX_Sprite_BaldBullMrSandmanIndex57:
	db "GFX_Sprite_BaldBullMrSandmanIndex57.bin"
GFX_Sprite_BaldBullMrSandmanIndex57End:
GFX_Sprite_BaldBullMrSandmanIndex58:
	db "GFX_Sprite_BaldBullMrSandmanIndex58.bin"
GFX_Sprite_BaldBullMrSandmanIndex58End:
GFX_Sprite_BaldBullMrSandmanIndex59:
	db "GFX_Sprite_BaldBullMrSandmanIndex59.bin"
GFX_Sprite_BaldBullMrSandmanIndex59End:
GFX_Sprite_BaldBullMrSandmanIndex5A:
	db "GFX_Sprite_BaldBullMrSandmanIndex5A.bin"
GFX_Sprite_BaldBullMrSandmanIndex5AEnd:
GFX_Sprite_BaldBullMrSandmanIndex5B:
	db "GFX_Sprite_BaldBullMrSandmanIndex5B.bin"
GFX_Sprite_BaldBullMrSandmanIndex5BEnd:
GFX_Sprite_BaldBullMrSandmanIndex5C:
	db "GFX_Sprite_BaldBullMrSandmanIndex5C.bin"
GFX_Sprite_BaldBullMrSandmanIndex5CEnd:
GFX_Sprite_BaldBullMrSandmanIndex5D:
	db "GFX_Sprite_BaldBullMrSandmanIndex5D.bin"
GFX_Sprite_BaldBullMrSandmanIndex5DEnd:
GFX_Sprite_BaldBullMrSandmanIndex5E:
	db "GFX_Sprite_BaldBullMrSandmanIndex5E.bin"
GFX_Sprite_BaldBullMrSandmanIndex5EEnd:
GFX_Sprite_BaldBullMrSandmanIndex5F:
	db "GFX_Sprite_BaldBullMrSandmanIndex5F.bin"
GFX_Sprite_BaldBullMrSandmanIndex5FEnd:
GFX_Sprite_BaldBullMrSandmanIndex60:
	db "GFX_Sprite_BaldBullMrSandmanIndex60.bin"
GFX_Sprite_BaldBullMrSandmanIndex60End:
GFX_Sprite_BaldBullMrSandmanIndex61:
	db "GFX_Sprite_BaldBullMrSandmanIndex61.bin"
GFX_Sprite_BaldBullMrSandmanIndex61End:
GFX_Sprite_BaldBullMrSandmanIndex62:
	db "GFX_Sprite_BaldBullMrSandmanIndex62.bin"
GFX_Sprite_BaldBullMrSandmanIndex62End:
GFX_Sprite_BaldBullMrSandmanIndex63:
	db "GFX_Sprite_BaldBullMrSandmanIndex63.bin"
GFX_Sprite_BaldBullMrSandmanIndex63End:
GFX_Sprite_BaldBullMrSandmanIndex64:
	db "GFX_Sprite_BaldBullMrSandmanIndex64.bin"
GFX_Sprite_BaldBullMrSandmanIndex64End:
GFX_Sprite_BaldBullMrSandmanIndex65:
	db "GFX_Sprite_BaldBullMrSandmanIndex65.bin"
GFX_Sprite_BaldBullMrSandmanIndex65End:
GFX_Sprite_BaldBullMrSandmanIndex66:
	db "GFX_Sprite_BaldBullMrSandmanIndex66.bin"
GFX_Sprite_BaldBullMrSandmanIndex66End:
GFX_Sprite_BaldBullMrSandmanIndex67:
	db "GFX_Sprite_BaldBullMrSandmanIndex67.bin"
GFX_Sprite_BaldBullMrSandmanIndex67End:
GFX_Sprite_BaldBullMrSandmanIndex68:
	db "GFX_Sprite_BaldBullMrSandmanIndex68.bin"
GFX_Sprite_BaldBullMrSandmanIndex68End:
GFX_Sprite_BaldBullMrSandmanIndex69:
	db "GFX_Sprite_BaldBullMrSandmanIndex69.bin"
GFX_Sprite_BaldBullMrSandmanIndex69End:
GFX_Sprite_BaldBullMrSandmanIndex6A:
	db "GFX_Sprite_BaldBullMrSandmanIndex6A.bin"
GFX_Sprite_BaldBullMrSandmanIndex6AEnd:
GFX_Sprite_BaldBullMrSandmanIndex6B:
	db "GFX_Sprite_BaldBullMrSandmanIndex6B.bin"
GFX_Sprite_BaldBullMrSandmanIndex6BEnd:
GFX_Sprite_BaldBullMrSandmanIndex6C:
	db "GFX_Sprite_BaldBullMrSandmanIndex6C.bin"
GFX_Sprite_BaldBullMrSandmanIndex6CEnd:
GFX_Sprite_BaldBullMrSandmanIndex6D:
	db "GFX_Sprite_BaldBullMrSandmanIndex6D.bin"
GFX_Sprite_BaldBullMrSandmanIndex6DEnd:
GFX_Sprite_BaldBullMrSandmanIndex6E:
	db "GFX_Sprite_BaldBullMrSandmanIndex6E.bin"
GFX_Sprite_BaldBullMrSandmanIndex6EEnd:
GFX_Sprite_BaldBullMrSandmanIndex6F:
	db "GFX_Sprite_BaldBullMrSandmanIndex6F.bin"
GFX_Sprite_BaldBullMrSandmanIndex6FEnd:
GFX_Sprite_BaldBullMrSandmanIndex71:
	db "GFX_Sprite_BaldBullMrSandmanIndex71.bin"
GFX_Sprite_BaldBullMrSandmanIndex71End:
GFX_Sprite_GabbyJayBobCharlieIndex6D:
	db "GFX_Sprite_GabbyJayBobCharlieIndex6D.bin"
GFX_Sprite_GabbyJayBobCharlieIndex6DEnd:
GFX_Sprite_RickBruiserNickBruiserIndex05:
	db "GFX_Sprite_RickBruiserNickBruiserIndex05.bin"
GFX_Sprite_RickBruiserNickBruiserIndex05End:
GFX_Sprite_PistonHurricaneAranRyanIndex03:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex03.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex03End:
GFX_Sprite_PistonHurricaneAranRyanIndex04:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex04.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex04End:
GFX_Sprite_PistonHurricaneAranRyanIndex08:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex08.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex08End:
GFX_Sprite_PistonHurricaneAranRyanIndex09:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex09.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex09End:
GFX_Sprite_PistonHurricaneAranRyanIndex36:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex36.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex36End:
GFX_Sprite_PistonHurricaneAranRyanIndex37:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex37.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex37End:
GFX_Sprite_PistonHurricaneAranRyanIndex38:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex38.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex38End:
GFX_Sprite_BearHuggerMadClownIndex08:
	db "GFX_Sprite_BearHuggerMadClownIndex08.bin"
GFX_Sprite_BearHuggerMadClownIndex08End:
GFX_Sprite_PistonHurricaneAranRyanIndex51:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex51.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex51End:
GFX_Sprite_PistonHurricaneAranRyanIndex52:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex52.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex52End:
GFX_Sprite_BaldBullMrSandmanIndex41:
	db "GFX_Sprite_BaldBullMrSandmanIndex41.bin"
GFX_Sprite_BaldBullMrSandmanIndex41End:
GFX_Sprite_BaldBullMrSandmanIndex42:
	db "GFX_Sprite_BaldBullMrSandmanIndex42.bin"
GFX_Sprite_BaldBullMrSandmanIndex42End:
GFX_Sprite_BaldBullMrSandmanIndex43:
	db "GFX_Sprite_BaldBullMrSandmanIndex43.bin"
GFX_Sprite_BaldBullMrSandmanIndex43End:
GFX_Sprite_BaldBullMrSandmanIndex47:
	db "GFX_Sprite_BaldBullMrSandmanIndex47.bin"
GFX_Sprite_BaldBullMrSandmanIndex47End:
GFX_Sprite_BaldBullMrSandmanIndex48:
	db "GFX_Sprite_BaldBullMrSandmanIndex48.bin"
GFX_Sprite_BaldBullMrSandmanIndex48End:
GFX_Sprite_BaldBullMrSandmanIndex4B:
	db "GFX_Sprite_BaldBullMrSandmanIndex4B.bin"
GFX_Sprite_BaldBullMrSandmanIndex4BEnd:
GFX_Sprite_DragonChanHeikeKageroIndex04:
	db "GFX_Sprite_DragonChanHeikeKageroIndex04.bin"
GFX_Sprite_DragonChanHeikeKageroIndex04End:
GFX_Sprite_BearHuggerMadClownIndex04:
	db "GFX_Sprite_BearHuggerMadClownIndex04.bin"
GFX_Sprite_BearHuggerMadClownIndex04End:
GFX_Sprite_PistonHurricaneAranRyanIndex22:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex22.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex22End:
GFX_Sprite_PistonHurricaneAranRyanIndex23:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex23.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex23End:
GFX_Sprite_PistonHurricaneAranRyanIndex4B:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex4B.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex4BEnd:
GFX_Sprite_PistonHurricaneAranRyanIndex4C:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex4C.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex4CEnd:
GFX_Sprite_GabbyJayBobCharlieIndex48:
	db "GFX_Sprite_GabbyJayBobCharlieIndex48.bin"
GFX_Sprite_GabbyJayBobCharlieIndex48End:
GFX_Sprite_GabbyJayBobCharlieIndex59:
	db "GFX_Sprite_GabbyJayBobCharlieIndex59.bin"
GFX_Sprite_GabbyJayBobCharlieIndex59End:
GFX_Sprite_GabbyJayBobCharlieIndex64:
	db "GFX_Sprite_GabbyJayBobCharlieIndex64.bin"
GFX_Sprite_GabbyJayBobCharlieIndex64End:
GFX_Sprite_GabbyJayBobCharlieIndex65:
	db "GFX_Sprite_GabbyJayBobCharlieIndex65.bin"
GFX_Sprite_GabbyJayBobCharlieIndex65End:
GFX_Sprite_BearHuggerMadClownIndex35:
	db "GFX_Sprite_BearHuggerMadClownIndex35.bin"
GFX_Sprite_BearHuggerMadClownIndex35End:
GFX_Sprite_BearHuggerMadClownIndex48:
	db "GFX_Sprite_BearHuggerMadClownIndex48.bin"
GFX_Sprite_BearHuggerMadClownIndex48End:
GFX_Sprite_GabbyJayBobCharlieIndex04:
	db "GFX_Sprite_GabbyJayBobCharlieIndex04.bin"
GFX_Sprite_GabbyJayBobCharlieIndex04End:
GFX_Sprite_GabbyJayBobCharlieIndex05:
	db "GFX_Sprite_GabbyJayBobCharlieIndex05.bin"
GFX_Sprite_GabbyJayBobCharlieIndex05End:
GFX_Sprite_GabbyJayBobCharlieIndex06:
	db "GFX_Sprite_GabbyJayBobCharlieIndex06.bin"
GFX_Sprite_GabbyJayBobCharlieIndex06End:
GFX_Sprite_GabbyJayBobCharlieIndex21:
	db "GFX_Sprite_GabbyJayBobCharlieIndex21.bin"
GFX_Sprite_GabbyJayBobCharlieIndex21End:
GFX_Sprite_GabbyJayBobCharlieIndex22:
	db "GFX_Sprite_GabbyJayBobCharlieIndex22.bin"
GFX_Sprite_GabbyJayBobCharlieIndex22End:
GFX_Sprite_GabbyJayBobCharlieIndex3E:
	db "GFX_Sprite_GabbyJayBobCharlieIndex3E.bin"
GFX_Sprite_GabbyJayBobCharlieIndex3EEnd:
GFX_Sprite_GabbyJayBobCharlieIndex43:
	db "GFX_Sprite_GabbyJayBobCharlieIndex43.bin"
GFX_Sprite_GabbyJayBobCharlieIndex43End:
GFX_Sprite_GabbyJayBobCharlieIndex44:
	db "GFX_Sprite_GabbyJayBobCharlieIndex44.bin"
GFX_Sprite_GabbyJayBobCharlieIndex44End:
GFX_Sprite_GabbyJayBobCharlieIndex45:
	db "GFX_Sprite_GabbyJayBobCharlieIndex45.bin"
GFX_Sprite_GabbyJayBobCharlieIndex45End:
GFX_Sprite_BearHuggerMadClownIndex14:
	db "GFX_Sprite_BearHuggerMadClownIndex14.bin"
GFX_Sprite_BearHuggerMadClownIndex14End:
GFX_Sprite_BearHuggerMadClownIndex15:
	db "GFX_Sprite_BearHuggerMadClownIndex15.bin"
GFX_Sprite_BearHuggerMadClownIndex15End:
GFX_Sprite_BearHuggerMadClownIndex16:
	db "GFX_Sprite_BearHuggerMadClownIndex16.bin"
GFX_Sprite_BearHuggerMadClownIndex16End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex2F:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex2F.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex2FEnd:
GFX_Sprite_MaskedMuscleSuperMachoManIndex30:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex30.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex30End:
GFX_Sprite_MaskedMuscleSuperMachoManIndex4A:
	db "GFX_Sprite_MaskedMuscleSuperMachoManIndex4A.bin"
GFX_Sprite_MaskedMuscleSuperMachoManIndex4AEnd:
GFX_Sprite_DragonChanHeikeKageroIndex51:
	db "GFX_Sprite_DragonChanHeikeKageroIndex51.bin"
GFX_Sprite_DragonChanHeikeKageroIndex51End:
GFX_Sprite_DragonChanHeikeKageroIndex54:
	db "GFX_Sprite_DragonChanHeikeKageroIndex54.bin"
GFX_Sprite_DragonChanHeikeKageroIndex54End:
GFX_Sprite_DragonChanHeikeKageroIndex71:
	db "GFX_Sprite_DragonChanHeikeKageroIndex71.bin"
GFX_Sprite_DragonChanHeikeKageroIndex71End:
GFX_Sprite_DragonChanHeikeKageroIndex72:
	db "GFX_Sprite_DragonChanHeikeKageroIndex72.bin"
GFX_Sprite_DragonChanHeikeKageroIndex72End:
GFX_Sprite_DragonChanHeikeKageroIndex73:
	db "GFX_Sprite_DragonChanHeikeKageroIndex73.bin"
GFX_Sprite_DragonChanHeikeKageroIndex73End:
GFX_Sprite_DragonChanHeikeKageroIndex77:
	db "GFX_Sprite_DragonChanHeikeKageroIndex77.bin"
GFX_Sprite_DragonChanHeikeKageroIndex77End:
GFX_Sprite_DragonChanHeikeKageroIndex78:
	db "GFX_Sprite_DragonChanHeikeKageroIndex78.bin"
GFX_Sprite_DragonChanHeikeKageroIndex78End:
GFX_Sprite_DragonChanHeikeKageroIndex82:
	db "GFX_Sprite_DragonChanHeikeKageroIndex82.bin"
GFX_Sprite_DragonChanHeikeKageroIndex82End:
GFX_Sprite_DragonChanHeikeKageroIndex83:
	db "GFX_Sprite_DragonChanHeikeKageroIndex83.bin"
GFX_Sprite_DragonChanHeikeKageroIndex83End:
GFX_Sprite_DragonChanHeikeKageroIndex8B:
	db "GFX_Sprite_DragonChanHeikeKageroIndex8B.bin"
GFX_Sprite_DragonChanHeikeKageroIndex8BEnd:
GFX_Sprite_DragonChanHeikeKageroIndex8F:
	db "GFX_Sprite_DragonChanHeikeKageroIndex8F.bin"
GFX_Sprite_DragonChanHeikeKageroIndex8FEnd:
GFX_Sprite_DragonChanHeikeKageroIndex90:
	db "GFX_Sprite_DragonChanHeikeKageroIndex90.bin"
GFX_Sprite_DragonChanHeikeKageroIndex90End:
GFX_Sprite_DragonChanHeikeKageroIndex96:
	db "GFX_Sprite_DragonChanHeikeKageroIndex96.bin"
GFX_Sprite_DragonChanHeikeKageroIndex96End:
GFX_Sprite_DragonChanHeikeKageroIndex97:
	db "GFX_Sprite_DragonChanHeikeKageroIndex97.bin"
GFX_Sprite_DragonChanHeikeKageroIndex97End:
GFX_Sprite_DragonChanHeikeKageroIndex98:
	db "GFX_Sprite_DragonChanHeikeKageroIndex98.bin"
GFX_Sprite_DragonChanHeikeKageroIndex98End:
GFX_Layer1_ContenderIndex02:
	db "GFX_Layer1_ContenderIndex02.bin"
GFX_Layer1_ContenderIndex02End:
GFX_Layer1_ContenderIndex03:
	db "GFX_Layer1_ContenderIndex03.bin"
GFX_Layer1_ContenderIndex03End:
GFX_Layer1_ContenderIndex04:
	db "GFX_Layer1_ContenderIndex04.bin"
GFX_Layer1_ContenderIndex04End:
GFX_Layer1_ContenderIndex0A:
	db "GFX_Layer1_ContenderIndex0A.bin"
GFX_Layer1_ContenderIndex0AEnd:
GFX_Layer1_ContenderIndex0B:
	db "GFX_Layer1_ContenderIndex0B.bin"
GFX_Layer1_ContenderIndex0BEnd:
GFX_Layer1_ContenderIndex0C:
	db "GFX_Layer1_ContenderIndex0C.bin"
GFX_Layer1_ContenderIndex0CEnd:
GFX_Layer1_ContenderIndex0D:
	db "GFX_Layer1_ContenderIndex0D.bin"
GFX_Layer1_ContenderIndex0DEnd:
GFX_Layer1_ContenderIndex12:
	db "GFX_Layer1_ContenderIndex12.bin"
GFX_Layer1_ContenderIndex12End:
GFX_Layer1_ContenderIndex15:
	db "GFX_Layer1_ContenderIndex15.bin"
GFX_Layer1_ContenderIndex15End:
GFX_Layer1_ContenderIndex16:
	db "GFX_Layer1_ContenderIndex16.bin"
GFX_Layer1_ContenderIndex16End:
GFX_Layer1_ContenderIndex1D:
	db "GFX_Layer1_ContenderIndex1D.bin"
GFX_Layer1_ContenderIndex1DEnd:
GFX_Layer1_ContenderIndex22:
	db "GFX_Layer1_ContenderIndex22.bin"
GFX_Layer1_ContenderIndex22End:
GFX_Sprite_PistonHurricaneAranRyanIndex55:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex55.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex55End:
GFX_Sprite_PistonHurricaneAranRyanIndex6D:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex6D.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex6DEnd:
GFX_Sprite_PistonHurricaneAranRyanIndex72:
	db "GFX_Sprite_PistonHurricaneAranRyanIndex72.bin"
GFX_Sprite_PistonHurricaneAranRyanIndex72End:
GFX_Sprite_GabbyJayBobCharlieIndex6E:
	db "GFX_Sprite_GabbyJayBobCharlieIndex6E.bin"
GFX_Sprite_GabbyJayBobCharlieIndex6EEnd:
GFX_Sprite_RickBruiserNickBruiserIndex53:
	db "GFX_Sprite_RickBruiserNickBruiserIndex53.bin"
GFX_Sprite_RickBruiserNickBruiserIndex53End:
GFX_Sprite_RickBruiserNickBruiserIndex54:
	db "GFX_Sprite_RickBruiserNickBruiserIndex54.bin"
GFX_Sprite_RickBruiserNickBruiserIndex54End:
GFX_Layer1_ContenderIndex07:
	db "GFX_Layer1_ContenderIndex07.bin"
GFX_Layer1_ContenderIndex07End:
GFX_Layer1_ContenderIndex0E:
	db "GFX_Layer1_ContenderIndex0E.bin"
GFX_Layer1_ContenderIndex0EEnd:
GFX_Layer1_ContenderIndex0F:
	db "GFX_Layer1_ContenderIndex0F.bin"
GFX_Layer1_ContenderIndex0FEnd:
GFX_Layer1_ContenderIndex10:
	db "GFX_Layer1_ContenderIndex10.bin"
GFX_Layer1_ContenderIndex10End:
GFX_Layer1_ContenderIndex11:
	db "GFX_Layer1_ContenderIndex11.bin"
GFX_Layer1_ContenderIndex11End:
GFX_Layer1_ContenderIndex13:
	db "GFX_Layer1_ContenderIndex13.bin"
GFX_Layer1_ContenderIndex13End:
GFX_Layer1_ContenderIndex14:
	db "GFX_Layer1_ContenderIndex14.bin"
GFX_Layer1_ContenderIndex14End:
GFX_Layer1_ContenderIndex1B:
	db "GFX_Layer1_ContenderIndex1B.bin"
GFX_Layer1_ContenderIndex1BEnd:
GFX_Layer1_ContenderIndex1E:
	db "GFX_Layer1_ContenderIndex1E.bin"
GFX_Layer1_ContenderIndex1EEnd:
GFX_Layer1_ContenderIndex23:
	db "GFX_Layer1_ContenderIndex23.bin"
GFX_Layer1_ContenderIndex23End:
GFX_Layer1_ContenderIndex24:
	db "GFX_Layer1_ContenderIndex24.bin"
GFX_Layer1_ContenderIndex24End:
GFX_Layer1_ContenderIndex2B:
	db "GFX_Layer1_ContenderIndex2B.bin"
GFX_Layer1_ContenderIndex2BEnd:
GFX_Layer1_ContenderIndex2C:
	db "GFX_Layer1_ContenderIndex2C.bin"
GFX_Layer1_ContenderIndex2CEnd:
GFX_Layer1_ContenderIndex2D:
	db "GFX_Layer1_ContenderIndex2D.bin"
GFX_Layer1_ContenderIndex2DEnd:
GFX_Layer1_ContenderIndex2E:
	db "GFX_Layer1_ContenderIndex2E.bin"
GFX_Layer1_ContenderIndex2EEnd:
GFX_Layer1_ContenderIndex00:
	db "GFX_Layer1_ContenderIndex00.bin"
GFX_Layer1_ContenderIndex00End:
GFX_Layer1_ContenderIndex01:
	db "GFX_Layer1_ContenderIndex01.bin"
GFX_Layer1_ContenderIndex01End:
GFX_Layer1_ContenderIndex05:
	db "GFX_Layer1_ContenderIndex05.bin"
GFX_Layer1_ContenderIndex05End:
GFX_Layer1_ContenderIndex06:
	db "GFX_Layer1_ContenderIndex06.bin"
GFX_Layer1_ContenderIndex06End:
GFX_Layer1_ContenderIndex08:
	db "GFX_Layer1_ContenderIndex08.bin"
GFX_Layer1_ContenderIndex08End:
GFX_Layer1_ContenderIndex09:
	db "GFX_Layer1_ContenderIndex09.bin"
GFX_Layer1_ContenderIndex09End:
GFX_Layer1_ContenderIndex17:
	db "GFX_Layer1_ContenderIndex17.bin"
GFX_Layer1_ContenderIndex17End:
GFX_Layer1_ContenderIndex18:
	db "GFX_Layer1_ContenderIndex18.bin"
GFX_Layer1_ContenderIndex18End:
GFX_Layer1_ContenderIndex19:
	db "GFX_Layer1_ContenderIndex19.bin"
GFX_Layer1_ContenderIndex19End:
GFX_Layer1_ContenderIndex1A:
	db "GFX_Layer1_ContenderIndex1A.bin"
GFX_Layer1_ContenderIndex1AEnd:
GFX_Layer1_ContenderIndex1C:
	db "GFX_Layer1_ContenderIndex1C.bin"
GFX_Layer1_ContenderIndex1CEnd:
GFX_Layer1_ContenderIndex25:
	db "GFX_Layer1_ContenderIndex25.bin"
GFX_Layer1_ContenderIndex25End:
GFX_Layer1_ContenderIndex26:
	db "GFX_Layer1_ContenderIndex26.bin"
GFX_Layer1_ContenderIndex26End:
GFX_Layer1_ContenderIndex27:
	db "GFX_Layer1_ContenderIndex27.bin"
GFX_Layer1_ContenderIndex27End:
GFX_Layer1_ContenderIndex28:
	db "GFX_Layer1_ContenderIndex28.bin"
GFX_Layer1_ContenderIndex28End:
GFX_Layer1_ContenderIndex29:
	db "GFX_Layer1_ContenderIndex29.bin"
GFX_Layer1_ContenderIndex29End:
GFX_Layer1_ContenderIndex2A:
	db "GFX_Layer1_ContenderIndex2A.bin"
GFX_Layer1_ContenderIndex2AEnd:

;--------------------------------------------------------------------

GFX_Layer2_AudienceAndBoxingRing2:
	db "GFX_Layer2_AudienceAndBoxingRing2.bin"
GFX_Layer2_AudienceAndBoxingRing2End:
GFX_Sprite_Effects:
	db "GFX_Sprite_Effects.bin"
GFX_Sprite_EffectsEnd:
GFX_Layer3_HUDAndSmallFont:
	db "GFX_Layer3_HUDAndSmallFont.bin"
GFX_Layer3_HUDAndSmallFontEnd:
GFX_Layer2_AudienceAndBoxingRing1:
	db "GFX_Layer2_AudienceAndBoxingRing1.bin"
GFX_Layer2_AudienceAndBoxingRing1End:
GFX_Sprite_MaskedMuscleSpit:
	db "GFX_Sprite_MaskedMuscleSpit.bin"
GFX_Sprite_MaskedMuscleSpitEnd:
GFX_Sprite_MadClownBall:
	db "GFX_Sprite_MadClownBall.bin"
GFX_Sprite_MadClownBallEnd:
GFX_Sprite_WinScreenContender:
	db "GFX_Sprite_WinScreenContender.bin"
GFX_Sprite_WinScreenContenderEnd:
GFX_Layer1AndSprite_MainMenu:
	db "GFX_Layer1AndSprite_MainMenu.bin"
GFX_Layer1AndSprite_MainMenuEnd:
GFX_Layer2_MinorCircuitRingLogo:
	db "GFX_Layer2_MinorCircuitRingLogo.bin"
GFX_Layer2_MinorCircuitRingLogoEnd:
GFX_Layer2_MajorCircuitRingLogo:
	db "GFX_Layer2_MajorCircuitRingLogo.bin"
GFX_Layer2_MajorCircuitRingLogoEnd:
GFX_Layer2_WorldCircuitRingLogo:
	db "GFX_Layer2_WorldCircuitRingLogo.bin"
GFX_Layer2_WorldCircuitRingLogoEnd:
GFX_Layer2_SpecialCircuitRingLogo:
	db "GFX_Layer2_SpecialCircuitRingLogo.bin"
GFX_Layer2_SpecialCircuitRingLogoEnd:
GFX_Layer2_GameOverScreen:
	db "GFX_Layer2_GameOverScreen.bin"
GFX_Layer2_GameOverScreenEnd:
GFX_Layer3_LargeFont:
	db "GFX_Layer3_LargeFont.bin"
GFX_Layer3_LargeFontEnd:
GFX_Layer2_MinorCircuitLogoBackground:
	db "GFX_Layer2_MinorCircuitLogoBackground.bin"
GFX_Layer2_MinorCircuitLogoBackgroundEnd:
GFX_Layer2_MajorCircuitLogoBackground:
	db "GFX_Layer2_MajorCircuitLogoBackground.bin"
GFX_Layer2_MajorCircuitLogoBackgroundEnd:
GFX_Layer2_WorldCircuitLogoBackground:
	db "GFX_Layer2_WorldCircuitLogoBackground.bin"
GFX_Layer2_WorldCircuitLogoBackgroundEnd:
GFX_Layer2_SpecialCircuitLogoBackground:
	db "GFX_Layer2_SpecialCircuitLogoBackground.bin"
GFX_Layer2_SpecialCircuitLogoBackgroundEnd:
GFX_Layer1_TitleScreenLogo:
	db "GFX_Layer1_TitleScreenLogo.bin"
GFX_Layer1_TitleScreenLogoEnd:
GFX_Sprite_GabbyJayLargePortrait:
	db "GFX_Sprite_GabbyJayLargePortrait.bin"
GFX_Sprite_GabbyJayLargePortraitEnd:
GFX_Sprite_BearHuggerLargePortrait:
	db "GFX_Sprite_BearHuggerLargePortrait.bin"
GFX_Sprite_BearHuggerLargePortraitEnd:
GFX_Sprite_PistonHurricaneLargePortrait:
	db "GFX_Sprite_PistonHurricaneLargePortrait.bin"
GFX_Sprite_PistonHurricaneLargePortraitEnd:
GFX_Sprite_BaldBullLargePortrait:
	db "GFX_Sprite_BaldBullLargePortrait.bin"
GFX_Sprite_BaldBullLargePortraitEnd:
GFX_Sprite_BobCharlieLargePortrait:
	db "GFX_Sprite_BobCharlieLargePortrait.bin"
GFX_Sprite_BobCharlieLargePortraitEnd:
GFX_Sprite_DragonChanLargePortrait:
	db "GFX_Sprite_DragonChanLargePortrait.bin"
GFX_Sprite_DragonChanLargePortraitEnd:
GFX_Sprite_MaskedMuscleLargePortrait:
	db "GFX_Sprite_MaskedMuscleLargePortrait.bin"
GFX_Sprite_MaskedMuscleLargePortraitEnd:
GFX_Sprite_MrSandmanLargePortrait:
	db "GFX_Sprite_MrSandmanLargePortrait.bin"
GFX_Sprite_MrSandmanLargePortraitEnd:
GFX_Sprite_IntroGlove:
	db "GFX_Sprite_IntroGlove.bin"
GFX_Sprite_IntroGloveEnd:
GFX_Sprite_IntroEntry:
	db "GFX_Sprite_IntroEntry.bin"
GFX_Sprite_IntroEntryEnd:
GFX_Sprite_SplashScreenNintendoLogo:
	db "GFX_Sprite_SplashScreenNintendoLogo.bin"
GFX_Sprite_SplashScreenNintendoLogoEnd:
GFX_Sprite_TutorialArrow:
	db "GFX_Sprite_TutorialArrow.bin"
GFX_Sprite_TutorialArrowEnd:
GFX_Layer3_Ending:
	db "GFX_Layer3_Ending.bin"
GFX_Layer3_EndingEnd:
GFX_Sprite_AranRyanLargePortrait:
	db "GFX_Sprite_AranRyanLargePortrait.bin"
GFX_Sprite_AranRyanLargePortraitEnd:
GFX_Sprite_HeikeKageroLargePortrait:
	db "GFX_Sprite_HeikeKageroLargePortrait.bin"
GFX_Sprite_HeikeKageroLargePortraitEnd:
GFX_Sprite_MadClownLargePortrait:
	db "GFX_Sprite_MadClownLargePortrait.bin"
GFX_Sprite_MadClownLargePortraitEnd:
GFX_Sprite_SuperMachoManLargePortrait:
	db "GFX_Sprite_SuperMachoManLargePortrait.bin"
GFX_Sprite_SuperMachoManLargePortraitEnd:
GFX_Sprite_NarcisPrinceLargePortrait:
	db "GFX_Sprite_NarcisPrinceLargePortrait.bin"
GFX_Sprite_NarcisPrinceLargePortraitEnd:
GFX_Sprite_HoyQuarlowLargePortrait:
	db "GFX_Sprite_HoyQuarlowLargePortrait.bin"
GFX_Sprite_HoyQuarlowLargePortraitEnd:
GFX_Sprite_RickBruiserLargePortrait:
	db "GFX_Sprite_RickBruiserLargePortrait.bin"
GFX_Sprite_RickBruiserLargePortraitEnd:
GFX_Sprite_NickBruiserLargePortrait:
	db "GFX_Sprite_NickBruiserLargePortrait.bin"
GFX_Sprite_NickBruiserLargePortraitEnd:
GFX_Sprite_IntroBoot:
	db "GFX_Sprite_IntroBoot.bin"
GFX_Sprite_IntroBootEnd:
GFX_Sprite_IntroArms:
	db "GFX_Sprite_IntroArms.bin"
GFX_Sprite_IntroArmsEnd:
GFX_Layer1_GameOverScreen:
	db "GFX_Layer1_GameOverScreen.bin"
GFX_Layer1_GameOverScreenEnd:
GFX_Layer2_MainMenu:
	db "GFX_Layer2_MainMenu.bin"
GFX_Layer2_MainMenuEnd:
GFX_Layer1_MinorCircuitBelt:
	db "GFX_Layer1_MinorCircuitBelt.bin"
GFX_Layer1_MinorCircuitBeltEnd:
GFX_Layer1_MajorCircuitBelt:
	db "GFX_Layer1_MajorCircuitBelt.bin"
GFX_Layer1_MajorCircuitBeltEnd:
GFX_Layer1_WorldCircuitBelt:
	db "GFX_Layer1_WorldCircuitBelt.bin"
GFX_Layer1_WorldCircuitBeltEnd:
GFX_Layer1_SpecialCircuitBelt:
	db "GFX_Layer1_SpecialCircuitBelt.bin"
GFX_Layer1_SpecialCircuitBeltEnd:
GFX_FGBG_EndScreen:
	db "GFX_FGBG_EndScreen.bin"
GFX_FGBG_EndScreenEnd:
GFX_Sprite_EndScreen:
	db "GFX_Sprite_EndScreen.bin"
GFX_Sprite_EndScreenEnd:
GFX_Sprite_NickBruiser1:
	db "GFX_Sprite_NickBruiser1.bin"
GFX_Sprite_NickBruiser1End:
GFX_Sprite_RickBruiser1:
	db "GFX_Sprite_RickBruiser1.bin"
GFX_Sprite_RickBruiser1End:
GFX_Sprite_RickBruiser2_NickBruiser2:
	db "GFX_Sprite_RickBruiser2_NickBruiser2.bin"
GFX_Sprite_RickBruiser2_NickBruiser2End:
GFX_Sprite_RickBruiser3_NickBruiser3:
	db "GFX_Sprite_RickBruiser3_NickBruiser3.bin"
GFX_Sprite_RickBruiser3_NickBruiser3End:
GFX_Sprite_HoyQuarlow1:
	db "GFX_Sprite_HoyQuarlow1.bin"
GFX_Sprite_HoyQuarlow1End:
GFX_Sprite_HoyQuarlow2:
	db "GFX_Sprite_HoyQuarlow2.bin"
GFX_Sprite_HoyQuarlow2End:
GFX_Sprite_HoyQuarlow3:
	db "GFX_Sprite_HoyQuarlow3.bin"
GFX_Sprite_HoyQuarlow3End:
GFX_Sprite_NarcisPrince1:
	db "GFX_Sprite_NarcisPrince1.bin"
GFX_Sprite_NarcisPrince1End:
GFX_Sprite_NarcisPrince2:
	db "GFX_Sprite_NarcisPrince2.bin"
GFX_Sprite_NarcisPrince2End:
GFX_Sprite_NarcisPrince3:
	db "GFX_Sprite_NarcisPrince3.bin"
GFX_Sprite_NarcisPrince3End:
GFX_Sprite_SuperMachoMan1:
	db "GFX_Sprite_SuperMachoMan1.bin"
GFX_Sprite_SuperMachoMan1End:
GFX_Sprite_MadClown1:
	db "GFX_Sprite_MadClown1.bin"
GFX_Sprite_MadClown1End:
GFX_Sprite_HeikeKagero3:
	db "GFX_Sprite_HeikeKagero3.bin"
GFX_Sprite_HeikeKagero3End:
GFX_Sprite_HeikeKagero1:
	db "GFX_Sprite_HeikeKagero1.bin"
GFX_Sprite_HeikeKagero1End:
GFX_Sprite_AranRyan1:
	db "GFX_Sprite_AranRyan1.bin"
GFX_Sprite_AranRyan1End:
GFX_Sprite_MaskedMuscle3_SuperMachoMan3:
	db "GFX_Sprite_MaskedMuscle3_SuperMachoMan3.bin"
GFX_Sprite_MaskedMuscle3_SuperMachoMan3End:
GFX_Sprite_MaskedMuscle2_SuperMachoMan2:
	db "GFX_Sprite_MaskedMuscle2_SuperMachoMan2.bin"
GFX_Sprite_MaskedMuscle2_SuperMachoMan2End:
GFX_Sprite_MaskedMuscle1:
	db "GFX_Sprite_MaskedMuscle1.bin"
GFX_Sprite_MaskedMuscle1End:
GFX_Sprite_BobCharlie3:
	db "GFX_Sprite_BobCharlie3.bin"
GFX_Sprite_BobCharlie3End:
GFX_Sprite_DragonChan2_HeikeKagero2:
	db "GFX_Sprite_DragonChan2_HeikeKagero2.bin"
GFX_Sprite_DragonChan2_HeikeKagero2End:
GFX_Sprite_DragonChan3:
	db "GFX_Sprite_DragonChan3.bin"
GFX_Sprite_DragonChan3End:
GFX_Sprite_BaldBull3_MrSandman3:
	db "GFX_Sprite_BaldBull3_MrSandman3.bin"
GFX_Sprite_BaldBull3_MrSandman3End:
GFX_Sprite_BaldBull2_MrSandman2:
	db "GFX_Sprite_BaldBull2_MrSandman2.bin"
GFX_Sprite_BaldBull2_MrSandman2End:
GFX_Sprite_BaldBull1_MrSandman1:
	db "GFX_Sprite_BaldBull1_MrSandman1.bin"
GFX_Sprite_BaldBull1_MrSandman1End:
GFX_Sprite_PistonHurricane3_AranRyan3:
	db "GFX_Sprite_PistonHurricane3_AranRyan3.bin"
GFX_Sprite_PistonHurricane3_AranRyan3End:
GFX_Sprite_PistonHurricane2_AranRyan2:
	db "GFX_Sprite_PistonHurricane2_AranRyan2.bin"
GFX_Sprite_PistonHurricane2_AranRyan2End:
GFX_Sprite_PistonHurricane1:
	db "GFX_Sprite_PistonHurricane1.bin"
GFX_Sprite_PistonHurricane1End:
GFX_Sprite_DragonChan1:
	db "GFX_Sprite_DragonChan1.bin"
GFX_Sprite_DragonChan1End:
GFX_Sprite_BearHugger3_MadClown3:
	db "GFX_Sprite_BearHugger3_MadClown3.bin"
GFX_Sprite_BearHugger3_MadClown3End:
GFX_Sprite_BearHugger2_MadClown2:
	db "GFX_Sprite_BearHugger2_MadClown2.bin"
GFX_Sprite_BearHugger2_MadClown2End:
GFX_Sprite_BearHugger1:
	db "GFX_Sprite_BearHugger1.bin"
GFX_Sprite_BearHugger1End:
GFX_Sprite_GabbyJay2_BobCharlie2:
	db "GFX_Sprite_GabbyJay2_BobCharlie2.bin"
GFX_Sprite_GabbyJay2_BobCharlie2End:
GFX_Sprite_GabbyJay1_BobCharlie1:
	db "GFX_Sprite_GabbyJay1_BobCharlie1.bin"
GFX_Sprite_GabbyJay1_BobCharlie1End:

;--------------------------------------------------------------------

TM_Audience:
	db "Audience.bin"
TM_AudienceEnd:

;--------------------------------------------------------------------

PAL_CircuitWinScreen:
	db "CircuitWinScreen.bin"
PAL_CircuitWinScreenEnd:
PAL_FGBG_GameOverScreen:
	db "FGBG_GameOverScreen.bin"
PAL_FGBG_GameOverScreenEnd:
PAL_Layer3_HighScoreScreen:
	db "Layer3_HighScoreScreen.bin"
PAL_Layer3_HighScoreScreenEnd:
PAL_Unknown1:
	db "Unknown1.bin"
PAL_Unknown1End:
PAL_Layer1_HighScoreScreen:
	db "Layer1_HighScoreScreen.bin"
PAL_Layer1_HighScoreScreenEnd:
PAL_MainMenu:
	db "MainMenu.bin"
PAL_MainMenuEnd:
PAL_Sprite_MenuCursor:
	db "Sprite_MenuCursor.bin"
PAL_Sprite_MenuCursorEnd:
PAL_FGBG_Intro:
	db "FGBG_Intro.bin"
PAL_FGBG_IntroEnd:
PAL_ColorEndScreen:
	db "ColorEndScreen.bin"
PAL_ColorEndScreenEnd:
PAL_SepiaEndScreen:
	db "SepiaEndScreen.bin"
PAL_SepiaEndScreenEnd:
PAL_Sprite_UnselectedFighterIcons:
	db "Sprite_UnselectedFighterIcons.bin"
PAL_Sprite_UnselectedFighterIconsEnd:
PAL_FGBG_MinorCircuitMatch:
	db "FGBG_MinorCircuitMatch.bin"
PAL_FGBG_MinorCircuitMatchEnd:
PAL_FGBG_MajorCircuitMatch:
	db "FGBG_MajorCircuitMatch.bin"
PAL_FGBG_MajorCircuitMatchEnd:
PAL_FGBG_WorldCircuitMatch:
	db "FGBG_WorldCircuitMatch.bin"
PAL_FGBG_WorldCircuitMatchEnd:
PAL_FGBG_SpecialCircuitMatch:
	db "FGBG_SpecialCircuitMatch.bin"
PAL_FGBG_SpecialCircuitMatchEnd:
PAL_Layer3_HUD:
	db "Layer3_HUD.bin"
PAL_Layer3_HUDEnd:
PAL_Layer1_Contender:
	db "Layer1_Contender.bin"
PAL_Layer1_ContenderEnd:
PAL_Sprite_VS:
	db "Sprite_VS.bin"
PAL_Sprite_VSEnd:
PAL_Sprite_GabbyJay:
	db "Sprite_GabbyJay.bin"
PAL_Sprite_GabbyJayEnd:
PAL_Sprite_BearHugger:
	db "Sprite_BearHugger.bin"
PAL_Sprite_BearHuggerEnd:
PAL_Sprite_PistonHurricane:
	db "Sprite_PistonHurricane.bin"
PAL_Sprite_PistonHurricaneEnd:
PAL_Sprite_BaldBull:
	db "Sprite_BaldBull.bin"
PAL_Sprite_BaldBullEnd:
PAL_Sprite_BobCharlie:
	db "Sprite_BobCharlie.bin"
PAL_Sprite_BobCharlieEnd:
PAL_Sprite_DragonChan:
	db "Sprite_DragonChan.bin"
PAL_Sprite_DragonChanEnd:
PAL_Sprite_MaskedMuscle:
	db "Sprite_MaskedMuscle.bin"
PAL_Sprite_MaskedMuscleEnd:
PAL_Sprite_MrSandman:
	db "Sprite_MrSandman.bin"
PAL_Sprite_MrSandmanEnd:
PAL_Sprite_AranRyan:
	db "Sprite_AranRyan.bin"
PAL_Sprite_AranRyanEnd:
PAL_Sprite_HeikeKagero:
	db "Sprite_HeikeKagero.bin"
PAL_Sprite_HeikeKageroEnd:
PAL_Sprite_MadClown:
	db "Sprite_MadClown.bin"
PAL_Sprite_MadClownEnd:
PAL_Sprite_SuperMachoMan:
	db "Sprite_SuperMachoMan.bin"
PAL_Sprite_SuperMachoManEnd:
PAL_Sprite_NarcisPrince:
	db "Sprite_NarcisPrince.bin"
PAL_Sprite_NarcisPrinceEnd:
PAL_Sprite_HoyQuarlow:
	db "Sprite_HoyQuarlow.bin"
PAL_Sprite_HoyQuarlowEnd:
PAL_Sprite_RickBruiser:
	db "Sprite_RickBruiser.bin"
PAL_Sprite_RickBruiserEnd:
PAL_Sprite_NickBruiser:
	db "Sprite_NickBruiser.bin"
PAL_Sprite_NickBruiserEnd:
PAL_Layer1_MinorCircuitHighScoreScreen:
	db "Layer1_MinorCircuitHighScoreScreen.bin"
PAL_Layer1_MinorCircuitHighScoreScreenEnd:
PAL_Layer1_MajorCircuitHighScoreScreen:
	db "Layer1_MajorCircuitHighScoreScreen.bin"
PAL_Layer1_MajorCircuitHighScoreScreenEnd:
PAL_Layer1_WorldCircuitHighScoreScreen:
	db "Layer1_WorldCircuitHighScoreScreen.bin"
PAL_Layer1_WorldCircuitHighScoreScreenEnd:
PAL_Layer1_SpecialCircuitHighScoreScreen:
	db "Layer1_SpecialCircuitHighScoreScreen.bin"
PAL_Layer1_SpecialCircuitHighScoreScreenEnd:
PAL_Sprite_LargePortraits:
	db "Sprite_LargePortraits.bin"
PAL_Sprite_LargePortraitsEnd:

;--------------------------------------------------------------------

UNK_00F5D0:
	db "UNK_00F5D0.bin"
UNK_00F5D0End:
UNK_01EB2D:
	db "UNK_01EB2D.bin"
UNK_01EB2DEnd:
UNK_01F784:
	db "UNK_01F784.bin"
UNK_01F784End:
UNK_09E936:
	db "UNK_09E936.bin"
UNK_09E936End:
UNK_0AED5E:
	db "UNK_0AED5E.bin"
UNK_0AED5EEnd:
UNK_0BF47B:
	db "UNK_0BF47B.bin"
UNK_0BF47BEnd:
UNK_0CF146:
	db "UNK_0CF146.bin"
UNK_0CF146End:
UNK_0EED90:
	db "UNK_0EED90.bin"
UNK_0EED90End:
UNK_0FEE86:
	db "UNK_0FEE86.bin"
UNK_0FEE86End:
UNK_10F979:
	db "UNK_10F979.bin"
UNK_10F979End:
UNK_19E8E5:
	db "UNK_19E8E5.bin"
UNK_19E8E5End:
UNK_1AE75D:
	db "UNK_1AE75D.bin"
UNK_1AE75DEnd:
UNK_1BE995:
	db "UNK_1BE995.bin"
UNK_1BE995End:

;--------------------------------------------------------------------

Music_MatchWon:
	db "MatchWon.bin"
Music_MatchWonEnd:
Music_MatchLost:
	db "MatchLost.bin"
Music_MatchLostEnd:
Music_PlayerDown:
	db "PlayerDown.bin"
Music_PlayerDownEnd:
Music_OpponentDown:
	db "OpponentDown.bin"
Music_OpponentDownEnd:
Music_GabbyJayIntro:
	db "GabbyJayIntro.bin"
Music_GabbyJayIntroEnd:
Music_BearHuggerIntro:
	db "BearHuggerIntro.bin"
Music_BearHuggerIntroEnd:
Music_PistonHurricaneIntro:
	db "PistonHurricaneIntro.bin"
Music_PistonHurricaneIntroEnd:
Music_BaldBullIntro:
	db "BaldBullIntro.bin"
Music_BaldBullIntroEnd:
Music_BobCharlieIntro:
	db "BobCharlieIntro.bin"
Music_BobCharlieIntroEnd:
Music_DragonChanIntro:
	db "DragonChanIntro.bin"
Music_DragonChanIntroEnd:
Music_MaskedMuscleIntro:
	db "MaskedMuscleIntro.bin"
Music_MaskedMuscleIntroEnd:
Music_MrSandmanIntro:
	db "MrSandmanIntro.bin"
Music_MrSandmanIntroEnd:
Music_AranRyanIntro:
	db "AranRyanIntro.bin"
Music_AranRyanIntroEnd:
Music_HeikeKageroIntro:
	db "HeikeKageroIntro.bin"
Music_HeikeKageroIntroEnd:
Music_MadClownIntro:
	db "MadClownIntro.bin"
Music_MadClownIntroEnd:
Music_SuperMachoManIntro:
	db "SuperMachoManIntro.bin"
Music_SuperMachoManIntroEnd:
Music_NarcisPrinceIntro:
	db "NarcisPrinceIntro.bin"
Music_NarcisPrinceIntroEnd:
Music_HoyQuarlowIntro:
	db "HoyQuarlowIntro.bin"
Music_HoyQuarlowIntroEnd:
Music_RickBruiserIntro:
	db "RickBruiserIntro.bin"
Music_RickBruiserIntroEnd:
Music_NickBruiserIntro:
	db "NickBruiserIntro.bin"
Music_NickBruiserIntroEnd:
UnknownData1:
	db "UnknownData1.bin"
UnknownData1End:
Music_CircuitWin:
	db "CircuitWin.bin"
Music_CircuitWinEnd:
Music_GameOver:
	db "GameOver.bin"
Music_GameOverEnd:
UnknownData2:
	db "UnknownData2.bin"
UnknownData2End:
Music_MainMenu:
	db "MainMenu.bin"
Music_MainMenuEnd:
UnknownData3:
	db "UnknownData3.bin"
UnknownData3End:
Music_PressedStartOnTitleScreen:
	db "PressedStartOnTitleScreen.bin"
Music_PressedStartOnTitleScreenEnd:
UnknownData4:
	db "UnknownData4.bin"
UnknownData4End:
Music_TitleScreen:
	db "TitleScreen.bin"
Music_TitleScreenEnd:
Music_MajorCircuitMatch:
	db "MajorCircuitMatch.bin"
Music_MajorCircuitMatchEnd:
Music_Credits:
	db "Credits.bin"
Music_CreditsEnd:
Music_Tutorial:
	db "Tutorial.bin"
Music_TutorialEnd:
Music_WorldCircuitMatch:
	db "WorldCircuitMatch.bin"
Music_WorldCircuitMatchEnd:
Music_SpecialCircuitMatch:
	db "SpecialCircuitMatch.bin"
Music_SpecialCircuitMatchEnd:
Music_MinorCircuitMatch:
	db "MinorCircuitMatch.bin"
Music_MinorCircuitMatchEnd:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:
BRRFile13:
	db "13.brr"
BRRFile13End:
BRRFile14:
	db "14.brr"
BRRFile14End:
BRRFile15:
	db "15.brr"
BRRFile15End:
BRRFile16:
	db "16.brr"
BRRFile16End:
BRRFile17:
	db "17.brr"
BRRFile17End:
BRRFile18:
	db "18.brr"
BRRFile18End:
BRRFile19:
	db "19.brr"
BRRFile19End:
BRRFile1A:
	db "1A.brr"
BRRFile1AEnd:
BRRFile1B:
	db "1B.brr"
BRRFile1BEnd:
BRRFile1C:
	db "1C.brr"
BRRFile1CEnd:
BRRFile1D:
	db "1D.brr"
BRRFile1DEnd:
BRRFile1E:
	db "1E.brr"
BRRFile1EEnd:
BRR_Contender_Hurt:
	db "Contender_Hurt.brr"
BRR_Contender_HurtEnd:
BRR_HeikeKagero_Laugh:
	db "HeikeKagero_Laugh.brr"
BRR_HeikeKagero_LaughEnd:
BRR_GabbyJay_KnockedDown:
	db "GabbyJay_KnockedDown.brr"
BRR_GabbyJay_KnockedDownEnd:
BRR_Leap:
	db "Leap.brr"
BRR_LeapEnd:
BRR_MediumFootstep:
	db "MediumFootstep.brr"
BRR_MediumFootstepEnd:
BRR_Wind:
	db "Wind.brr"
BRR_WindEnd:
BRR_RickBruiser_Laugh:
	db "RickBruiser_Laugh.brr"
BRR_RickBruiser_LaughEnd:
BRR_GabbyJay_ComeOn:
	db "GabbyJay_ComeOn.brr"
BRR_GabbyJay_ComeOnEnd:
BRR_Announcer_Fight:
	db "Announcer_Fight.brr"
BRR_Announcer_FightEnd:
BRR_Announcer_Eight:
	db "Announcer_Eight.brr"
BRR_Announcer_EightEnd:
BRR_SuperMachoMan_LariatSwing:
	db "SuperMachoMan_LariatSwing.brr"
BRR_SuperMachoMan_LariatSwingEnd:
BRR_Announcer_Two:
	db "Announcer_Two.brr"
BRR_Announcer_TwoEnd:
BRR_Announcer_Seven:
	db "Announcer_Seven.brr"
BRR_Announcer_SevenEnd:
BRR_Announcer_Nine:
	db "Announcer_Nine.brr"
BRR_Announcer_NineEnd:
BRR_Announcer_Ten:
	db "Announcer_Ten.brr"
BRR_Announcer_TenEnd:
BRR_Announcer_Four:
	db "Announcer_Four.brr"
BRR_Announcer_FourEnd:
BRR_Announcer_Six:
	db "Announcer_Six.brr"
BRR_Announcer_SixEnd:
BRR_AudienceCheer:
	db "AudienceCheer.brr"
BRR_AudienceCheerEnd:
BRR_MaskedMuscle_Adios:
	db "MaskedMuscle_Adios.brr"
BRR_MaskedMuscle_AdiosEnd:
BRR_BaldBull_Laugh:
	db "BaldBull_Laugh.brr"
BRR_BaldBull_LaughEnd:
BRR_GabbyJay_Yay:
	db "GabbyJay_Yay.brr"
BRR_GabbyJay_YayEnd:
BRR_Grabbed:
	db "Grabbed.brr"
BRR_GrabbedEnd:
BRR_Headbutt:
	db "Headbutt.brr"
BRR_HeadbuttEnd:
BRR_HeavyFootstep:
	db "HeavyFootstep.brr"
BRR_HeavyFootstepEnd:
BRR_NarcisPrince_AngryGrunt:
	db "NarcisPrince_AngryGrunt.brr"
BRR_NarcisPrince_AngryGruntEnd:
BRR_NarcisPrince_KnockedDown:
	db "NarcisPrince_KnockedDown.brr"
BRR_NarcisPrince_KnockedDownEnd:
BRR_HoyQuarlow_KnockedDown:
	db "HoyQuarlow_KnockedDown.brr"
BRR_HoyQuarlow_KnockedDownEnd:
BRR_BearHugger_Hurt:
	db "BearHugger_Hurt.brr"
BRR_BearHugger_HurtEnd:
BRR_BaldBull_Hoo:
	db "BaldBull_Hoo.brr"
BRR_BaldBull_HooEnd:
BRR_Squeak:
	db "Squeak.brr"
BRR_SqueakEnd:
BRR_LightFootstep:
	db "LightFootstep.brr"
BRR_LightFootstepEnd:
BRR_MadClown_Jump:
	db "MadClown_Jump.brr"
BRR_MadClown_JumpEnd:
BRR_Contender_TooClose:
	db "Contender_TooClose.brr"
BRR_Contender_TooCloseEnd:
BRR_Announcer_Knockout:
	db "Announcer_Knockout.brr"
BRR_Announcer_KnockoutEnd:
BRR_NickBruiser_RapidPunchHurt:
	db "NickBruiser_RapidPunchHurt.brr"
BRR_NickBruiser_RapidPunchHurtEnd:
BRR_BaldBull_BullCharge:
	db "BaldBull_BullCharge.brr"
BRR_BaldBull_BullChargeEnd:
BRR_MrSandman_GoodNight:
	db "MrSandman_GoodNight.brr"
BRR_MrSandman_GoodNightEnd:
BRR_MaskedMuscle_KnockedDown:
	db "MaskedMuscle_KnockedDown.brr"
BRR_MaskedMuscle_KnockedDownEnd:
BRR_TimeOutAudience:
	db "TimeOutAudience.brr"
BRR_TimeOutAudienceEnd:
BRR_RickBruiser_Hurt:
	db "RickBruiser_Hurt.brr"
BRR_RickBruiser_HurtEnd:
BRR_GabbyJay_Hurt:
	db "GabbyJay_Hurt.brr"
BRR_GabbyJay_HurtEnd:
BRR_Announcer_One:
	db "Announcer_One.brr"
BRR_Announcer_OneEnd:
BRR_Announcer_HeikeKagero:
	db "Announcer_HeikeKagero.brr"
BRR_Announcer_HeikeKageroEnd:
BRR_Contender_PieceOfCake:
	db "Contender_PieceOfCake.brr"
BRR_Contender_PieceOfCakeEnd:
BRR_Contender_GotHim:
	db "Contender_GotHim.brr"
BRR_Contender_GotHimEnd:
BRR_Announcer_Five:
	db "Announcer_Five.brr"
BRR_Announcer_FiveEnd:
BRR_BearHugger_StomachPunch:
	db "BearHugger_StomachPunch.brr"
BRR_BearHugger_StomachPunchEnd:
BRR_HoyQuarlow_Hwaah:
	db "HoyQuarlow_Hwaah.brr"
BRR_HoyQuarlow_HwaahEnd:
BRR_BellRing:
	db "BellRing.brr"
BRR_BellRingEnd:
BRR_HeikeKagero_KnockedDown:
	db "HeikeKagero_KnockedDown.brr"
BRR_HeikeKagero_KnockedDownEnd:
BRR_Announcer_HoyQuarlow:
	db "Announcer_HoyQuarlow.brr"
BRR_Announcer_HoyQuarlowEnd:
BRR_PistonHurricane_KnockedDown:
	db "PistonHurricane_KnockedDown.brr"
BRR_PistonHurricane_KnockedDownEnd:
BRR_Announcer_MadClown:
	db "Announcer_MadClown.brr"
BRR_Announcer_MadClownEnd:
BRR_BearHugger_KnockedDown:
	db "BearHugger_KnockedDown.brr"
BRR_BearHugger_KnockedDownEnd:
BRR_Announcer_NarcisPrince:
	db "Announcer_NarcisPrince.brr"
BRR_Announcer_NarcisPrinceEnd:
BRR_Contender_KnockedDown:
	db "Contender_KnockedDown.brr"
BRR_Contender_KnockedDownEnd:
BRR_Announcer_BearHugger:
	db "Announcer_BearHugger.brr"
BRR_AAnnouncer_BearHuggerEnd:
BRR_RickBruiser_KnockedDown:
	db "RickBruiser_KnockedDown.brr"
BRR_RickBruiser_KnockedDownEnd:
BRR_Announcer_BaldBull:
	db "Announcer_BaldBull.brr"
BRR_Announcer_BaldBullEnd:
BRR_MaskedMuscle_Hurt:
	db "MaskedMuscle_Hurt.brr"
BRR_MaskedMuscle_HurtEnd:
BRR_BaldBull_KnockedDown:
	db "BaldBull_KnockedDown.brr"
BRR_BaldBull_KnockedDownEnd:
BRR_Announcer_BobCharlie:
	db "Announcer_BobCharlie.brr"
BRR_Announcer_BobCharlieEnd:
BRR_DragnChan_Auuugh:
	db "DragnChan_Auuugh.brr"
BRR_DragnChan_AuuughEnd:
BRR_MaskedMuscle_Spit:
	db "MaskedMuscle_Spit.brr"
BRR_MaskedMuscle_SpitEnd:
BRR_Contender_RightOn:
	db "Contender_RightOn.brr"
BRR_Contender_RightOnEnd:
BRR_Announcer_TimeUp:
	db "Announcer_TimeUp.brr"
BRR_Announcer_TimeUpEnd:
BRR_Announcer_NickBruiser:
	db "Announcer_NickBruiser.brr"
BRR_Announcer_NickBruiserEnd:
BRR_DragonChan_KnockedDown:
	db "DragonChan_KnockedDown.brr"
BRR_DragonChan_KnockedDownEnd:
BRR_Announcer_DragonChan:
	db "Announcer_DragonChan.brr"
BRR_Announcer_DragonChanEnd:
BRR_PistonHurricane_AngryGrunt:
	db "PistonHurricane_AngryGrunt.brr"
BRR_PistonHurricane_AngryGruntEnd:
BRR_NickBruiser_DismissiveGrunt:
	db "NickBruiser_DismissiveGrunt.brr"
BRR_NickBruiser_DismissiveGruntEnd:
BRR_Announcer_RickBruiser:
	db "Announcer_RickBruiser.brr"
BRR_Announcer_RickBruiserEnd:
BRR_PistonHurricane_Hurt:
	db "PistonHurricane_Hurt.brr"
BRR_PistonHurricane_HurtEnd:
BRR_ArmFlex:
	db "ArmFlex.brr"
BRR_ArmFlexEnd:
BRR_Announcer_GabbyJay:
	db "Announcer_GabbyJay.brr"
BRR_Announcer_GabbyJayEnd:
BRR_NarcisPrince_Laugh:
	db "NarcisPrince_Laugh.brr"
BRR_NarcisPrince_LaughEnd:
BRR_BaldBull_Hurt:
	db "BaldBull_Hurt.brr"
BRR_BaldBull_HurtEnd:
BRR_Announcer_AranRyan:
	db "Announcer_AranRyan.brr"
BRR_Announcer_AranRyanEnd:
BRR_Announcer_PistonHurricane:
	db "Announcer_PistonHurricane.brr"
BRR_Announcer_PistonHurricaneEnd:
BRR_DragonChan_Hurt:
	db "DragonChan_Hurt.brr"
BRR_DragonChan_HurtEnd:
BRR_Announcer_MrSandman:
	db "Announcer_MrSandman.brr"
BRR_Announcer_MrSandmanEnd:
BRR_Announcer_SuperMachoMan:
	db "Announcer_SuperMachoMan.brr"
BRR_Announcer_SuperMachoManEnd:
BRR_BobCharlie_Ooo:
	db "BobCharlie_Ooo.brr"
BRR_BobCharlie_OooEnd:
BRR_Announcer_MaskedMuscle:
	db "Announcer_MaskedMuscle.brr"
BRR_Announcer_MaskedMuscleEnd:
BRR_HeikeKagero_HairAttack:
	db "HeikeKagero_HairAttack.brr"
BRR_HeikeKagero_HairAttackEnd:
BRR_DragonChan_HiYah:
	db "DragonChan_HiYah.brr"
BRR_DragonChan_HiYahEnd:
BRR_NarcisPrince_Hurt:
	db "NarcisPrince_Hurt.brr"
BRR_NarcisPrince_HurtEnd:
BRR_NickBruiser_KnockedDown:
	db "NickBruiser_KnockedDown.brr"
BRR_NickBruiser_KnockedDownEnd:
BRR_Announcer_Three:
	db "Announcer_Three.brr"
BRR_Announcer_ThreeEnd:
BRR_AranRyan_Grunt:
	db "AranRyan_Grunt.brr"
BRR_AranRyan_GruntEnd:
BRR_HoyQuarlow_Laugh:
	db "HoyQuarlow_Laugh.brr"
BRR_HoyQuarlow_LaughEnd:

;--------------------------------------------------------------------
