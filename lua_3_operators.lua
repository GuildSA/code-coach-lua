--==============================================================================

-- Arithmetic Operators

-- We've already seen the assignment operator (=) in action:

local playerScore = 4200


-- In addition to assignment, Lua supports the four standard arithmetic
-- operators for all number types:

-- Addition       (a + b)
-- Subtraction    (a - b)
-- Multiplication (a * b)
-- Division       (a / b)

local additionAnswer       = 1 + 2   -- Equals 3
local subtractionAnswer    = 5 - 3   -- Equals 2
local multiplicationAnswer = 2 * 3   -- Equals 6
local divisionAnswer       = 10 / 2  -- Equals 5

print("additionAnswer = " .. additionAnswer)
print("subtractionAnswer = " .. subtractionAnswer)
print("multiplicationAnswer = " .. multiplicationAnswer)
print("divisionAnswer = " .. divisionAnswer)

--==============================================================================

-- Relational Operators

-- Lua supports the following relational operators:

-- Equal to                  (a == b)
-- Not equal to              (a ~= b)
-- Greater than              (a > b)
-- Less than                 (a < b)
-- Greater than or equal to  (a >= b)
-- Less than or equal to     (a <= b)


local equalTest = 1 == 1

-- This will resolve to true, because 1 is equal to 1
print("equalTest = " .. tostring(equalTest))


local notEqualTest = 2 ~= 1

-- This will resolve to true, because 2 is not equal to 1
print("notEqualTest = " .. tostring(notEqualTest))


local greaterThanTest = 2 > 1

-- This will resolve to true, because 2 is greater than 1
print("greaterThanTest = " .. tostring(greaterThanTest))


local lessThanTest = 1 < 2

-- This will resolve to true, because 1 is less than 2
print("lessThanTest = " .. tostring(lessThanTest))


local greaterThanOrEqualTest = 1 >= 1

-- This will resolve to true, because 1 is greater than or equal to 1
print("greaterThanOrEqualTest = " .. tostring(greaterThanOrEqualTest))


local lessThanOrEqualTest = 2 <= 1

-- This will resolve to false, because 2 is not less than or equal to 1
print("lessThanOrEqualTest = " .. tostring(lessThanOrEqualTest))


--==============================================================================

-- Logical Operators

-- Logical operators modify or combine the Boolean logic values true and false.
-- Lua supports the three standard logical operators found in all languages:

-- AND (a and b) - Returns true if both expressions are true
-- OR  (a or b)  - Returns true if either of the two expressions are true
-- NOT (not a)   - Negates or inverts the expression's result.

local logicalAndTest = 2 > 1 and 4 > 2

-- This will print true, because both 2 > 1 and 4 > 2 are true.
print("logicalAndTest = " .. tostring(logicalAndTest))


local logicalOrTest = 2 > 1 or 0 > 100

-- This will print true, because at least one of the expressions is true.
print("logicalOrTest = " .. tostring(logicalOrTest))


local logicalNotTest = not 1 == 1

-- This will print false because even though (1 == 1) is true the use of 'not' 
-- inverts the result and makes it false.
print("logicalNotTest = " .. tostring(logicalNotTest))


