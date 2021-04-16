AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "Premier Hazard Defender"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/premier_hazard_defender.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE",
	[3] = "RED"
}

COMPONENT.Meta = {
	superled = {
		AngleOffset = 90,
		W = 6.4,
		H = 6.4,
		Sprite = "sprites/defender_main",
		Scale = 1,
		WMult = 1.5
	}
}

COMPONENT.Positions = {
	[1] = { Vector( -3.5, -6.9, 0 ), Angle( 0, 180, 0 ), "superled" },
	[2] = { Vector( 3.5, -6.9, 0 ), Angle( 0, 180, 0 ), "superled" },
	[3] = { Vector( -17.5, -6.99, 0 ), Angle( 0, 180, 0 ), "superled" },
	[4] = { Vector( 17.5, -6.99, 0 ), Angle( 0, 180, 0 ), "superled"},
	[5] = { Vector( -24, -4.89, 0 ), Angle( 0, 145.4, 0.1 ), "superled"},
	[6] = { Vector( 24, -4.89, 0 ), Angle( 0, -145.4, 0.1 ), "superled"}, 
} 

COMPONENT.Sections = {
	["auto_w400"] = {
		[1] = { { 1, "_1", 1 },{ 3, "_1", 1 },{ 5, "_1", 1 }, },
		[2] = { { 2, "_1", 1 },{ 4, "_1", 1 },{ 6, "_1", 1 }, },
		[3] = { { 2, "_2", 1 }, },
	},
}

COMPONENT.Patterns = {
	["auto_w400"] = {
		["code1"] = { 1 },
		["code2"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, },
	}
}

COMPONENT.TrafficDisconnect = { }

COMPONENT.Modes = {
	Primary = {
		M1 = {
		["auto_w400"] = "code1",
		},
		M2 = {
		["auto_w400"] = "code2",			
		},
		M3 = {
		}
	},
	Auxiliary = {
		L = {
		},
		R = {
		},
		D = {
		}
	},
	Illumination = {
		R = {
		},
		L = {
		},
		F = {
			{ 1, W }, { 2, W },
		},
		T = {
			{ 1, W }, { 2, W },
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

--END OF COMPONENT 

--BEGINNING OF COMPONENT

local name = "Whelen 400 Series Body"

local COMPONENT = {}

COMPONENT.Model = "models/SuperMighty/props_v2/whelen_400_series_body.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Auxiliary"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "BLUE",
	[3] = "AMBER"
}

COMPONENT.Meta = {
	superled = {
		AngleOffset = -90,
		W = 9,
		H = 8,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 2,
		WMult = 1
	}
}

COMPONENT.Positions = {
	[1] = { Vector( -0.35, 0, 1.15 ), Angle( -1, 90, 0 ), "superled" },
	[2] = { Vector( -0.35, 0, -1.15 ), Angle( -1, 90, 0 ), "superled" },
}

COMPONENT.Sections = {
	["auto_w400"] = {
		[1] = { { 1, "_1", 1 }, { 2, "_2", 1 },  },
		[2] = { { 1, "_1", 1 }, },
		[3] = { { 2, "_2", 1 }, },
	},
}

COMPONENT.Patterns = {
	["auto_w400"] = {
		["code1"] = { 2, 0, 2, 0, 3, 0, 3, 0 },
		["code1A"] = { 1, 1, 1, 0, 0, 0 },
		["code1B"] = { 0, 0, 0, 1, 1, 1 },
		["code2"] = { 1, 0, 1, 0, 2, 2, 2, 3, 3, 3, 0 },
		["code2A"] = { 1, 0, 1, 0, 3, 3, 3, 2, 2, 2, 3, 3, 3, 2, 2, 2, 3, 3, 3, 2, 2, 2, 0 },
		["code2B"] = { 0, 1, 0, 1, 2, 2, 2, 3, 3, 3, 2, 2, 2, 3, 3, 3, 2, 2, 2, 3, 3, 3, 0 },
		["code3"] = { 1, 0, 1, 0, 1, 0, 1, 1, 1, 0 },
		["code3A"] = { 2, 0, 3, 0, 2, 0, 3, 0, 2, 0, 3, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0 },
		["code3B"] = { 3, 0, 2, 0, 3, 0, 2, 0, 3, 0, 2, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1 },
		["TDWN"] = { 1 },
	}
}

COMPONENT.TrafficDisconnect = { }

COMPONENT.Modes = {
	Primary = {
		M1 = {
		["auto_w400"] = "code1",
		},
		M2 = {
        ["auto_w400"] = "code2",
		},
		M3 = {
        ["auto_w400"] = "code3",
		}
	},
	Auxiliary = {
		L = {
		},
		R = {
		},
		D = {
		}
	},
	Illumination = {
		R = {
		},
		L = {
		},
		F = {
			{ 1, W }, { 2, W },
		},
		T = {
			{ 1, W }, { 2, W },
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )