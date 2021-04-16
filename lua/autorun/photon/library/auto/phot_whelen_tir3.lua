AddCSLuaFile()

local A = "AMBER"
local R = "D_RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Whelen Tir3 Vertical"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_linz3.mdl"
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
		W = 5,
		H = 5,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1,
		Scale = 1.2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -0.8, 0, 0 ), Angle( 90, 0, 0 ), "lightbar" },

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
		["code1"] = { 1, 1, 1, 0, },
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
		["code2"] = { 1, 0, 1, 1, 1, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["code2CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code3CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3"] = { 1, 0 },
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
				["lightbar"] = "code1",
			},
			M2 = { -- steadyburn
				["lightbar"] = "code2",
			},
			M3 = { -- code2
	            ["lightbar"] = "code3",
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
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

-- end

local name = "Whelen Tir3"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_linz3.mdl"
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
		W = 5,
		H = 5,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1,
		Scale = 1.2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -0.8, 0, 0 ), Angle( 0, 90, 0 ), "lightbar" },

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
		["code1"] = { 1, 1, 1, 0, },
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
		["code2"] = { 1, 0, 1, 1, 1, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["code2CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code3CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3"] = { 1, 0 },
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
				["lightbar"] = "code1",
			},
			M2 = { -- steadyburn
				["lightbar"] = "code2",
			},
			M3 = { -- code2
	            ["lightbar"] = "code3",
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
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

-- end