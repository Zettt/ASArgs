-- setup ASArgs
set theFile to load script (POSIX file "/Users/YOU/Coding/ASArgs/ASArgs.scpt")
set theFile's parameters to "-target \"Lorem ipsum\" -m \"dolor sit amet\" --fail \"blafasel didasel\""

-- call ASArgs, save returned arguments in an Array
set returnArray to run script theFile

-- split returned arguments into two local arrays to work with
set args to item 1 of returnArray
set params to item 2 of returnArray

-- suggested way of getting rid of " in params
set helpArray to {}
repeat with currentParam in params
	set currentParam to text 2 thru ((length of currentParam) - 1) of currentParam
	set end of helpArray to currentParam
end repeat
set params to helpArray

return {args, params}