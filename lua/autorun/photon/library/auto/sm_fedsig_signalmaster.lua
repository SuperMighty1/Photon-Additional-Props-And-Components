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

local name = "Federal Signal Signalmaster"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/federal_signal_signalmaster.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "AMBER",
}


COMPONENT.Meta = {
	lightbar= {
		AngleOffset = 90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1,
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( 20.7, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[2] = { Vector( 16, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[3] = { Vector( 11.2, 1.08, 0 ),Angle( 0, 0, 0 ), "lightbar" },
	[4] = { Vector( 6.6, 1.08, 0 ),Angle( 0, 0, 0 ), "lightbar" },
	[5] = { Vector( 1.9, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[6] = { Vector( -2.8, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[7] = { Vector( -7.4, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[8] = { Vector( -12.1, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[9] = { Vector( -16.8, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[10] = { Vector( -21.4, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },

}

COMPONENT.Sections = {
	["lightbar"] = {
        [1] = {  
        	{ 1, "_1" },{ 2, "_1" },
        	{ 3, "_1" },{ 4, "_1" },
        	{ 5, "_1" },{ 6, "_2" },
        	{ 7, "_2" },{ 8, "_2" },
        	{ 9, "_2" },{ 10, "_2" },
        },
        // CODE 1 PATTERNS 
        [2] = { 
        	{ 1, "_1" },{ 2, "_1" },
        	{ 3, "_1" },{ 4, "_1" },
        	{ 5, "_1" },
        },
        [3] = { 
        	{ 6, "_2" },{ 7, "_2" },
        	{ 8, "_2" },{ 9, "_2" },
        	{ 10, "_2" },
        },
        [4] = { 
        	{ 1, "_1" },{ 2, "_1" },
        	{ 3, "_1" },{ 6, "_2" },
        	{ 7, "_2" },
        }, 
        [5] = { 
        	{ 4, "_1" },{ 5, "_1" },
        	{ 8, "_2" },{ 9, "_2" },
        	{ 10, "_2" },
        },  
        [6] = { 
        	{ 1, "_1" },{ 3, "_1" },
        	{ 5, "_1" },{ 7, "_2" },
        	{ 9, "_2" },
        },   
        [7] = { 
        	{ 2, "_1" },{ 4, "_1" },
        	{ 6, "_2" },{ 8, "_2" },
        	{ 10, "_2" },
        },   
        [8] = { 
        	{ 2, "_1" },
        }, -- TA LEFT
        [9] = {
        	{ 1, "_3" },
        },
        [10] = {
        	{ 1, "_3" },{ 2, "_3" },
        },
        [11] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },
        },
        [12] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },
        }, 
        [13] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },
        },
        [14] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },
        }, 
        [15] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },
        }, 
        [16] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },
        },  
        [17] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },
        }, 
        [18] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },{ 10, "_3" },
        }, -- TA RIGHT   
        [19] = {
        	{ 10, "_3" },
        },
        [20] = {
        	{ 10, "_3" },{ 9, "_3"},
        },
        [21] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},
        },
        [22] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},
        },
        [23] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},
        },
        [24] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},
        },
        [25] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},
        },
        [26] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},{ 3, "_3"},
        }, 
        [27] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},{ 3, "_3"},{ 2, "_3"},
        }, 
        [28] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},{ 3, "_3"},{ 2, "_3"},{ 1, "_3"},
        }, -- TA DIVERGE
        [29] = {
        	{ 5, "_3" },{ 6, "_3" },
        },
        [30] = {
        	{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },
        }, 
        [31] = {
        	{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },
        },
        [32] = {
        	{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },
        },
        [33] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },{ 10, "_3" },
        }, -- ta cruise
        [34] = {
        	{ 1, "_2" },{ 2, "_2" },
        },
        [35] = {
        	{ 9, "_1" },{ 10, "_1" },
        },

    },     
}

COMPONENT.Patterns = {
	["lightbar"] = {
		["all"] = { 1 },
		["ta_cru"] = { 34, 0, 34, 34, 34, 0, 0, 0,
		               35, 0, 35, 35, 35, 0, 0, 0,},
		["ta_div"] = { 29,29,30,30,31,31,32,32,33,33},
		["ta_right"] = { 9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18},
		["ta_left"] = { 19,19,20,20,21,21,22,22,23,23,24,24,25,25,26,26,27,27,28,28},
		["phase1"] = {  2, 2, 2, 2, 2, 3, 3, 3, 3, 3,
			            2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 
			            2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 
			            2, 2, 2, 2, 2, 3, 3, 3, 3, 3,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 
		},
		["phase2"] = {  2, 0, 2, 2, 2, 0, 0, 0,
		                3, 0, 3, 3, 3, 0, 0, 0,
		                2, 0, 2, 2, 2, 0, 0, 0,
		                3, 0, 3, 3, 3, 0, 0, 0,
		                2, 0, 2, 2, 2, 0, 0, 0,
		                3, 0, 3, 3, 3, 0, 0, 0,
		                4, 0, 4, 4, 4, 0, 0, 0,
		                5, 0, 5, 5, 5, 0, 0, 0,
		                4, 0, 4, 4, 4, 0, 0, 0,
		                5, 0, 5, 5, 5, 0, 0, 0,
		                4, 0, 4, 4, 4, 0, 0, 0,
			            6, 0, 6, 6, 6, 0, 0, 0,
		                1, 1, 1, 1,
		                7, 0, 7, 7, 7, 0, 0, 0,
		                6, 0, 6, 6, 6, 0, 0, 0,
		                1, 1, 1, 1,
		                7, 0, 7, 7, 7, 0, 0, 0,
		                6, 0, 6, 6, 6, 0, 0, 0,
		                1, 1, 1, 1,
		                7, 0, 7, 7, 7, 0, 0, 0,
		                 },
		["phase3"] = {
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
		},

	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["lightbar"] = "phase1",
			},
			M2 = { -- steadyburn
				["lightbar"] = "phase2",
			},
			M3 = { -- code2
	            ["lightbar"] = "phase3",
			},
		},
	Auxiliary = {
	        C = { 
	        	["lightbar"] = "ta_cru",
	            },
			L = {
			    ["lightbar"] = "ta_left",
			},
			R = {
				["lightbar"] = "ta_right"
			},
			D = {
				["lightbar"] = "ta_div"
			},
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

-- TA NO RB

local name = "Federal Signal Signalmaster TA"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/federal_signal_signalmaster.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "AMBER",
}


COMPONENT.Meta = {
	lightbar= {
		AngleOffset = 90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1,
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( 20.7, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[2] = { Vector( 16, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[3] = { Vector( 11.2, 1.08, 0 ),Angle( 0, 0, 0 ), "lightbar" },
	[4] = { Vector( 6.6, 1.08, 0 ),Angle( 0, 0, 0 ), "lightbar" },
	[5] = { Vector( 1.9, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[6] = { Vector( -2.8, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[7] = { Vector( -7.4, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[8] = { Vector( -12.1, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[9] = { Vector( -16.8, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[10] = { Vector( -21.4, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },

}

COMPONENT.Sections = {
	["lightbar"] = {
        [1] = {  
        	{ 1, "_1" },{ 2, "_1" },
        	{ 3, "_1" },{ 4, "_1" },
        	{ 5, "_1" },{ 6, "_2" },
        	{ 7, "_2" },{ 8, "_2" },
        	{ 9, "_2" },{ 10, "_2" },
        },
        // CODE 1 PATTERNS 
        [2] = { 
        	{ 1, "_1" },{ 2, "_1" },
        	{ 3, "_1" },{ 4, "_1" },
        	{ 5, "_1" },
        },
        [3] = { 
        	{ 6, "_2" },{ 7, "_2" },
        	{ 8, "_2" },{ 9, "_2" },
        	{ 10, "_2" },
        },
        [4] = { 
        	{ 1, "_1" },{ 2, "_1" },
        	{ 3, "_1" },{ 6, "_2" },
        	{ 7, "_2" },
        }, 
        [5] = { 
        	{ 4, "_1" },{ 5, "_1" },
        	{ 8, "_2" },{ 9, "_2" },
        	{ 10, "_2" },
        },  
        [6] = { 
        	{ 1, "_1" },{ 3, "_1" },
        	{ 5, "_1" },{ 7, "_2" },
        	{ 9, "_2" },
        },   
        [7] = { 
        	{ 2, "_1" },{ 4, "_1" },
        	{ 6, "_2" },{ 8, "_2" },
        	{ 10, "_2" },
        },   
        [8] = { 
        	{ 2, "_1" },
        }, -- TA LEFT
        [9] = {
        	{ 1, "_3" },
        },
        [10] = {
        	{ 1, "_3" },{ 2, "_3" },
        },
        [11] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },
        },
        [12] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },
        }, 
        [13] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },
        },
        [14] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },
        }, 
        [15] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },
        }, 
        [16] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },
        },  
        [17] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },
        }, 
        [18] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },{ 10, "_3" },
        }, -- TA RIGHT   
        [19] = {
        	{ 10, "_3" },
        },
        [20] = {
        	{ 10, "_3" },{ 9, "_3"},
        },
        [21] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},
        },
        [22] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},
        },
        [23] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},
        },
        [24] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},
        },
        [25] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},
        },
        [26] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},{ 3, "_3"},
        }, 
        [27] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},{ 3, "_3"},{ 2, "_3"},
        }, 
        [28] = {
        	{ 10, "_3" },{ 9, "_3"},{ 8, "_3"},{ 7, "_3"},{ 6, "_3"},{ 5, "_3"},{ 4, "_3"},{ 3, "_3"},{ 2, "_3"},{ 1, "_3"},
        }, -- TA DIVERGE
        [29] = {
        	{ 5, "_3" },{ 6, "_3" },
        },
        [30] = {
        	{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },
        }, 
        [31] = {
        	{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },
        },
        [32] = {
        	{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },
        },
        [33] = {
        	{ 1, "_3" },{ 2, "_3" },{ 3, "_3" },{ 4, "_3" },{ 5, "_3" },{ 6, "_3" },{ 7, "_3" },{ 8, "_3" },{ 9, "_3" },{ 10, "_3" },
        }, -- ta cruise
        [34] = {
        	{ 1, "_2" },{ 2, "_2" },
        },
        [35] = {
        	{ 9, "_1" },{ 10, "_1" },
        },

    },     
}

COMPONENT.Patterns = {
	["lightbar"] = {
		["all"] = {  },
		["ta_cru"] = { 34, 0, 34, 34, 34, 0, 0, 0,
		               35, 0, 35, 35, 35, 0, 0, 0,},
		["ta_div"] = { 29,29,30,30,31,31,32,32,33,33},
		["ta_right"] = { 9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18},
		["ta_left"] = { 19,19,20,20,21,21,22,22,23,23,24,24,25,25,26,26,27,27,28,28},
		["phase1"] = {  2, 2, 2, 2, 2, 3, 3, 3, 3, 3,
			            2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 
			            2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 
			            2, 2, 2, 2, 2, 3, 3, 3, 3, 3,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5,
		                4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 
		},
		["phase2"] = {  2, 0, 2, 2, 2, 0, 0, 0,
		                3, 0, 3, 3, 3, 0, 0, 0,
		                2, 0, 2, 2, 2, 0, 0, 0,
		                3, 0, 3, 3, 3, 0, 0, 0,
		                2, 0, 2, 2, 2, 0, 0, 0,
		                3, 0, 3, 3, 3, 0, 0, 0,
		                4, 0, 4, 4, 4, 0, 0, 0,
		                5, 0, 5, 5, 5, 0, 0, 0,
		                4, 0, 4, 4, 4, 0, 0, 0,
		                5, 0, 5, 5, 5, 0, 0, 0,
		                4, 0, 4, 4, 4, 0, 0, 0,
			            6, 0, 6, 6, 6, 0, 0, 0,
		                1, 1, 1, 1,
		                7, 0, 7, 7, 7, 0, 0, 0,
		                6, 0, 6, 6, 6, 0, 0, 0,
		                1, 1, 1, 1,
		                7, 0, 7, 7, 7, 0, 0, 0,
		                6, 0, 6, 6, 6, 0, 0, 0,
		                1, 1, 1, 1,
		                7, 0, 7, 7, 7, 0, 0, 0,
		                 },
		["phase3"] = {
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
			            4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
		},

	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["lightbar"] = "all",
			},
			M2 = { -- steadyburn
				["lightbar"] = "all",
			},
			M3 = { -- code2
	           ["lightbar"] = "all",
			},
		},
	Auxiliary = {
	        C = { 
	        	["lightbar"] = "ta_cru",
	            },
			L = {
			    ["lightbar"] = "ta_left",
			},
			R = {
				["lightbar"] = "ta_right"
			},
			D = {
				["lightbar"] = "ta_div"
			},
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