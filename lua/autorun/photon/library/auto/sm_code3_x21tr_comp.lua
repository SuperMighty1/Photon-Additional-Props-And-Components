AddCSLuaFile()

local name = "Code 3 x21 TR"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/code2_x21_tr.mdl"
COMPONENT.Lightbar = true
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = { {1, 0}}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "AMBER",
}

COMPONENT.Meta = {
	code3_illum = {
		AngleOffset = -90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_illum2 = {
		AngleOffset = 90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_corner = {
		AngleOffset = -90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
	code3_corner2 = {
		AngleOffset = 90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[2] = { Vector( 3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
    --  FRONT LIGHTING  --
	[3] = { Vector( -11.06, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[4] = { Vector( 11.06, -7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum" },
	[5] = { Vector( -15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[6] = { Vector( 15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[7] = { Vector( -19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[8] = { Vector( 19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[9] = { Vector( -23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[10] = { Vector( 23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	-- CORNER LIGHTING --
	[11] = {Vector( 28.16, -5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner" },
	[12] = {Vector( -28.16, -5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner" },
	[13] = {Vector( -28.16, 5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner2" },
	[14] = {Vector( 28.16, 5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner2" },
	-- REAR LIGHTING --	
	[15] = { Vector( 23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[16] = { Vector( -23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[17] = { Vector( 19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[18] = { Vector( -19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[19] = { Vector( 15.36, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[20] = { Vector( -15.36,7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[21] = { Vector( 11.06, 7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum2" },
	[22] = { Vector( -11.06, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[23] = { Vector( 4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[24] = { Vector( -4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[25] = { Vector( 0, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	-- SIDE TAKEDOWNS--
	[26] = { Vector( 30.24, 0, 0.03 ), Angle( 0, 90, 0 ), "code3_illum" },
	[27] = { Vector( -30.24, 0, 0.03 ), Angle( 0, -90, 0 ), "code3_illum" },

}

COMPONENT.Sections = {
	["code3tr"] = {
		[1] = { { 26, "_3" },{ 27, "_3" },{ 1, "_3" },{ 2, "_3" }, { 3, "_2" }, { 4, "_1" }, { 5, "_2" }, { 6, "_1" }, { 7, "_2" },{ 8, "_1" },{ 9, "_2" },{ 10, "_1" },{ 11, "_1" },{ 12, "_2" },{ 13, "_2" },
	         	{ 14, "_1" },{ 15, "_1" },{ 16, "_2" },{ 17, "_1" },{ 18, "_2" },{ 19, "_1" },{ 20, "_2" },{ 21, "_1" },{ 22, "_2" },{ 23, "_4" },{ 24, "_4" },{ 25, "_4" },          },
		[3] = { { 3, "_2" },{ 5, "_2" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },},
		[2] = { { 4, "_1" },{ 6, "_1" },{ 8, "_1" },{ 10, "_1" },{ 11, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 19, "_1" },{ 21, "_1" },{ 25, "_4" },},
		[4] = { { 2, "_3" },{ 10, "_1" },{ 11, "_1" },{ 8, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 3, "_2" },{ 5, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },{ 23, "_4" },},
		[5] = { { 1, "_3" },{ 4, "_1" },{ 6, "_1" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 25, "_4" },{ 24, "_4" },{ 19, "_1" },{ 21, "_1" },},
		[6] = { {10, "_1" },{11, "_1" },{4, "_1" },{5, "_2" },{7, "_2" },{14, "_1" }, },
	},
	["front_a"] = {
        [1] = { { 4, "_1" },{ 21, "_1" }, },
        [2] = { { 3, "_2" },{ 22, "_2" }, },
    },
	["front_b"] = {
        [2] = { { 6, "_1" },{ 19, "_1" }, },
        [1] = { { 5, "_2" },{ 20, "_2" }, },
    },
	["front_c"] = {
        [1] = { { 7, "_2" },{ 18, "_2" }, },
        [2] = { { 8, "_1" },{ 17, "_1" }, },
    },
	["front_d"] = {
        [2] = { { 10, "_1" },{ 15, "_1" }, },
        [1] = { { 9, "_2" },{ 16, "_2" } },
    },
	["front_e"] = {
        [1] = { { 11, "_1" },{ 14, "_1" }, },
        [2] = { { 12, "_2" },{ 13, "_2" } },
    },
	["takedowns"] = {
        [2] = { { 1, "_3" }, },
        [1] = { { 2, "_3" }, },
    },
	["rear_amber"] = {
        [2] = { { 24, "_4" },{ 23, "_4" }, },
        [1] = { { 25, "_4" }, },
    },     
}

COMPONENT.Patterns = {
	["code3tr"] = {
		["ON"] = { 1 },
		["code1"] = { 2, 2, 2, 2, 3, 3, 3, 3},
		["code2"] = { 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0,
		              2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0,
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0
		        },
		["code3"] = { 2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0, 
	                },

	},
	["front_a"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0,  },
	},
	["front_b"] = {
		["on"] = { 1, 1, 1, 1,
		           2, 2, 2, 2, },
	},
	["front_c"] = {
		["on"] = { 1, 0, 1, 0, 1, 1,
		           2, 0, 2, 0, 2, 2, },
	},
	["front_d"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0, },
	},
	["front_e"] = {
		["on"] = { 1, 0, 1, 0,
		           2, 0, 2, 0, },
	},
	["takedowns"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
	["rear_amber"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["code3tr"] = "code1",
			},
			M2 = { -- steadyburn
				["code3tr"] = "code2",
			},
			M3 = { -- code2
	              ["front_a"] = "on", 
	              ["front_b"] = "on",
	              ["front_c"] = "on",
	              ["front_d"] = "on",
	              ["front_e"] = "on",
	              ["takedowns"] = "on",
	              ["rear_amber"] = "on",
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
		T = { { 1, W }, { 2, W }
		},
		L = {
		  { 26, W }
		},
		R = {
		{ 27, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "Code 3 x21 TR Red"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/code2_x21_tr.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = { {1, 2}}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
	[3] = "WHITE",
	[4] = "AMBER",
}

COMPONENT.Meta = {
	code3_illum = {
		AngleOffset = -90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_illum2 = {
		AngleOffset = 90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_corner = {
		AngleOffset = -90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
	code3_corner2 = {
		AngleOffset = 90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[2] = { Vector( 3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
    --  FRONT LIGHTING  --
	[3] = { Vector( -11.06, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[4] = { Vector( 11.06, -7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum" },
	[5] = { Vector( -15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[6] = { Vector( 15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[7] = { Vector( -19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[8] = { Vector( 19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[9] = { Vector( -23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[10] = { Vector( 23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	-- CORNER LIGHTING --
	[11] = {Vector( 28.16, -5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner" },
	[12] = {Vector( -28.16, -5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner" },
	[13] = {Vector( -28.16, 5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner2" },
	[14] = {Vector( 28.16, 5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner2" },
	-- REAR LIGHTING --	
	[15] = { Vector( 23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[16] = { Vector( -23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[17] = { Vector( 19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[18] = { Vector( -19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[19] = { Vector( 15.36, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[20] = { Vector( -15.36,7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[21] = { Vector( 11.06, 7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum2" },
	[22] = { Vector( -11.06, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[23] = { Vector( 4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[24] = { Vector( -4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[25] = { Vector( 0, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	-- SIDE TAKEDOWNS--
	[26] = { Vector( 30.24, 0, 0.03 ), Angle( 0, 90, 0 ), "code3_illum" },
	[27] = { Vector( -30.24, 0, 0.03 ), Angle( 0, -90, 0 ), "code3_illum" },

}

COMPONENT.Sections = {
	["code3tr"] = {
		[1] = { { 26, "_3" },{ 27, "_3" },{ 1, "_3" },{ 2, "_3" }, { 3, "_2" }, { 4, "_1" }, { 5, "_2" }, { 6, "_1" }, { 7, "_2" },{ 8, "_1" },{ 9, "_2" },{ 10, "_1" },{ 11, "_1" },{ 12, "_2" },{ 13, "_2" },
	         	{ 14, "_1" },{ 15, "_1" },{ 16, "_2" },{ 17, "_1" },{ 18, "_2" },{ 19, "_1" },{ 20, "_2" },{ 21, "_1" },{ 22, "_2" },{ 23, "_4" },{ 24, "_4" },{ 25, "_4" },          },
		[3] = { { 3, "_2" },{ 5, "_2" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },},
		[2] = { { 4, "_1" },{ 6, "_1" },{ 8, "_1" },{ 10, "_1" },{ 11, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 19, "_1" },{ 21, "_1" },{ 25, "_4" },},
		[4] = { { 2, "_3" },{ 10, "_1" },{ 11, "_1" },{ 8, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 3, "_2" },{ 5, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },{ 23, "_4" },},
		[5] = { { 1, "_3" },{ 4, "_1" },{ 6, "_1" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 25, "_4" },{ 24, "_4" },{ 19, "_1" },{ 21, "_1" },},
		[6] = { {10, "_1" },{11, "_1" },{4, "_1" },{5, "_2" },{7, "_2" },{14, "_1" }, },
	},
	["front_a"] = {
        [1] = { { 4, "_1" },{ 21, "_1" }, },
        [2] = { { 3, "_2" },{ 22, "_2" }, },
    },
	["front_b"] = {
        [2] = { { 6, "_1" },{ 19, "_1" }, },
        [1] = { { 5, "_2" },{ 20, "_2" }, },
    },
	["front_c"] = {
        [1] = { { 7, "_2" },{ 18, "_2" }, },
        [2] = { { 8, "_1" },{ 17, "_1" }, },
    },
	["front_d"] = {
        [2] = { { 10, "_1" },{ 15, "_1" }, },
        [1] = { { 9, "_2" },{ 16, "_2" } },
    },
	["front_e"] = {
        [1] = { { 11, "_1" },{ 14, "_1" }, },
        [2] = { { 12, "_2" },{ 13, "_2" } },
    },
	["takedowns"] = {
        [2] = { { 1, "_3" }, },
        [1] = { { 2, "_3" }, },
    },
	["rear_amber"] = {
        [2] = { { 24, "_4" },{ 23, "_4" }, },
        [1] = { { 25, "_4" }, },
    },     
}

COMPONENT.Patterns = {
	["code3tr"] = {
		["ON"] = { 1 },
		["code1"] = { 2, 2, 2, 2, 3, 3, 3, 3},
		["code2"] = { 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0,
		              2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0,
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0
		        },
		["code3"] = { 2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0, 
	                },

	},
	["front_a"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0,  },
	},
	["front_b"] = {
		["on"] = { 1, 1, 1, 1,
		           2, 2, 2, 2, },
	},
	["front_c"] = {
		["on"] = { 1, 0, 1, 0, 1, 1,
		           2, 0, 2, 0, 2, 2, },
	},
	["front_d"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0, },
	},
	["front_e"] = {
		["on"] = { 1, 0, 1, 0,
		           2, 0, 2, 0, },
	},
	["takedowns"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
	["rear_amber"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["code3tr"] = "code1",
			},
			M2 = { -- steadyburn
				["code3tr"] = "code2",
			},
			M3 = { -- code2
	              ["front_a"] = "on", 
	              ["front_b"] = "on",
	              ["front_c"] = "on",
	              ["front_d"] = "on",
	              ["front_e"] = "on",
	              ["takedowns"] = "on",
	              ["rear_amber"] = "on",
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
		T = { --{ 1, W }, { 2, W }
		},
		L = {
		--  { 26, W }
		},
		R = {
		--{ 27, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "Code 3 x21 TR Blue"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/code2_x21_tr.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = { {1, 3}}
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "AMBER",
}

COMPONENT.Meta = {
	code3_illum = {
		AngleOffset = -90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_illum2 = {
		AngleOffset = 90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_corner = {
		AngleOffset = -90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
	code3_corner2 = {
		AngleOffset = 90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[2] = { Vector( 3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
    --  FRONT LIGHTING  --
	[3] = { Vector( -11.06, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[4] = { Vector( 11.06, -7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum" },
	[5] = { Vector( -15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[6] = { Vector( 15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[7] = { Vector( -19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[8] = { Vector( 19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[9] = { Vector( -23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[10] = { Vector( 23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	-- CORNER LIGHTING --
	[11] = {Vector( 28.16, -5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner" },
	[12] = {Vector( -28.16, -5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner" },
	[13] = {Vector( -28.16, 5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner2" },
	[14] = {Vector( 28.16, 5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner2" },
	-- REAR LIGHTING --	
	[15] = { Vector( 23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[16] = { Vector( -23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[17] = { Vector( 19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[18] = { Vector( -19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[19] = { Vector( 15.36, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[20] = { Vector( -15.36,7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[21] = { Vector( 11.06, 7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum2" },
	[22] = { Vector( -11.06, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[23] = { Vector( 4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[24] = { Vector( -4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[25] = { Vector( 0, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	-- SIDE TAKEDOWNS--
	[26] = { Vector( 30.24, 0, 0.03 ), Angle( 0, 90, 0 ), "code3_illum" },
	[27] = { Vector( -30.24, 0, 0.03 ), Angle( 0, -90, 0 ), "code3_illum" },

}

COMPONENT.Sections = {
	["code3tr"] = {
		[1] = { { 26, "_3" },{ 27, "_3" },{ 1, "_3" },{ 2, "_3" }, { 3, "_2" }, { 4, "_1" }, { 5, "_2" }, { 6, "_1" }, { 7, "_2" },{ 8, "_1" },{ 9, "_2" },{ 10, "_1" },{ 11, "_1" },{ 12, "_2" },{ 13, "_2" },
	         	{ 14, "_1" },{ 15, "_1" },{ 16, "_2" },{ 17, "_1" },{ 18, "_2" },{ 19, "_1" },{ 20, "_2" },{ 21, "_1" },{ 22, "_2" },{ 23, "_4" },{ 24, "_4" },{ 25, "_4" },          },
		[3] = { { 3, "_2" },{ 5, "_2" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },},
		[2] = { { 4, "_1" },{ 6, "_1" },{ 8, "_1" },{ 10, "_1" },{ 11, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 19, "_1" },{ 21, "_1" },{ 25, "_4" },},
		[4] = { { 2, "_3" },{ 10, "_1" },{ 11, "_1" },{ 8, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 3, "_2" },{ 5, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },{ 23, "_4" },},
		[5] = { { 1, "_3" },{ 4, "_1" },{ 6, "_1" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 25, "_4" },{ 24, "_4" },{ 19, "_1" },{ 21, "_1" },},
		[6] = { {10, "_1" },{11, "_1" },{4, "_1" },{5, "_2" },{7, "_2" },{14, "_1" }, },
	},
	["front_a"] = {
        [1] = { { 4, "_1" },{ 21, "_1" }, },
        [2] = { { 3, "_2" },{ 22, "_2" }, },
    },
	["front_b"] = {
        [2] = { { 6, "_1" },{ 19, "_1" }, },
        [1] = { { 5, "_2" },{ 20, "_2" }, },
    },
	["front_c"] = {
        [1] = { { 7, "_2" },{ 18, "_2" }, },
        [2] = { { 8, "_1" },{ 17, "_1" }, },
    },
	["front_d"] = {
        [2] = { { 10, "_1" },{ 15, "_1" }, },
        [1] = { { 9, "_2" },{ 16, "_2" } },
    },
	["front_e"] = {
        [1] = { { 11, "_1" },{ 14, "_1" }, },
        [2] = { { 12, "_2" },{ 13, "_2" } },
    },
	["takedowns"] = {
        [2] = { { 1, "_3" }, },
        [1] = { { 2, "_3" }, },
    },
	["rear_amber"] = {
        [2] = { { 24, "_4" },{ 23, "_4" }, },
        [1] = { { 25, "_4" }, },
    },     
}

COMPONENT.Patterns = {
	["code3tr"] = {
		["ON"] = { 1 },
		["code1"] = { 2, 2, 2, 2, 3, 3, 3, 3},
		["code2"] = { 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0,
		              2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0,
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0
		        },
		["code3"] = { 2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0, 
	                },

	},
	["front_a"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0,  },
	},
	["front_b"] = {
		["on"] = { 1, 1, 1, 1,
		           2, 2, 2, 2, },
	},
	["front_c"] = {
		["on"] = { 1, 0, 1, 0, 1, 1,
		           2, 0, 2, 0, 2, 2, },
	},
	["front_d"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0, },
	},
	["front_e"] = {
		["on"] = { 1, 0, 1, 0,
		           2, 0, 2, 0, },
	},
	["takedowns"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
	["rear_amber"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["code3tr"] = "code1",
			},
			M2 = { -- steadyburn
				["code3tr"] = "code2",
			},
			M3 = { -- code2
	              ["front_a"] = "on", 
	              ["front_b"] = "on",
	              ["front_c"] = "on",
	              ["front_d"] = "on",
	              ["front_e"] = "on",
	              ["takedowns"] = "on",
	              ["rear_amber"] = "on",
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
				--	{ 1, W }, { 2, W }
		},
		L = {
	--	  { 26, W }
		},
		R = {
	--	{ 27, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "Code 3 x21 TR Clear"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/code2_x21_tr.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {{1,0}}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "AMBER",
}

COMPONENT.Meta = {
	code3_illum = {
		AngleOffset = -90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_illum2 = {
		AngleOffset = 90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_corner = {
		AngleOffset = -90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
	code3_corner2 = {
		AngleOffset = 90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[2] = { Vector( 3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
    --  FRONT LIGHTING  --
	[3] = { Vector( -11.06, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[4] = { Vector( 11.06, -7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum" },
	[5] = { Vector( -15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[6] = { Vector( 15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[7] = { Vector( -19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[8] = { Vector( 19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[9] = { Vector( -23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[10] = { Vector( 23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	-- CORNER LIGHTING --
	[11] = {Vector( 28.16, -5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner" },
	[12] = {Vector( -28.16, -5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner" },
	[13] = {Vector( -28.16, 5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner2" },
	[14] = {Vector( 28.16, 5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner2" },
	-- REAR LIGHTING --	
	[15] = { Vector( 23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[16] = { Vector( -23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[17] = { Vector( 19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[18] = { Vector( -19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[19] = { Vector( 15.36, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[20] = { Vector( -15.36,7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[21] = { Vector( 11.06, 7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum2" },
	[22] = { Vector( -11.06, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[23] = { Vector( 4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[24] = { Vector( -4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[25] = { Vector( 0, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	-- SIDE TAKEDOWNS--
	[26] = { Vector( 30.24, 0, 0.03 ), Angle( 0, 90, 0 ), "code3_illum" },
	[27] = { Vector( -30.24, 0, 0.03 ), Angle( 0, -90, 0 ), "code3_illum" },

}

COMPONENT.Sections = {
	["code3tr"] = {
		[1] = { { 26, "_3" },{ 27, "_3" },{ 1, "_3" },{ 2, "_3" }, { 3, "_2" }, { 4, "_1" }, { 5, "_2" }, { 6, "_1" }, { 7, "_2" },{ 8, "_1" },{ 9, "_2" },{ 10, "_1" },{ 11, "_1" },{ 12, "_2" },{ 13, "_2" },
	         	{ 14, "_1" },{ 15, "_1" },{ 16, "_2" },{ 17, "_1" },{ 18, "_2" },{ 19, "_1" },{ 20, "_2" },{ 21, "_1" },{ 22, "_2" },{ 23, "_4" },{ 24, "_4" },{ 25, "_4" },          },
		[3] = { { 3, "_2" },{ 5, "_2" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },},
		[2] = { { 4, "_1" },{ 6, "_1" },{ 8, "_1" },{ 10, "_1" },{ 11, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 19, "_1" },{ 21, "_1" },{ 25, "_4" },},
		[4] = { { 2, "_3" },{ 10, "_1" },{ 11, "_1" },{ 8, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 3, "_2" },{ 5, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },{ 23, "_4" },},
		[5] = { { 1, "_3" },{ 4, "_1" },{ 6, "_1" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 25, "_4" },{ 24, "_4" },{ 19, "_1" },{ 21, "_1" },},
		[6] = { {10, "_1" },{11, "_1" },{4, "_1" },{5, "_2" },{7, "_2" },{14, "_1" }, },
	},
	["front_a"] = {
        [1] = { { 4, "_1" },{ 21, "_1" }, },
        [2] = { { 3, "_2" },{ 22, "_2" }, },
    },
	["front_b"] = {
        [2] = { { 6, "_1" },{ 19, "_1" }, },
        [1] = { { 5, "_2" },{ 20, "_2" }, },
    },
	["front_c"] = {
        [1] = { { 7, "_2" },{ 18, "_2" }, },
        [2] = { { 8, "_1" },{ 17, "_1" }, },
    },
	["front_d"] = {
        [2] = { { 10, "_1" },{ 15, "_1" }, },
        [1] = { { 9, "_2" },{ 16, "_2" } },
    },
	["front_e"] = {
        [1] = { { 11, "_1" },{ 14, "_1" }, },
        [2] = { { 12, "_2" },{ 13, "_2" } },
    },
	["takedowns"] = {
        [2] = { { 1, "_3" }, },
        [1] = { { 2, "_3" }, },
    },
	["rear_amber"] = {
        [2] = { { 24, "_4" },{ 23, "_4" }, },
        [1] = { { 25, "_4" }, },
    },     
}

COMPONENT.Patterns = {
	["code3tr"] = {
		["ON"] = { 1 },
		["code1"] = { 2, 2, 2, 2, 3, 3, 3, 3},
		["code2"] = { 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0,
		              2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0,
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0
		        },
		["code3"] = { 2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0, 
	                },

	},
	["front_a"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0,  },
	},
	["front_b"] = {
		["on"] = { 1, 1, 1, 1,
		           2, 2, 2, 2, },
	},
	["front_c"] = {
		["on"] = { 1, 0, 1, 0, 1, 1,
		           2, 0, 2, 0, 2, 2, },
	},
	["front_d"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0, },
	},
	["front_e"] = {
		["on"] = { 1, 0, 1, 0,
		           2, 0, 2, 0, },
	},
	["takedowns"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
	["rear_amber"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["code3tr"] = "code1",
			},
			M2 = { -- steadyburn
				["code3tr"] = "code2",
			},
			M3 = { -- code2
	              ["front_a"] = "on", 
	              ["front_b"] = "on",
	              ["front_c"] = "on",
	              ["front_d"] = "on",
	              ["front_e"] = "on",
	              ["takedowns"] = "on",
	              ["rear_amber"] = "on",
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
		T = { --{ 1, "_3" },{ 2, "_3" },
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "Code3 x21 TR RB"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/code2_x21_tr.mdl"
COMPONENT.Lightbar = true
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = { {1, 1}}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "AMBER",
}

COMPONENT.Meta = {
	code3_illum = {
		AngleOffset = -90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_illum2 = {
		AngleOffset = 90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/legacy_illum",
		WMult = 1,
		Scale = 1.2,
		--//EmitArray = {
		--//	Vector( 1.6, 0, 0 ),
		--//	Vector( 0, 0, 0 ),
		--//	Vector( -1.6, 0, 0 )
		--}
	},
	code3_corner = {
		AngleOffset = -90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
	code3_corner2 = {
		AngleOffset = 90,
		W = 10,
		H = 9.8,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1,
		Scale = 1.2,
	--	EmitArray = {
	--		Vector( 1.6, 0, 0 ),
	--		Vector( 0, 0, 0 ),
	--		Vector( -1.6, 0, 0 )
	--	},
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( -3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[2] = { Vector( 3.56, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
    --  FRONT LIGHTING  --
	[3] = { Vector( -11.06, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[4] = { Vector( 11.06, -7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum" },
	[5] = { Vector( -15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[6] = { Vector( 15.36, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[7] = { Vector( -19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[8] = { Vector( 19.66, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[9] = { Vector( -23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	[10] = { Vector( 23.86, -7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum" },
	-- CORNER LIGHTING --
	[11] = {Vector( 28.16, -5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner" },
	[12] = {Vector( -28.16, -5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner" },
	[13] = {Vector( -28.16, 5.3, 0.05 ), Angle( 0, 49.9, 0 ), "code3_corner2" },
	[14] = {Vector( 28.16, 5.3, 0.05 ), Angle( 0, -49.9, 0 ), "code3_corner2" },
	-- REAR LIGHTING --	
	[15] = { Vector( 23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[16] = { Vector( -23.86, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[17] = { Vector( 19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[18] = { Vector( -19.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[19] = { Vector( 15.36, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[20] = { Vector( -15.36,7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[21] = { Vector( 11.06, 7.7, 0.03 ), Angle( 0, -0, 0 ), "code3_illum2" },
	[22] = { Vector( -11.06, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[23] = { Vector( 4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[24] = { Vector( -4.66, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	[25] = { Vector( 0, 7.7, 0.03 ), Angle( 0, 0, 0 ), "code3_illum2" },
	-- SIDE TAKEDOWNS--
	[26] = { Vector( 30.24, 0, 0.03 ), Angle( 0, 90, 0 ), "code3_illum" },
	[27] = { Vector( -30.24, 0, 0.03 ), Angle( 0, -90, 0 ), "code3_illum" },

}

COMPONENT.Sections = {
	["code3tr"] = {
		[1] = { { 26, "_3" },{ 27, "_3" },{ 1, "_3" },{ 2, "_3" }, { 3, "_2" }, { 4, "_1" }, { 5, "_2" }, { 6, "_1" }, { 7, "_2" },{ 8, "_1" },{ 9, "_2" },{ 10, "_1" },{ 11, "_1" },{ 12, "_2" },{ 13, "_2" },
	         	{ 14, "_1" },{ 15, "_1" },{ 16, "_2" },{ 17, "_1" },{ 18, "_2" },{ 19, "_1" },{ 20, "_2" },{ 21, "_1" },{ 22, "_2" },{ 23, "_4" },{ 24, "_4" },{ 25, "_4" },          },
		[3] = { { 3, "_2" },{ 5, "_2" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },},
		[2] = { { 4, "_1" },{ 6, "_1" },{ 8, "_1" },{ 10, "_1" },{ 11, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 19, "_1" },{ 21, "_1" },{ 25, "_4" },},
		[4] = { { 2, "_3" },{ 10, "_1" },{ 11, "_1" },{ 8, "_1" },{ 14, "_1" },{ 15, "_1" },{ 17, "_1" },{ 3, "_2" },{ 5, "_2" },{ 20, "_2" },{ 22, "_2" },{ 25, "_4" },{ 23, "_4" },},
		[5] = { { 1, "_3" },{ 4, "_1" },{ 6, "_1" },{ 7, "_2" },{ 9, "_2" },{ 12, "_2" },{ 13, "_2" },{ 16, "_2" },{ 18, "_2" },{ 25, "_4" },{ 24, "_4" },{ 19, "_1" },{ 21, "_1" },},
		[6] = { {10, "_1" },{11, "_1" },{4, "_1" },{5, "_2" },{7, "_2" },{14, "_1" }, },
	},
	["front_a"] = {
        [1] = { { 4, "_1" },{ 21, "_1" }, },
        [2] = { { 3, "_2" },{ 22, "_2" }, },
    },
	["front_b"] = {
        [2] = { { 6, "_1" },{ 19, "_1" }, },
        [1] = { { 5, "_2" },{ 20, "_2" }, },
    },
	["front_c"] = {
        [1] = { { 7, "_2" },{ 18, "_2" }, },
        [2] = { { 8, "_1" },{ 17, "_1" }, },
    },
	["front_d"] = {
        [2] = { { 10, "_1" },{ 15, "_1" }, },
        [1] = { { 9, "_2" },{ 16, "_2" } },
    },
	["front_e"] = {
        [1] = { { 11, "_1" },{ 14, "_1" }, },
        [2] = { { 12, "_2" },{ 13, "_2" } },
    },
	["takedowns"] = {
        [2] = { { 1, "_3" }, },
        [1] = { { 2, "_3" }, },
    },
	["rear_amber"] = {
        [2] = { { 24, "_4" },{ 23, "_4" }, },
        [1] = { { 25, "_4" }, },
    },     
}

COMPONENT.Patterns = {
	["code3tr"] = {
		["ON"] = { 1 },
		["code1"] = { 2, 2, 2, 2, 3, 3, 3, 3},
		["code2"] = { 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0,
		              2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 3, 0, 3, 3, 3, 0, 0, 0, 
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0,
		              4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 0, 5, 0, 5, 5, 5, 0, 0, 0
		        },
		["code3"] = { 2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0,
	                  4, 0, 4, 0, 4, 0, 5, 0, 5, 0, 5, 0, 
	                },

	},
	["front_a"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0,  },
	},
	["front_b"] = {
		["on"] = { 1, 1, 1, 1,
		           2, 2, 2, 2, },
	},
	["front_c"] = {
		["on"] = { 1, 0, 1, 0, 1, 1,
		           2, 0, 2, 0, 2, 2, },
	},
	["front_d"] = {
		["on"] = { 1, 0, 1, 0, 1, 0,
		           2, 0, 2, 0, 2, 0, },
	},
	["front_e"] = {
		["on"] = { 1, 0, 1, 0,
		           2, 0, 2, 0, },
	},
	["takedowns"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
	["rear_amber"] = {
		["on"] = { 1, 1, 1,
		           2, 2, 2, },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = { --park
				["code3tr"] = "code1",
			},
			M2 = { -- steadyburn
				["code3tr"] = "code2",
			},
			M3 = { -- code2
	              ["front_a"] = "on", 
	              ["front_b"] = "on",
	              ["front_c"] = "on",
	              ["front_d"] = "on",
	              ["front_e"] = "on",
	              ["takedowns"] = "on",
	              ["rear_amber"] = "on",
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
			{ 1, "_3" }, { 2, "_3" },
		},
		L = {
		  { 26, "_3" },
		},
		R = {
		{ 27, "_3" },
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

