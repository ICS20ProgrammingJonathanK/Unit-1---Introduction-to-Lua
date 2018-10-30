-- Title: MovingImages
-- Name: Jonathan Kene
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and then makes it fade out.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

local correctSound
local correctSound = audio.loadSound( "Sounds/correctSound.mp3" ) -- Setting a variable to an mp3 file
local correctSoundChannel

-- global variables
scrollSpeed =  3

-- backround image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height 
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent 
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip 
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	 beetleship.alpha = beetleship.alpha + 0.01
  correctSoundChannel = audio.play(correctSound)

end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

--------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed =  3

-- character image with width and height 
local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)

-- set the image to be transparent 
rocketship.alpha = 0

-- set the initial x and y position of rocketship
rocketship.x = 0
rocketship.y = display.contentHeight*2/3

-- Function: MoveRocketShip 
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveRocketShip(event)
	-- add the scroll speed to the x-value of the ship
	rocketship.x = rocketship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	 rocketship.alpha = rocketship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveRocketShip)

