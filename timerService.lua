local t = {}
local timerz = {}

function t:Create(name,Max_Time,loop)
	table.insert(timerz,{_key=name,_time = Max_Time,_maxtime = Max_Time,_looped = loop,_ended = false})
end

function t:UpdateTimers()
	for i,timer in pairs(timerz) do
		if timer._looped == true then
			if timer._time <= 0 then
				timer._time = timer._maxtime
				print("looped")
			end
		else
			if timer._time <= 0 then
				timer._ended = true
			end
		end
		timer._time -= 1
	end
end

function t:GetTimerFinished(key)
	local __timer = nil
	for i,timer in pairs(timerz) do
		if timer._key == key then
			__timer = timer
			break
		end
	end
	
	if __timer == nil then
		return false
	end
	
	if __timer._time <= 0 then
		if __timer._ended == false then
			return true
		else
			return false
		end
	else
		return false
	end
end

function t:RemoveTimer(key)
	for i,timer in pairs(timerz) do
		if timer._key == key then
			print("removed " .. timerz[i]._key)
			table.remove(timerz,i)
			break
		end
	end
end

function t:GetSpesificTimer(key)
	for i,timer in pairs(timerz) do
		if timer._key == key then
			return timer
		end
	end
end

function t:GetAmountOfTimers()
	return table.getn(timerz)
end

return t