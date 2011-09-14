-- ASArgs - Arguments for AppleScript
-- 
-- Created by Andreas Zeitler on 2011-09-14
-- Copyright 2011 Mac OS X Screencasts. All rights reserved.
-- 
-- This script is an attempt to make AppleScripting easier.
-- I was rather intrigued and fascinated by the way Shell scripts are able
-- to handle arguments like $1, $2, and/or $#. So I came up with a solution for
-- AppleScript. 
--
-- Here's how it works. Call this script from another script with:
-- 
-- set theFile to load script (POSIX file "/Users/YOU/args in applescript.scpt")
-- set theFile's parameters to "--target \"Lorem ipsum\" -m \"dolor sit amet\" 
-- run script theFile
--
-- and you'll get two arrays back. One with arguments, one with parameters.
-- {{"target", "m"}, {"\"Lorem ipsum\"", "\"dolor sit amet\""}}
-- 
-- I probably don't have to explain how to work with two arrays…

property parameters : missing value

if parameters is missing value then return {"Something went wrong.", ""}

-- setup empty args and params arrays for return later
set args to {}
set params to {}

-- split args and params
set AppleScript's text item delimiters to {"--", "-"}
set parametersItems to text items of parameters
set AppleScript's text item delimiters to {""}

-- the first splitted item is always empty, so we can remove it
set parametersItems to items 2 thru -1 of parametersItems

-- iterate args and params
repeat with arg in parametersItems
	
	-- repeat with every non " " argument
	if arg is not missing value then
		-- setting arg
		set currentArg to word 1 of arg
		
		-- setting params, which sometimes have trailing spaces
		set currentParams to text ((length of currentArg) + 2) thru -1 of arg
		-- remove trailing space
		if (last character of currentParams = " ") then
			set currentParams to text 1 thru ((length of currentParams) - 1) of currentParams
		end if

	end if
	
	set end of args to currentArg
	set end of params to currentParams
	
end repeat

return {args, params}