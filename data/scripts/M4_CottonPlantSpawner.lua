
local timeInit = 0
local Set = Object.SetProperty
local initTimer = math.random(1,3) / 0.75

function Create()
end

function Update(timePassed)
	if timeInit > initTimer then
		newPlant = Object.Spawn( "M4_CottonPlant", this.Pos.x,this.Pos.y)
		Set(newPlant,"SubType",9)
		Set(newPlant,"Tooltip","buildtoolbar_popup_obj_M4_CottonPlantSpawner")
		this.Delete()
	else
		timeInit = timeInit+timePassed
	end
end
