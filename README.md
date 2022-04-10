# Lua-Timer-Module
A simple module for handling timers, i was sick of doing the "if a &lt;= 0 then" so i wrote a module that does it all for me.

# implementation:

       local TimerService = require(timerService)

       TimerService:Create("helpyBounce",60,true)

       ---the code below SHOULD be in a loop of any kind to work----
       
       if TimerService:GetTimerFinished("helpyBounce") then
          print("loop has looped or has ended")
       end
       ---updateTimers() HAS GOTTA BE UNDER GetTimerFinished() or it wont work.
       TimerService:UpdateTimers()
       
# Other info

Made in ROBLOX but should work in normal lua.
