
local timeTot = 0
local timePerUpdate = 0.05
local Get = Object.GetProperty
local Set = Object.SetProperty

function getObject(type,id,dist)
	objs = Object.GetNearbyObjects(type,dist or 1)
	for o,d in pairs(objs) do
		 if o.Id.i == id then
		 	return o
		 end
	end
end

--------------------
--| Main scripts |--
--------------------
function Create()
end

function Update(timePassed)
	timeTot=timeTot+timePassed
	if timeTot > timePerUpdate then
		timeTot=0
		if this.Timer > 3 then
			if this.SubType == 0 then
				this.SubType = 1
			else
				this.SubType = 0
			end
		end 
	end
end
