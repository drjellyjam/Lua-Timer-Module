# Lua-Timer-Module
A simple module for handling timers, i was sick of doing the "if a &lt;= 0 then" so i wrote a module that does it all for me.
Yes i know its not really the best method and you can probably find something better but for what it is. Its easy to understand and isint really slow at all so whatevs.

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
