//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [GoT] JoSchaap, AgentRev
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.

// For SERVER CONFIG, values are in server\init.sqf

// Towns and cities array
// Marker Name, Diameter, City Name
cityList = compileFinal str
[
	["Town_1", 400, "Kavala"],
	["Town_2", 300, "Agios Dionysios"],
	["Town_3", 150, "Abdera"],
	["Town_4", 250, "Athira"],
	["Town_5", 200, "Telos"],
	["Town_6", 200, "Sofia"],
	["Town_8", 300, "Pyrgos"],
	["Town_9", 150, "Selakano"],
	["Town_10", 200, "Vikos"],
	["Town_13", 250, "Aggelochori"],
	["Town_14", 200, "Panochori"],
	["Town_15", 200, "Charkia"],
	["Town_17", 150, "Oreokastro"],
	["Town_19", 125, "Negades"],
	["Town_22", 200, "Kore"],
	["Town_26", 125, "Panagia"],
	["Town_28", 200, "Feres"]
	

];


config_items_jerrycans_max = compileFinal "1";
config_items_syphon_hose_max = compileFinal "1";

config_refuel_amount_default = compileFinal "0.25";
config_refuel_amounts = compileFinal str
[
	["Quadbike_01_base_F", 0.50],
	["Tank", 0.10],
	["Air", 0.10]
];

// Territory system definitions. See territory/README.md for more details.
//
// Format is:
// 1 - Territory marker name. Must begin with 'TERRITORY_'
// 2 - Descriptive name
// 3 - Monetary value
// 4 - Territory category, currently unused. See territory/README.md for details.
config_territory_markers = compileFinal str
[

	["TERRITORY_0_KAVALA_A", "Kavala (A)", 15000],
	["TERRITORY_0_KAVALA_B", "Kavala (B)", 15000],
	["TERRITORY_0_KAVALA_C", "Kavala (C)", 15000],
	["TERRITORY_1_ALTISAIR_A", "Altis Airport (A)", 15000],
	["TERRITORY_1_ALTISAIR_B", "Altis Airport (B)", 15000],
	["TERRITORY_1_ALTISAIR_C", "Altis Airport (C)", 15000],
	["TERRITORY_2_PYRGOS_A", "Pyrgos (A)", 15000],
	["TERRITORY_2_PYRGOS_B", "Pyrgos (B)", 15000],
	["TERRITORY_2_PYRGOS_C", "Pyrgos (C)", 15000],
	["TERRITORY_3_SELAKANO_A", "SELAKANO (A)", 15000],
	["TERRITORY_3_SELAKANO_B", "SELAKANO (B)", 15000],
	["TERRITORY_3_SELAKANO_C", "SELAKANO (C)", 15000],
	["TERRITORY_4_KORE_A", "KORE (A)", 15000],
	["TERRITORY_4_KORE_B", "KORE (B)", 15000],
	["TERRITORY_4_KORE_C", "KORE (C)", 15000]
	
];

