AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Federal Signal Arjent Clear"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/arjent_lightbar_clear.mdl"
COMPONENT.Skin = 0
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE"
}

COMPONENT.Meta = {
	arjent_forward = {
		AngleOffset = -90,
		W = 6.75,
		H = 6.75,
		Sprite = "sprites/emv/arjent_main",
		Scale = .88,
		WMult = 1,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
	arjent_takedown = {
		AngleOffset = -90,
		W = 7.5,
		H = 7.1,
		Sprite = "sprites/emv/arjent_takedown",
		Scale = 2,
		WMult = 1.5,
	},
	arjent_alley = {
		AngleOffset = -90,
		W = 2.25,
		H = 2.25,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
		WMult = .9,
	},
	arjent_rear = {
		AngleOffset = 90,
		W = 6.75,
		H = 6.75,
		Sprite = "sprites/emv/arjent_main",
		Scale = .88,
		WMult = 1,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -10.4, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },
	[2] = { Vector( 10.4, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },

	[3] = { Vector( -16.79, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },
	[4] = { Vector( 16.79, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },

	[5] = { Vector( -23.85, 7.61, 2.17 ), Angle( 0, 20, 0 ), "arjent_forward" },
	[6] = { Vector( 23.85, 7.61, 2.17 ), Angle( 0, -20, 0 ), "arjent_forward" },

	[7] = { Vector( -30.17, 3.9, 2.17 ), Angle( 0, 45, 0 ), "arjent_forward", 1 },
	[8] = { Vector( 30.17, 3.9, 2.17 ), Angle( 0, -45, 0 ), "arjent_forward", 2 },

	[9] = { Vector( -30.17, -4.19, 2.17 ), Angle( 0, -45, 0 ), "arjent_rear", 3 },
	[10] = { Vector( 30.17, -4.19, 2.17 ), Angle( 0, 45, 0 ), "arjent_rear", 4 },

	[11] = { Vector( -23.85, -7.92, 2.17 ), Angle( 0, -20, 0 ), "arjent_rear" },
	[12] = { Vector( 23.85, -7.92, 2.17 ), Angle( 0, 20, 0 ), "arjent_rear" },

	[13] = { Vector( -16.79, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[14] = { Vector( 16.79, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[15] = { Vector( -10.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[16] = { Vector( 10.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[17] = { Vector( -3.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[18] = { Vector( 3.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[19] = { Vector( -3.51, 8.85, 2.05 ), Angle( 0, 0, 0 ), "arjent_takedown" },
	[20] = { Vector( 3.51, 8.85, 2.05 ), Angle( 0, 0, 0 ), "arjent_takedown" },

	[21] = { Vector( -33.15, 0.18, 2.14 ), Angle( 0, 72.9, 0 ), "arjent_alley" },
	[22] = { Vector( 33.15, 0.18, 2.14 ), Angle( 0, -72.9, 0 ), "arjent_alley" },

}

COMPONENT.Sections = {
	["auto_fedsig_arjent"] = {
		{
			{ 1, "_1" }, { 2, "_2" }, { 3, "_1" }, { 4, "_2" }, { 5, "_1" }, { 6, "_2" }, { 7, "_1" }, { 8, "_2" },
			{ 9, "_1" }, { 10, "_2" }, { 11, "_1" }, { 12, "_2" }, { 13, A }, { 14, A }, { 15, A }, { 16, A }, { 17, A }, { 18, A },
			{ 19, SW }, { 20, SW }, { 21, SW }, { 22, SW }, 
		},
	},
	["auto_fedsig_arjent_steady"] = {
		[1] = { { 3, "_1" } },
		[2] = { { 4, "_2"}, },
		[3] = { { 3, "_1"}, { 4, "_2"} },

	},
	["auto_fedsig_arjent_inboard"] = {
		[1] = { { 1, "_1" },{ 4, "_2" } },
		[2] = { { 2, "_2" },{ 3, "_1" } },
		[3] = { { 1, "_1" }, { 2, "_2" },{ 3, "_1" },{ 4, "_2" } },
	},
	["auto_fedsig_arjent_out_mid"] = {
		[1] = { { 5, "_1" }, { 12, "_2" } },
		[2] = { { 6, "_2" }, { 11, "_1" } },
		[3] = { { 5, "_1" }, { 6, "_2" }, { 11, "_1" }, { 12, "_2" } },
	},
	["auto_fedsig_arjent_outter"] = {
		[1] = { { 7, "_1" }, { 10, "_2" } },
		[2] = { { 8, "_2" }, { 9, "_1" } },
		[3] = { { 7, "_1" }, { 8, "_2" }, { 9, "_1" }, { 10, "_2" } },
	},
	["auto_fedsig_arjent_takedown"] = {
		[1] = { { 19, SW, { 16, .25, 0 } }, { 20, SW, { 16, .25, 8 } } }
	},
	["auto_fedsig_arjent_signalmaster"] = {
		[1] = { { 13, A }, { 15, A }, { 16, A }, { 14, A } },
		[2] = { { 17, A }, { 18, A } },
		[3] = { { 13, A }, { 15, A }, { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[4] = { { 13, A } },
		[5] = { { 13, A }, { 15, A } },
		[6] = { { 13, A }, { 15, A }, { 17, A } },
		[7] = { { 13, A }, { 15, A }, { 17, A }, { 18, A } },
		[8] = { { 13, A }, { 15, A }, { 17, A }, { 18, A }, { 16, A } },
		[9] = { { 14, A } },
		[10] = { { 16, A }, { 14, A } },
		[11] = { { 18, A }, { 16, A }, { 14, A } },
		[12] = { { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[13] = { { 15, A }, { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[14] = { { 17, A }, { 18, A } },
		[15] = { { 15, A }, { 17, A }, { 18, A }, { 16, A } },
		[16] = { { 15, A }, {13, A } },
		[17] = { { 16, A }, {14, A } },
	}
}

COMPONENT.Patterns = {
	["auto_fedsig_arjent"] = {
		["all"] = { 1 },
	},
	["auto_fedsig_arjent_steady"] = {
		["on"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2 }, -- if you want steady burns on code 1 change this to just 3
	},
	["auto_fedsig_arjent_inboard"] = {
		["code2"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2 },
		["code3"] = { 2, 2, 2, 2, 1, 1, 1, 1 }
	},
	["auto_fedsig_arjent_out_mid"] = {
		["code2"] = { 1, 1, 1, 1, 2, 2, 2 },
		["code3"] = { 1, 1, 1, 2, 2, 2 }
	},
	["auto_fedsig_arjent_outter"] = {
		["code2"] = { 1, 1, 1, 1, 1, 2, 2, 2, 2, 1 },
	},
	["auto_fedsig_arjent_takedown"] = {
		["wigwag"] = { 1 }	
	},
	["auto_fedsig_arjent_signalmaster"] = {
		["warn"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 },
		["right"] = { 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 3, 3, 3, 3, 0, 0, 0, 0 },
		["left"] = { 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 3, 3, 3, 3, 0, 0, 0, 0 },
		["diverge"] = { 14, 14, 14, 15, 15, 15, 3, 3, 3, 3, 3, 0, 0, 0, 0 },
		["code1"] = { 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17 },
	},

}

COMPONENT.TrafficDisconnect = {
	["auto_fedsig_arjent_signalmaster"] ={
		13, 15, 17, 18, 16, 14
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
			["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_signalmaster"] = "code1"
		},
		M2 = {
			--["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_inboard"] = "code2",
			["auto_fedsig_arjent_out_mid"] = "code2",
			["auto_fedsig_arjent_outter"] = "code2",
			["auto_fedsig_arjent_signalmaster"] = "warn"
		},
		M3 = {
			--["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_inboard"] = "code3",
			["auto_fedsig_arjent_out_mid"] = "code3",
			["auto_fedsig_arjent_outter"] = "code2",
			["auto_fedsig_arjent_signalmaster"] = "warn",
			["auto_fedsig_arjent_takedown"] = "wigwag"
		}
	},
	Auxiliary = {
		L = { ["auto_fedsig_arjent_signalmaster"] = "left" },
		R = { ["auto_fedsig_arjent_signalmaster"] = "right" },
		D = { ["auto_fedsig_arjent_signalmaster"] = "diverge" }
	},
	Illumination = {
		 T = {
		 	{ 19, SW }, { 20, SW }
		 },
		 L = {
		 	{ 21, SW }
		 },
		 R = {
		 	{ 22, SW }
		 },
		 F = {
		 	{ 19, SW }, { 20, SW }
		 }
	}
}
EMVU:AddAutoComponent( COMPONENT, name )

local name = "Federal Signal Arjent Red"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/fedsig_arjent/arjent_lightbar_red.mdl"
COMPONENT.Skin = 0
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED"
}

COMPONENT.Meta = {
	arjent_forward = {
		AngleOffset = -90,
		W = 6.75,
		H = 6.75,
		Sprite = "sprites/emv/arjent_main",
		Scale = .88,
		WMult = 1,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
	arjent_takedown = {
		AngleOffset = -90,
		W = 7.5,
		H = 7.1,
		Sprite = "sprites/emv/arjent_takedown",
		Scale = 2,
		WMult = 1.5,
	},
	arjent_alley = {
		AngleOffset = -90,
		W = 2.25,
		H = 2.25,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
		WMult = .9,
	},
	arjent_rear = {
		AngleOffset = 90,
		W = 6.75,
		H = 6.75,
		Sprite = "sprites/emv/arjent_main",
		Scale = .88,
		WMult = 1,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -10.4, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },
	[2] = { Vector( 10.4, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },

	[3] = { Vector( -16.79, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },
	[4] = { Vector( 16.79, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },

	[5] = { Vector( -23.85, 7.61, 2.17 ), Angle( 0, 20, 0 ), "arjent_forward" },
	[6] = { Vector( 23.85, 7.61, 2.17 ), Angle( 0, -20, 0 ), "arjent_forward" },

	[7] = { Vector( -30.17, 3.9, 2.17 ), Angle( 0, 45, 0 ), "arjent_forward", 1 },
	[8] = { Vector( 30.17, 3.9, 2.17 ), Angle( 0, -45, 0 ), "arjent_forward", 2 },

	[9] = { Vector( -30.17, -4.19, 2.17 ), Angle( 0, -45, 0 ), "arjent_rear", 3 },
	[10] = { Vector( 30.17, -4.19, 2.17 ), Angle( 0, 45, 0 ), "arjent_rear", 4 },

	[11] = { Vector( -23.85, -7.92, 2.17 ), Angle( 0, -20, 0 ), "arjent_rear" },
	[12] = { Vector( 23.85, -7.92, 2.17 ), Angle( 0, 20, 0 ), "arjent_rear" },

	[13] = { Vector( -16.79, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[14] = { Vector( 16.79, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[15] = { Vector( -10.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[16] = { Vector( 10.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[17] = { Vector( -3.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[18] = { Vector( 3.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[19] = { Vector( -3.51, 8.85, 2.05 ), Angle( 0, 0, 0 ), "arjent_takedown" },
	[20] = { Vector( 3.51, 8.85, 2.05 ), Angle( 0, 0, 0 ), "arjent_takedown" },

	[21] = { Vector( -33.15, 0.18, 2.14 ), Angle( 0, 72.9, 0 ), "arjent_alley" },
	[22] = { Vector( 33.15, 0.18, 2.14 ), Angle( 0, -72.9, 0 ), "arjent_alley" },

}

COMPONENT.Sections = {
	["auto_fedsig_arjent"] = {
		{
			{ 1, "_1" }, { 2, "_2" }, { 3, "_1" }, { 4, "_2" }, { 5, "_1" }, { 6, "_2" }, { 7, "_1" }, { 8, "_2" },
			{ 9, "_1" }, { 10, "_2" }, { 11, "_1" }, { 12, "_2" }, { 13, A }, { 14, A }, { 15, A }, { 16, A }, { 17, A }, { 18, A },
			{ 19, SW }, { 20, SW }, { 21, SW }, { 22, SW }, 
		},
	},
	["auto_fedsig_arjent_steady"] = {
		[1] = { { 3, "_1" } },
		[2] = { { 4, "_2"}, },
		[3] = { { 3, "_1"}, { 4, "_2"} },

	},
	["auto_fedsig_arjent_inboard"] = {
		[1] = { { 1, "_1" },{ 4, "_2" } },
		[2] = { { 2, "_2" },{ 3, "_1" } },
		[3] = { { 1, "_1" }, { 2, "_2" },{ 3, "_1" },{ 4, "_2" } },
	},
	["auto_fedsig_arjent_out_mid"] = {
		[1] = { { 5, "_1" }, { 12, "_2" } },
		[2] = { { 6, "_2" }, { 11, "_1" } },
		[3] = { { 5, "_1" }, { 6, "_2" }, { 11, "_1" }, { 12, "_2" } },
	},
	["auto_fedsig_arjent_outter"] = {
		[1] = { { 7, "_1" }, { 10, "_2" } },
		[2] = { { 8, "_2" }, { 9, "_1" } },
		[3] = { { 7, "_1" }, { 8, "_2" }, { 9, "_1" }, { 10, "_2" } },
	},
	["auto_fedsig_arjent_takedown"] = {
		[1] = { { 19, SW, { 16, .25, 0 } }, { 20, SW, { 16, .25, 8 } } }
	},
	["auto_fedsig_arjent_signalmaster"] = {
		[1] = { { 13, A }, { 15, A }, { 16, A }, { 14, A } },
		[2] = { { 17, A }, { 18, A } },
		[3] = { { 13, A }, { 15, A }, { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[4] = { { 13, A } },
		[5] = { { 13, A }, { 15, A } },
		[6] = { { 13, A }, { 15, A }, { 17, A } },
		[7] = { { 13, A }, { 15, A }, { 17, A }, { 18, A } },
		[8] = { { 13, A }, { 15, A }, { 17, A }, { 18, A }, { 16, A } },
		[9] = { { 14, A } },
		[10] = { { 16, A }, { 14, A } },
		[11] = { { 18, A }, { 16, A }, { 14, A } },
		[12] = { { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[13] = { { 15, A }, { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[14] = { { 17, A }, { 18, A } },
		[15] = { { 15, A }, { 17, A }, { 18, A }, { 16, A } },
		[16] = { { 15, A }, {13, A } },
		[17] = { { 16, A }, {14, A } },
	}
}

COMPONENT.Patterns = {
	["auto_fedsig_arjent"] = {
		["all"] = { 1 },
	},
	["auto_fedsig_arjent_steady"] = {
		["on"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2 }, -- if you want steady burns on code 1 change this to just 3
	},
	["auto_fedsig_arjent_inboard"] = {
		["code2"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2 },
		["code3"] = { 2, 2, 2, 2, 1, 1, 1, 1 }
	},
	["auto_fedsig_arjent_out_mid"] = {
		["code2"] = { 1, 1, 1, 1, 2, 2, 2 },
		["code3"] = { 1, 1, 1, 2, 2, 2 }
	},
	["auto_fedsig_arjent_outter"] = {
		["code2"] = { 1, 1, 1, 1, 1, 2, 2, 2, 2, 1 },
	},
	["auto_fedsig_arjent_takedown"] = {
		["wigwag"] = { 1 }	
	},
	["auto_fedsig_arjent_signalmaster"] = {
		["warn"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 },
		["right"] = { 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 3, 3, 3, 3, 0, 0, 0, 0 },
		["left"] = { 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 3, 3, 3, 3, 0, 0, 0, 0 },
		["diverge"] = { 14, 14, 14, 15, 15, 15, 3, 3, 3, 3, 3, 0, 0, 0, 0 },
		["code1"] = { 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17 },
	},

}

COMPONENT.TrafficDisconnect = {
	["auto_fedsig_arjent_signalmaster"] ={
		13, 15, 17, 18, 16, 14
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
			["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_signalmaster"] = "code1"
		},
		M2 = {
			--["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_inboard"] = "code2",
			["auto_fedsig_arjent_out_mid"] = "code2",
			["auto_fedsig_arjent_outter"] = "code2",
			["auto_fedsig_arjent_signalmaster"] = "warn"
		},
		M3 = {
			--["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_inboard"] = "code3",
			["auto_fedsig_arjent_out_mid"] = "code3",
			["auto_fedsig_arjent_outter"] = "code2",
			["auto_fedsig_arjent_signalmaster"] = "warn",
			["auto_fedsig_arjent_takedown"] = "wigwag"
		}
	},
	Auxiliary = {
		L = { ["auto_fedsig_arjent_signalmaster"] = "left" },
		R = { ["auto_fedsig_arjent_signalmaster"] = "right" },
		D = { ["auto_fedsig_arjent_signalmaster"] = "diverge" }
	},
	Illumination = {
		 T = {
		 	{ 19, SW }, { 20, SW }
		 },
		 L = {
		 	{ 21, SW }
		 },
		 R = {
		 	{ 22, SW }
		 },
		 F = {
		 	{ 19, SW }, { 20, SW }
		 }
	}
}
EMVU:AddAutoComponent( COMPONENT, name )

local name = "Federal Signal Arjent Blue"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/fedsig_arjent/arjent_lightbar_blue.mdl"
COMPONENT.Skin = 0
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE"
}

COMPONENT.Meta = {
	arjent_forward = {
		AngleOffset = -90,
		W = 6.75,
		H = 6.75,
		Sprite = "sprites/emv/arjent_main",
		Scale = .88,
		WMult = 1,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
	arjent_takedown = {
		AngleOffset = -90,
		W = 7.5,
		H = 7.1,
		Sprite = "sprites/emv/arjent_takedown",
		Scale = 2,
		WMult = 1.5,
	},
	arjent_alley = {
		AngleOffset = -90,
		W = 2.25,
		H = 2.25,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
		WMult = .9,
	},
	arjent_rear = {
		AngleOffset = 90,
		W = 6.75,
		H = 6.75,
		Sprite = "sprites/emv/arjent_main",
		Scale = .88,
		WMult = 1,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -10.4, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },
	[2] = { Vector( 10.4, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },

	[3] = { Vector( -16.79, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },
	[4] = { Vector( 16.79, 8.85, 2.17 ), Angle( 0, 0, 0 ), "arjent_forward" },

	[5] = { Vector( -23.85, 7.61, 2.17 ), Angle( 0, 20, 0 ), "arjent_forward" },
	[6] = { Vector( 23.85, 7.61, 2.17 ), Angle( 0, -20, 0 ), "arjent_forward" },

	[7] = { Vector( -30.17, 3.9, 2.17 ), Angle( 0, 45, 0 ), "arjent_forward", 1 },
	[8] = { Vector( 30.17, 3.9, 2.17 ), Angle( 0, -45, 0 ), "arjent_forward", 2 },

	[9] = { Vector( -30.17, -4.19, 2.17 ), Angle( 0, -45, 0 ), "arjent_rear", 3 },
	[10] = { Vector( 30.17, -4.19, 2.17 ), Angle( 0, 45, 0 ), "arjent_rear", 4 },

	[11] = { Vector( -23.85, -7.92, 2.17 ), Angle( 0, -20, 0 ), "arjent_rear" },
	[12] = { Vector( 23.85, -7.92, 2.17 ), Angle( 0, 20, 0 ), "arjent_rear" },

	[13] = { Vector( -16.79, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[14] = { Vector( 16.79, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[15] = { Vector( -10.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[16] = { Vector( 10.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[17] = { Vector( -3.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },
	[18] = { Vector( 3.43, -9.17, 2.17 ), Angle( 0, 0, 0 ), "arjent_rear" },

	[19] = { Vector( -3.51, 8.85, 2.05 ), Angle( 0, 0, 0 ), "arjent_takedown" },
	[20] = { Vector( 3.51, 8.85, 2.05 ), Angle( 0, 0, 0 ), "arjent_takedown" },

	[21] = { Vector( -33.15, 0.18, 2.14 ), Angle( 0, 72.9, 0 ), "arjent_alley" },
	[22] = { Vector( 33.15, 0.18, 2.14 ), Angle( 0, -72.9, 0 ), "arjent_alley" },

}

COMPONENT.Sections = {
	["auto_fedsig_arjent"] = {
		{
			{ 1, "_1" }, { 2, "_2" }, { 3, "_1" }, { 4, "_2" }, { 5, "_1" }, { 6, "_2" }, { 7, "_1" }, { 8, "_2" },
			{ 9, "_1" }, { 10, "_2" }, { 11, "_1" }, { 12, "_2" }, { 13, A }, { 14, A }, { 15, A }, { 16, A }, { 17, A }, { 18, A },
			{ 19, SW }, { 20, SW }, { 21, SW }, { 22, SW }, 
		},
	},
	["auto_fedsig_arjent_steady"] = {
		[1] = { { 3, "_1" } },
		[2] = { { 4, "_2"}, },
		[3] = { { 3, "_1"}, { 4, "_2"} },

	},
	["auto_fedsig_arjent_inboard"] = {
		[1] = { { 1, "_1" },{ 4, "_2" } },
		[2] = { { 2, "_2" },{ 3, "_1" } },
		[3] = { { 1, "_1" }, { 2, "_2" },{ 3, "_1" },{ 4, "_2" } },
	},
	["auto_fedsig_arjent_out_mid"] = {
		[1] = { { 5, "_1" }, { 12, "_2" } },
		[2] = { { 6, "_2" }, { 11, "_1" } },
		[3] = { { 5, "_1" }, { 6, "_2" }, { 11, "_1" }, { 12, "_2" } },
	},
	["auto_fedsig_arjent_outter"] = {
		[1] = { { 7, "_1" }, { 10, "_2" } },
		[2] = { { 8, "_2" }, { 9, "_1" } },
		[3] = { { 7, "_1" }, { 8, "_2" }, { 9, "_1" }, { 10, "_2" } },
	},
	["auto_fedsig_arjent_takedown"] = {
		[1] = { { 19, SW, { 16, .25, 0 } }, { 20, SW, { 16, .25, 8 } } }
	},
	["auto_fedsig_arjent_signalmaster"] = {
		[1] = { { 13, A }, { 15, A }, { 16, A }, { 14, A } },
		[2] = { { 17, A }, { 18, A } },
		[3] = { { 13, A }, { 15, A }, { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[4] = { { 13, A } },
		[5] = { { 13, A }, { 15, A } },
		[6] = { { 13, A }, { 15, A }, { 17, A } },
		[7] = { { 13, A }, { 15, A }, { 17, A }, { 18, A } },
		[8] = { { 13, A }, { 15, A }, { 17, A }, { 18, A }, { 16, A } },
		[9] = { { 14, A } },
		[10] = { { 16, A }, { 14, A } },
		[11] = { { 18, A }, { 16, A }, { 14, A } },
		[12] = { { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[13] = { { 15, A }, { 17, A }, { 18, A }, { 16, A }, { 14, A } },
		[14] = { { 17, A }, { 18, A } },
		[15] = { { 15, A }, { 17, A }, { 18, A }, { 16, A } },
		[16] = { { 15, A }, {13, A } },
		[17] = { { 16, A }, {14, A } },
	}
}

COMPONENT.Patterns = {
	["auto_fedsig_arjent"] = {
		["all"] = { 1 },
	},
	["auto_fedsig_arjent_steady"] = {
		["on"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2 }, -- if you want steady burns on code 1 change this to just 3
	},
	["auto_fedsig_arjent_inboard"] = {
		["code2"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2 },
		["code3"] = { 2, 2, 2, 2, 1, 1, 1, 1 }
	},
	["auto_fedsig_arjent_out_mid"] = {
		["code2"] = { 1, 1, 1, 1, 2, 2, 2 },
		["code3"] = { 1, 1, 1, 2, 2, 2 }
	},
	["auto_fedsig_arjent_outter"] = {
		["code2"] = { 1, 1, 1, 1, 1, 2, 2, 2, 2, 1 },
	},
	["auto_fedsig_arjent_takedown"] = {
		["wigwag"] = { 1 }	
	},
	["auto_fedsig_arjent_signalmaster"] = {
		["warn"] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 },
		["right"] = { 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 3, 3, 3, 3, 0, 0, 0, 0 },
		["left"] = { 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 3, 3, 3, 3, 0, 0, 0, 0 },
		["diverge"] = { 14, 14, 14, 15, 15, 15, 3, 3, 3, 3, 3, 0, 0, 0, 0 },
		["code1"] = { 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17 },
	},

}

COMPONENT.TrafficDisconnect = {
	["auto_fedsig_arjent_signalmaster"] ={
		13, 15, 17, 18, 16, 14
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
			["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_signalmaster"] = "code1"
		},
		M2 = {
			--["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_inboard"] = "code2",
			["auto_fedsig_arjent_out_mid"] = "code2",
			["auto_fedsig_arjent_outter"] = "code2",
			["auto_fedsig_arjent_signalmaster"] = "warn"
		},
		M3 = {
			--["auto_fedsig_arjent_steady"] = "on",
			["auto_fedsig_arjent_inboard"] = "code3",
			["auto_fedsig_arjent_out_mid"] = "code3",
			["auto_fedsig_arjent_outter"] = "code2",
			["auto_fedsig_arjent_signalmaster"] = "warn",
			["auto_fedsig_arjent_takedown"] = "wigwag"
		}
	},
	Auxiliary = {
		L = { ["auto_fedsig_arjent_signalmaster"] = "left" },
		R = { ["auto_fedsig_arjent_signalmaster"] = "right" },
		D = { ["auto_fedsig_arjent_signalmaster"] = "diverge" }
	},
	Illumination = {
		 T = {
		 	{ 19, SW }, { 20, SW }
		 },
		 L = {
		 	{ 21, SW }
		 },
		 R = {
		 	{ 22, SW }
		 },
		 F = {
		 	{ 19, SW }, { 20, SW }
		 }
	}
}
EMVU:AddAutoComponent( COMPONENT, name )