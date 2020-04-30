--==============================================================================

-- Now that we've talked about Operators, let's talk about Conditional Logic!

-- We can use if-statements to have our script take some action if some 
-- condition is true. The is the most basic form of conditional logic.

local health = 0

-- If the player's health is less than or equal to 0 - print "You're dead!"
if health <= 0 then
    print( "You're dead!" )
end

--==============================================================================

-- Next, the if-else statement allows us to pick one of two possible actions
-- instead of a all-or-nothing choice.

local health = 75

-- If the player's health is less than or equal to 0 - print "You're dead!".
-- Otherwise, print "You're alive!".
if health <= 0 then
    print( "You're dead!" )
else
    print( "You're alive!" )
end

--==============================================================================

-- Finally, the if-elseif-else statement allows us to pick one of several possible 
-- actions by chaining two or more if statements together.

local health = 24

-- If the player's health is less than or equal to 0 - print "You're dead!"
-- But if the player is not dead, and the player's health is less than 25 - 
-- print  "You're alive - but badly wounded!" Otherwise, print "You're alive!".
if health <= 0 then
    print( "You're dead!" )
elseif health < 25 then
    print( "You're alive - but badly wounded!" )
else
    print( "You're alive!" )
end

--==============================================================================

-- If we want to write 'if' statements that check multiple expressions we can 
-- use Boolean Operators to decided if an 'if' statement should be executed 
-- or not.

local goldCoins = 800
local rubies = 5

local priceUsingGold = 500
local priceUsingRubies = 10

local shopHasSword = true -- Does the shop keeper have one to sell?


-- The 'not' Boolean Operator just inverts or negates a Boolean variable or the 
-- result of an expression.

shopHasSword = false

if not shopHasSword then
	print("I'm sorry. The magic sword is unavailable.")
end


-- If the player has enough gold coins AND the shop keeper has a magic sword 
-- to sell - ask the player if he would like to purchase it.
if goldCoins >= priceUsingGold and shopHasSword == true then
	print("Would you like to purchase a magic sword?")
else
	print("I'm sorry. The magic sword is unavailable.")
end


-- If the player has enough gold coins OR the player has enough ruby gems - 
-- ask the player if he would like to purchase it.
if goldCoins >= priceUsingGold or rubies >= priceUsingRubies then
	print("Would you like to purchase a magic sword?")
else
	print("I'm sorry. The magic sword is unavailable.")
end


-- If the player has enough gold coins OR the player has enough ruby gems AND 
-- the shop keeper has a magic sword to sell - ask the player if he would 
-- like to purchase it.
if (goldCoins >= priceUsingGold or rubies >= priceUsingRubies) and shopHasSword == true then
	print("Would you like to purchase a magic sword?")
else
	print("I'm sorry. The magic sword is unavailable.")
end


--==============================================================================
