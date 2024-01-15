-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 50,
	},
	{
		minlevel = 9,
		maxlevel = 49,
		multiplier = 100,
	},
	{
		minlevel = 50,
		maxlevel = 100,
		multiplier = 100,
	},
	{
		minlevel = 101,
		maxlevel = 200,
		multiplier = 95,
	},
	{
		minlevel = 201,
		maxlevel = 300,
		multiplier = 90,
	},
	{
		minlevel = 301,
		maxlevel = 400,
		multiplier = 80,
	},
	{
		minlevel = 401,
		maxlevel = 450,
		multiplier = 70,
	},
	{
		minlevel = 451,
		maxlevel = 500,
		multiplier = 50,
	},
	{
		minlevel = 501,
		maxlevel = 600,
		multiplier = 35,
	},
	{
		minlevel = 601,
		maxlevel = 700,
		multiplier = 20,
	},
	{
		minlevel = 701,
		maxlevel = 800,
		multiplier = 15,
	},
	{
		minlevel = 801,
		maxlevel = 1000,
		multiplier = 13,
	},
	{
		minlevel = 1001,
		maxlevel = 2000,
		multiplier = 10,
	},
	{
		minlevel = 2001,
		multiplier = 5,
	},
}

skillsStages = {
	{
		minlevel = 1,
		maxlevel = 59,
		multiplier = 45,
	},
	{
		minlevel = 60,
		maxlevel = 69,
		multiplier = 35,
	},
	{
		minlevel = 70,
		maxlevel = 89,
		multiplier = 25,
	},
	{
		minlevel = 90,
		maxlevel = 99,
		multiplier = 15,
	},
	{
		minlevel = 100,
		multiplier = 5,
	},
}

magicLevelStages = {
	{
		minlevel = 1,
		maxlevel = 59,
		multiplier = 35,
	},
	{
		minlevel = 60,
		maxlevel = 69,
		multiplier = 25,
	},
	{
		minlevel = 70,
		maxlevel = 89,
		multiplier = 15,
	},
	{
		minlevel = 90,
		multiplier = 5,
	},
}
