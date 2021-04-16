AddCSLuaFile()

local A = "AMBER"
local R = "D_RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Soundoff 200L Worklight"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/soundoff_300l_worklight.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}


COMPONENT.Meta = {
	lightbar= {
		AngleOffset = -90,
		W = 3.5,
		H = 3.5,
		Sprite = "sprites/emv/200l_sprite",
		WMult = 2,
		Scale = 2,
		--NoLegacy = true,
		--DirAxis = "Up",
		--DirOffset = 90
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -1.28, -0.1, 0.15 ), Angle( 0, 90, 0 ), "lightbar" },

}

COMPONENT.Sections = {
	["lightbar"] = {
        [1] = { { 1, "_1" }, },
    },     
}

COMPONENT.Patterns = {
	["lightbar"] = {
		["code1CA"] = { 1 },
		["code2CA"] = { 1 },
		["code3CA"] = { 1 },
		["code1"] = { 1 },
		["code1A"] = { 1, 1, 1, 0, 0, 0, 0, 0, },
		["code1B"] = { 0, 0, 0, 0, 1, 1, 1, 0 },
		["code1CHPA"] = { 1 },
		["code1CHPB"] = { 1 },
		["code1NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
		["code2NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
		["code3NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
		["code1NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
		["code2NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
		["code3NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
		["code2"] = { 1 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["code2CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code3CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3"] = { 1},
		["code3A"] = { 1, 0, 1, 0, 0, 0 },
		["code3B"] = { 0, 0, 0, 1, 0, 1 },
		["alert"] = { 1, 0 },
		["alertA"] = { 0, 1 },
		["alertB"] = { 1, 0 },
		["alertCHPA"] = { 0, 1 },
		["alertCHPB"] = { 1, 0 },
		["alertNYPDA"] = { 1, 0 },
		["alertNYPDB"] = { 0, 1 },
		["alertCA"] = { 1 },
		["all"] = { 1 },
		["allA"] = { 1 },
		["allB"] = { 1 },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["lightbar"] = "code2",
			},
			M2 = { -- steadyburn
				["lightbar"] = "code2",
			},
			M3 = { -- code2
	            ["lightbar"] = "code2",
			},
		},
	Auxiliary = {
	        C = { 
	            },
			L = {},
			R = {},
			D = {},
		},
	Illumination = {
		T = {
			{ 1, W }
		},
		F = {
			{ 1, W }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )