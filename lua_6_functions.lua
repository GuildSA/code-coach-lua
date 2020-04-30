--==============================================================================

-- Define a simple Lua function that prints "Game Over!".
function printGameOver()
	print( "Game Over!" )
end

-- Now, call our new function to execute it!
printGameOver()

--==============================================================================

-- This Lua function takes a single argument and prints "Game Over... "
-- with a player's name appended to the end.
function printGameOver( playersName )
	print( "Game Over... " .. playersName )
end

-- Now, call our new and improved function and pass in the player's name.
printGameOver( "Jester" )

--==============================================================================

-- Here's a Lua function that takes two arguments.
function printGameOver( playersName, totalKills )
	print( "Game Over... " .. playersName .. "!" )
	print( "Total Kills: " .. totalKills )
end

printGameOver( "Jester", 15 )
printGameOver( "NinjaSkills", 12 )

--==============================================================================

-- A simple Lua function that takes two arguments and returns a single value.

function addTwoNumbers( number1, number2 )
    return number1 + number2
end

local number = 10

print( number )

number = addTwoNumbers( number, 5 )

print( number )

--==============================================================================

function testFunction( someVar )
    print( someVar )
end

-- The typical calling style for functions uses () around the arguments.
testFunction( "Hello World!" )

-- You may also see the less popular or non-typical calling style used that 
-- drops the (). Avoid this style since it can lead to crashes.
testFunction "Hello World!"

-- Here's an example where the lack of () causes a crash.
--testFunction "Hello " .. "World!"

--==============================================================================

-- This function returns the average value of the all values contained in a table.
function average( numberList )

	local numCount = 0
	local runningTotal = 0

	for i = 1, #numberList do

		numCount = numCount + 1
		runningTotal = runningTotal + numberList[i]

	end

	return runningTotal / numCount

end

local myNumbers = { 5.0, 7.0, 8.0, 2.0 }

local theAverage = average( myNumbers )

print( "The average of the list is " .. theAverage .. ".\n" )

--==============================================================================

-- This function is almost identical to the one above, but it returns two 
-- values: the average value and the total number of values that were averaged.
function averageAndCount( numberList )

	local numCount = 0
	local runningTotal = 0

	for i = 1, #numberList do

		numCount = numCount + 1
		runningTotal = runningTotal + numberList[i]

	end

    -- Return both the average and the number of values present.
	return runningTotal / numCount, numCount

end

local myNumbers = { 5.0, 7.0, 8.0, 2.0 }

-- When a function returns more than one value, catch them in multiple variables
local theAverage, numberCount = averageAndCount( myNumbers )

print( "The average of the list is " .. theAverage .. "." )
print( "The list contained " .. numberCount .. " numbers." )

--==============================================================================

-- This is a bit advanced but It's also possible to declare a function and 
-- assign it to a variable. This type of declaration is not as common but you 
-- will see it used occasionally in Corona code where it is necessary to declare 
-- a function's name at the top of a script so it can be referenced by other 
-- functions that are actually being declared before it in the same script file.

local printGameOver

printGameOver = function()
	print( "Game Over!" )
end

-- But calling or executing the function will look exactly the same.
printGameOver()

--==============================================================================

-- Finally, since a function can be assigned to a variable, we can store or 
-- reference a function that have been added to a table.

function printSomeMessage( theMessage )
    print( theMessage )
end

local tableWithFunction =
{
    aNumber = 55,
    aString = "test",
    aFunction = printSomeMessage
}

tableWithFunction.aFunction( "You can store and call a function from a table!" )

