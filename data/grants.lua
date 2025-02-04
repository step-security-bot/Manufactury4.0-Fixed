
function CreateGrants()
	Create_M4_CottonPlantation()
	Create_M4_CottonProduction()
	Create_M4_Manufactury()
	Create_M4_JeansProduction()
end

function Create_M4_CottonPlantation()
	Objective.CreateGrant			( "Grant_M4_CottonPlantation", 1500, 2500 )
    Objective.SetPreRequisite       ( "Unlocked", "PrisonLabour", 0 )
    Objective.HiddenWhileLocked     ()
	
	Objective.CreateGrant			( "Grant_M4_CottonPlantation_Room", 0, 500 )
	Objective.SetParent				( "Grant_M4_CottonPlantation" )
	Objective.RequireRoom			( "M4_CottonPlantation", true )
	
	Objective.CreateGrant			( "Grant_M4_CottonPlantation_Control", 0, 500 )
	Objective.SetParent				( "Grant_M4_CottonPlantation" )
	Objective.RequireObjects		( "M4_PlantationControl", 1 )
	
	Objective.CreateGrant			( "Grant_M4_CottonPlantation_Seeds", 0, 500 )
	Objective.SetParent				( "Grant_M4_CottonPlantation" )
	Objective.RequireObjects		( "M4_CottonPlant", 10 )
	
	Objective.CreateGrant			( "Grant_M4_CottonPlantation_Workmen", 0, 500 )
	Objective.SetParent				( "Grant_M4_CottonPlantation" )
	Objective.RequireObjects		( "M4_PlantationWorker", 2 )
end

function Create_M4_CottonProduction()
	Objective.CreateGrant			( "Grant_M4_CottonProduction", 1500, 2500 )
	Objective.SetPreRequisite		( "Unlocked", "PrisonLabour", 0 )
    Objective.HiddenWhileLocked     ()
	
	Objective.CreateGrant			( "Grant_M4_CottonProduction_Research", 0, 0 )
	Objective.SetParent				( "Grant_M4_CottonProduction" )
	Objective.Requires				( "Completed", "Grant_M4_CottonPlantation", 0 )
	
	Objective.CreateGrant			( "Grant_M4_CottonProduction_Passed", 0, 500 )
	Objective.SetParent				( "Grant_M4_CottonProduction" )
	Objective.Requires				( "ReformPassed", "M4_Plantation", 2 )
	
	Objective.CreateGrant			( "Grant_M4_CottonProduction_Assigned", 0, 0 )
	Objective.SetParent				( "Grant_M4_CottonProduction")
	Objective.Requires				( "PrisonerJobs", "M4_CottonPlantation", 2 )
	
	Objective.CreateGrant			( "Grant_M4_CottonProduction_Produced", 0, 5000 )
	Objective.SetParent				( "Grant_M4_Cotton_Production")
	Objective.RequireObjects	 	( "M4_RawCotton", 2500 )
end

function Create_M4_Manufactury()
	Objective.CreateGrant			( "Grant_M4_Manufactury", 1500, 2500 )
	Objective.SetPreRequisite		( "Unlocked", "PrisonLabour", 0 )
    Objective.HiddenWhileLocked     ()
	
	Objective.CreateGrant			( "Grant_M4_Manufactury_Research", 0, 0 )
	Objective.SetParent				( "Grant_M4_Manufactury" )
	Objective.Requires				( "Completed", "Grant_M4_CottonPlantation", 0 )
	
	Objective.CreateGrant			( "Grant_M4_Manufactury_Room", 0, 0 )
	Objective.SetParent				( "Grant_M4_Manufactury" )
	Objective.RequireRoom			( "M4_Manufactury", true )
	
	Objective.CreateGrant			( "Grant_M4_Manufactury_TextileMill", 0, 0 )
	Objective.SetParent				( "Grant_M4_Manufactury" )
	Objective.RequireObjects		( "M4_TextileMill", 1 )
	
	Objective.CreateGrant			( "Grant_M4_Manufactury_SewingStation", 0, 0 )
	Objective.SetParent				( "Grant_M4_Manufactury" )
	Objective.RequireObjects		( "M4_SewingStation", 1 )
	
	Objective.CreateGrant			( "Grant_M4_Manufactury_Tailor", 0, 0 )
	Objective.SetParent				( "Grant_M4_Manufactury" )
	Objective.RequireObjects		( "M4_Tailor", 1 )
end

function Create_M4_JeansProduction()
	Objective.CreateGrant			( "Grant_M4_JeansProduction", 1500, 2500 )
	Objective.SetPreRequisite		( "Unlocked", "PrisonLabour", 0 )
    Objective.HiddenWhileLocked     ()
	
	Objective.CreateGrant			( "Grant_M4_JeansProduction_Research", 0, 0 )
	Objective.SetParent				( "Grant_M4_JeansProduction" )
	Objective.Requires				( "Completed", "M4_Grant_Manufactury", 0 )
	
	Objective.CreateGrant			( "Grant_M4_JeansProduction_Passed", 0, 500 )
	Objective.SetParent				( "Grant_M4_JeansProduction" )
	Objective.Requires				( "ReformPassed", "M4_ManufacturyInduction", 2 )
	
	Objective.CreateGrant			( "Grant_M4_JeansProduction_Assigned", 0, 0 )
	Objective.SetParent				( "Grant_M4_JeansProduction")
	Objective.Requires				( "PrisonerJobs", "M4_Manufactury", 2 )
	
	Objective.CreateGrant			( "Grant_M4_JeansProduction_Produced", 0, 5000 )
	Objective.SetParent				( "Grant_M4_JeansProduction")
	Objective.RequireManufactured 	( "M4_Jeans", 500 )
end
