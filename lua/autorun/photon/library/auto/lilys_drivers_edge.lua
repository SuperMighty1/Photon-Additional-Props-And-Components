-- File Created by Lily-Rose#0069
-- Created for Super Mighty#002
-- Please do NOT reupload nor take credit for this file.
-- Feel free to edit this file how you see fit though ~
-- just remember to credit us.

-- This is for the DRIVER's Whelen Inner Edge!


AddCSLuaFile()
local A = "AMBER"
local R = "D_RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Lilys Drivers Edge"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/inner_edge_driver.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ForwardTranslation = true
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
	[1] = "D_RED",
	[2] = "WHITE",
    [3] = "AMBER",
}

COMPONENT.Meta = {
	auto_viper = {
		AngleOffset = 0,
		W = 4.5,
		H = 6,
		WMult = 1,
		Sprite = "sprites/emv/whelen_ion",
		Scale = 0.2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
    auto_viper_takedown = {
	AngleOffset = 0,
		W = 3.25,
		H = 3.25,
		WMult = 1,
		Sprite = "sprites/emv/justice_1x3",
		Scale = 0.2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -1.7, 8.4, 0 ), Angle( 0, 94, 0 ), "auto_viper" }, -- Sixth
    [2] = { Vector( -0.8, 4.6, 0 ), Angle( 0, 94, 0 ), "auto_viper" }, -- Fith
    [3] = { Vector( -0, 0.8, 0 ), Angle( 0, 94, 0 ), "auto_viper" }, -- Fourth
    [4] = { Vector( 0.8, -3, 0 ), Angle( 0, 94, 0 ), "auto_viper" }, -- Third
    [5] = { Vector( 1.6, -6.7, 0 ), Angle( 0, 95, 0 ), "auto_viper" }, -- Second
    [6] = { Vector( 2.4, -10.6, 0 ), Angle( 0, 95, 0 ), "auto_viper_takedown" }, -- First Illumination
}

COMPONENT.Sections = {
	["auto_fedsig_viper"] = {
		[1] = { { 1, "_2" },  { 2, "_2" }, { 3, "_2" }, { 4, "_2" }, { 5, "_2" }  },
		[2] = {},
        [4] = { { 1, "_2" }, { 3, "_2" }, { 5, "_2" }, },
        [3] = { { 2, "_1" }, { 4, "_1" }, },
        -- Ripped from Lily's 2020
        [5] = { { 1, "_2" }, },
        [6] = { { 2, "_2" }, },
        [7] = { { 3, "_2" }, },
        [8] = { { 4, "_2" }, },
        [9] = { { 5, "_2" }, },
        -- Cuation Lights
        [10] = { { 1, "_1" }, },
        [11] = { { 2, "_2" }, { 4, "_2" },  },

	},
}

COMPONENT.Patterns = {
	["auto_fedsig_viper"] = {
		["code1"] = { 1, 1, 1, 1, 1, 1, 0,
                      2, 2, 2, 2, 2, 2, 0,
                      1, 1, 1, 1, 1, 1, 0,
                      2, 2, 2, 2, 2, 2, 0,},

		["code2"] = { 3, 3, 3, 3, 3, 3, 0,
                      4, 4, 4, 4, 4, 4, 0,
                      3, 3, 3, 3, 3, 3, 0,
                      4, 4, 4, 4, 4, 4, 0,
                      1, 1, 1, 1, 1, 1, 0,
                      2, 2, 2, 2, 2, 2, 0,
                      1, 1, 1, 1, 1, 1, 0,
                      2, 2, 2, 2, 2, 2, 0
        },
		["code3"] = {
            5, 5, 6, 7, 8, 9, 9, 8, 7, 6, 5, 5, 
            6, 6, 7, 7, 8, 8, 9, 9,
            8, 8, 7, 7, 6, 6, 5, 5,
            3, 3, 3, 3, 3, 3,
            4, 4, 4, 4, 4, 4,
            3, 3, 3, 3, 3, 3,
            4, 4, 4, 4, 4, 4,
            1, 1, 1, 1, 1, 1,
            2, 2, 2, 2, 2, 2,
            1, 1, 1, 1, 1, 1,
            2, 2, 2, 2, 2, 2,
            1, 1, 1, 1, 1, 1,
        },
		["all"] = { 1 },
		["alert"] = { 1, 0 },
		["alertA"] = { 1, 0 },
		["alertB"] = { 0, 1 },
        ["brake"] = { 0 },
        ["caution"] = {
            10, 10, 10, 10, 10, 10, 0,
            11, 11, 11, 11, 11, 11, 0,
         },
        

	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_fedsig_viper"] = "code1", },
		M2 = { ["auto_fedsig_viper"] = "code2", },
		M3 = { ["auto_fedsig_viper"] = "code3", },
		ALERT = { ["auto_fedsig_viper"] = "alert" }
	},
		Auxiliary = {
			C1 = {
				["auto_fedsig_viper"] = "brake",
			},
			C2 = {
				["auto_fedsig_viper"] = "caution",
			},
		},
Illumination = {
		T = {
			{ 6, W },
		},
    },
}

EMVU:AddAutoComponent( COMPONENT, name )