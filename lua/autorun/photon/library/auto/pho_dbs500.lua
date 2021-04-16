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

local name = "Hansch DBS 5000"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/hansch_dbs_5000.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "BLUE",
	[3] = "RED"
}

COMPONENT.Meta = {
	superled = {
		AngleOffset = -90,
		W = 10,
		H = 9,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 2,
		WMult = 1
	}
}

COMPONENT.Positions = {
	[1] = { Vector( -1.67, 0, 2.35 ), Angle( -1, 90, 0 ), "superled" },
	[2] = { Vector( -1.64, 0, 0.05 ), Angle( -1, 90, 0 ), "superled" },
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
		["code1"] = { 1, 1, 1, 0, },
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