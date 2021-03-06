AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Federal Signal Legend Clear"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/fedsig_legend/legend_clear.mdl"
COMPONENT.Skin = 0
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE"
}

COMPONENT.Meta = {
	legend_forward = {
		AngleOffset = -90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_wide",
		Scale = 1,
		WMult = 1.25,
		EmitArray = {
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 )
		}
	},
	legend_forward_nar = {
		AngleOffset = -90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_narrow",
		Scale = 1.5,
		WMult = 1,
	},
	legend_rear_nar = {
		AngleOffset = 90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_narrow",
		Scale = 1.5,
		WMult = 1,
	},
	legend_rear = {
		AngleOffset = 90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_wide",
		Scale = 1,
		WMult = 1.25,
		EmitArray = {
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -3.1, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },
	[2] = { Vector( 3.1, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },

	[3] = { Vector( -9.35, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },
	[4] = { Vector( 9.35, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },

	[5] = { Vector( -15.59, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },
	[6] = { Vector( 15.59, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },

	[7] = { Vector( -20.86, 8.16, 0.72 ), Angle( 0, 20.48, 0 ), "legend_forward_nar", 1 },
	[8] = { Vector( 20.86, 8.16, 0.72 ), Angle( 0, -20.48, 0 ), "legend_forward_nar", 2 },

	[9] = { Vector( -24.52, 6.97, 0.72 ), Angle( 0, 44.48, 0 ), "legend_forward_nar" },
	[10] = { Vector( 24.52, 6.97, 0.72 ), Angle( 0, -44.48, 0 ), "legend_forward_nar" },

	[11] = { Vector( -26.03, 3.59, 0.72 ), Angle( 0, 73.38, 0 ), "legend_forward_nar" },
	[12] = { Vector( 26.03, 3.59, 0.72 ), Angle( 0, -73.38, 0 ), "legend_forward_nar" },

	[13] = { Vector( -26.49, 0.08, 0.72 ), Angle( 0, 90, 0 ), "legend_forward_nar" },
	[14] = { Vector( 26.49, 0.08, 0.72 ), Angle( 0, -90, 0 ), "legend_forward_nar" },

	[15] = { Vector( -26.03, -3.44, 0.72 ), Angle( 0, -73.38, 0 ), "legend_rear_nar" },
	[16] = { Vector( 26.03, -3.44, 0.72 ), Angle( 0, 73.38, 0 ), "legend_rear_nar" },

	[17] = { Vector( -24.52, -6.82, 0.72 ), Angle( 0, -44.48, 0 ), "legend_rear_nar" },
	[18] = { Vector( 24.52, -6.82, 0.72 ), Angle( 0, 44.48, 0 ), "legend_rear_nar" },

	[19] = { Vector( -20.86, -8.02, 0.72 ), Angle( 0, -20.48, 0 ), "legend_rear_nar", 3 },
	[20] = { Vector( 20.86, -8.02, 0.72 ), Angle( 0, 20.48, 0 ), "legend_rear_nar", 4 },

	[21] = { Vector( -15.59, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },
	[22] = { Vector( 15.59, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },

	[23] = { Vector( -9.35, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },
	[24] = { Vector( 9.35, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },

	[25] = { Vector( -3.1, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },
	[26] = { Vector( 3.1, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },

}

COMPONENT.Sections = {
	["auto_fedsig_legend"] = {
		[1] = { -- ALL LIGHTS
			{ 1, "_1" }, { 2, "_2" },
			{ 3, "_1" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_2" },
			{ 7, "_1" }, { 8, "_2" },
			{ 9, "_1" }, { 10, "_2" },
			{ 11, "_1" }, { 12, "_2" },
			{ 13, "_1" }, { 14, "_2" },
			{ 15, "_1" }, { 16, "_2" },
			{ 17, "_1" }, { 18, "_2" },
			{ 19, "_1" }, { 20, "_2" },
			{ 21, "_1" }, { 22, "_2" },
			{ 23, "_1" }, { 24, "_2" },
			{ 25, "_1" }, { 26, "_2" },

		},
		[2] = { -- "_1"ED SIDE
			{ 3, "_1" }, { 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" },
			{ 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" }, { 23, "_1" }, { 25, "_1" }
		},
		[3] = { -- "_2"LUE SIDE
			{ 4, "_2" }, { 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" },
			{ 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }, { 24, "_2" }, { 26, "_2" }, 
		},
		[4] = {
			{ 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" }
		},
		[5] = {
			{ 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }
		},
		[6] = {
			{ 3, "_1" }, { 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" }, { 23, A }
		},
		[7] = {
			{ 4, "_2" }, { 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }, { 24, A }
		},
		[8] = {
			{ 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" }, { 23, A }, { 25, A }
		},
		[9] = {
			{ 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }, { 24, A }, { 26, A }
		},
		[10] = {
			{ 3, "_1" }, { 4, "_2" }, { 25, A }, { 26, A }, { 23, A }, { 24, A }
		},
		[11] = {
			{ 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" },
			{ 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }
		},
		-- Pattern 6 "_1"ED
		[12] = {
			{ 13, "_1" }
		},
		[13] = {
			{ 11, "_1" }, { 13, "_1" }, { 15, "_1" }
		},
		[14] = {
			{ 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }
		},
		[15] = {
			{ 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }
		},
		[16] = {
			{ 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" }
		},
		[17] = {
			{ 3, "_1" }, { 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" }, { 23, A }
		},
		-- FULL "_1"ED
		[18] = {
			{ 3, "_1" }, { 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }, { 21, "_1" }, { 23, A }, { 25, A }
		},
		-- Pattern 6 "_2"LUE
		[19] = {
			{ 14, "_2" }
		},
		[20] = {
			{ 12, "_2" }, { 14, "_2" }, { 16, "_2" }
		},
		[21] = {
			{ 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }
		},
		[22] = {
			{ 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }
		},
		[23] = {
			{ 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }
		},
		[24] = {
			{ 4, "_2" }, { 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }, { 24, A }
		},
		-- FULL "_2"LUE
		[25] = {
			{ 4, "_2" }, { 6, "_2" }, { 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }, { 22, "_2" }, { 24, A }, { 26, A }
		},
		-- Pattern 7
		[26] = {
			{ 3, "_1" }, { 23, A }, { 25, A }
		},
		[27] = {
			{ 4, "_2" }, { 24, A }, { 26, A }
		},
		-- code 3
		[28] = {
			{ 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" },
			{ 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }
		},
		[29] = {
			{ 5, "_1" }, { 21, "_1" }, { 6, "_2" }, { 22, "_2" }
		},
		[30] = {
			{ 3, "_1" }, { 23, A }, { 4, "_2" }, { 24, A }
		},
		[31] = {
			{ 25, A }, { 26, A }
		},
		-- code 2
		[32] = {
			{ 3, "_1" }, { 4, "_2" }, { 23, A }, { 24, A }
		},
		[33] = {
			{ 5, "_1" }, { 6, "_2" }, { 21, "_1" }, { 22, "_2" }
		},
		[34] = {
			{ 25, A }, { 26, A }
		}
	},
	["auto_fedsig_legend_corner"] = {
		[1] = {
			{ 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 13, "_1" }, { 15, "_1" }, { 17, "_1" }, { 19, "_1" }
		},
		[2] = {
			{ 8, "_2" }, { 10, "_2" }, { 12, "_2" }, { 14, "_2" }, { 16, "_2" }, { 18, "_2" }, { 20, "_2" }
		},
		[3] = {
			{ 7, "_1", .55 }, { 9, "_1", .55 }, { 11, "_1", .55 }, { 13, "_1", .55 }, { 15, "_1", .55 }, { 17, "_1", .55 }, { 19, "_1", .55 },
			{ 8, "_2", .66 }, { 10, "_2", .66 }, { 12, "_2", .66 }, { 14, "_2", .66 }, { 16, "_2", .66 }, { 18, "_2", .66 }, { 20, "_2", .66 }
		},
		[4] = {
			{ 7, "_1", .66 }, { 9, "_1", .66 }, { 11, "_1", .66 }, { 13, "_1", .66 }, { 15, "_1", .66 }, { 17, "_1", .66 }, { 19, "_1", .66 },
			{ 8, "_2", .55 }, { 10, "_2", .55 }, { 12, "_2", .55 }, { 14, "_2", .55 }, { 16, "_2", .55 }, { 18, "_2", .55 }, { 20, "_2", .55 }
		}
	},
	["auto_fedsig_legend_takedown"] = {
		[1] = { { 1, W } },
		[2] = { { 2, W } },
	},
	["auto_fedsig_legend_signalmaster"] = {
		[1] = { { 23, A } },
		[2] = { { 23, A }, { 25, A } },
		[3] = { { 23, A }, { 25, A }, { 26, A } },

		[4] = { { 23, A }, { 25, A }, { 26, A }, { 24, A } },

		[5] = { { 24, A } },
		[6] = { { 26, A }, { 24, A } },
		[7] = { { 25, A }, { 26, A }, { 24, A } },

		[8] = { { 25, A }, { 26, A }}
	}
}

COMPONENT.Patterns = {
	["auto_fedsig_legend_signalmaster"] = {
		["left"] = { 5, 5, 6, 6, 7, 7, 4, 4, 0, 0, 0, 0 },
		["right"] = { 1, 1, 2, 2, 3, 3, 4, 4, 0, 0, 0, 0 },
		["diverge"] = { 8, 8, 8, 4, 4, 4, 0, 0, 0, 0, 0, 0 }
	},
	["auto_fedsig_legend"] = {
		["all"] = { 1, 0, 1, 0, 1, 0 },
		["alt_slow"] = { 2, 2, 2, 2, 0, 3, 3, 3, 3, 0 },
		["pattern_1"] = { 4, 4, 4, 4, 0, 5, 5, 5, 5, 0 },
		["pattern_2"] = { 6, 6, 6, 6, 0, 7, 7, 7, 7, 0 },
		["pattern_3"] = { 8, 8, 8, 8, 0, 9, 9, 9, 9, 0 },
		["pattern_4"] = { 8, 8, 8, 0, 9, 9, 9, 0 },
		["pattern_5"] = { 10, 10, 10, 10, 0, 11, 11, 11, 11, 0 },
		["pattern_6"] = { 
			13, 15, 17, 18, 18,
			20, 22, 24, 25, 25
		},
		["pattern_7"] = { 26, 26, 26, 26, 0, 27, 27, 27, 27, 0, 18, 18, 18, 18, 0, 25, 25, 25, 25, 0 },
		["code2"] = {
			33, 33, { 33, 33 }, { 33, 32 }, 32, 32, 34, 34
		},
		["code3"] = {
			{ 28, 29 }, 0, { 29, 30 }, 0, { 30, 31 }, 0, { 30, 29 }, 0
		},
		["alert"] = {
			{ 28, 29 }, { 30, 31 },
		}
	},
	["auto_fedsig_legend_corner"] = {
		["cruise"] = {
			3, 3, 3, 4, 4, 4
		},
		["code2"] = {
			{ 1, 2 }, { 1, 2 }, 0, 0
		},
		["code3"] = {
			1, 0, 1, 0, 2, 0, 2, 0
		},
		["alert"] = {
			2, 1
		}
	},
	["auto_fedsig_legend_takedown"] = {
		["stage3"] = { 1, 1, 1, 2, 2, 2 },
		["alert"] = { 1, 2 },
	}
}

COMPONENT.TrafficDisconnect = { 
	["auto_fedsig_legend_signalmaster"] = {
		23, 25, 26, 24 
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_fedsig_legend"] = "pattern_7",
			},
			M2 = {
				["auto_fedsig_legend"] = "code2",
				["auto_fedsig_legend_corner"] = "code2"
			},
			M3 = {
				["auto_fedsig_legend"] = "code3",
				["auto_fedsig_legend_corner"] = "code3",
				["auto_fedsig_legend_takedown"] = "stage3"
			},
			ALERT = {
				["auto_fedsig_legend"] = "alert",
				["auto_fedsig_legend_corner"] = "alert",
				["auto_fedsig_legend_takedown"] = "alert"
			}
		},
	Auxiliary = {
			C = {
				["auto_fedsig_legend_corner"] = "cruise"
			},
			L = {
				["auto_fedsig_legend_signalmaster"] = "left"
			},
			R = {
				["auto_fedsig_legend_signalmaster"] = "right"
			},
			D = {
				["auto_fedsig_legend_signalmaster"] = "diverge"
			}
		},
	Illumination = {
		T = {
			{ 1, W }, { 2, W }
		},
		F = {
			{ 1, W }, { 2, W }
		},
		L = {
			{ 13, W }
		},
		R = {
			{ 14, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )