
function Create()
end

function Update(timePassed)
	newControl = Object.Spawn( "M4_PlantationControl", this.Pos.x,this.Pos.y-0.5)
	this.Delete()
end
