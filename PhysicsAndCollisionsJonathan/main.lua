-----------------------------------------------------------------------------------------
-- Title: Interacting Objects 2
-- Name: Wal Wal (modified by Jonathan Kene)
-- Course: ISC2O/3C
-- This programs displays images that collied with each other through physics
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

-------------------------------------------------------------------------
-- OBJECTS
-------------------------------------------------------------------------

-- display ground
local ground = display.newImageRect("Images/ground.png", 5008, 50)
 ground.x = 515
 ground.y = 750

 -- change the width to be the same as the screen
 ground.width = display.contentWidth

 -- add to physics
 physics.addBody(ground, "static", {friction = 0., bounce = 0.3})

 local beam = display.newImageRect("Images/beam.png", 508, 50)
 beam.x = 115
 beam.y = 600

 -- rotate the bame -60 degrees so its on an angle
 beam:rotate(45)

 -- send it to the back layer
 beam:toBack()

 -- add to physics
 physics.addBody(beam, "static", {friction = 0.5, bounce = 0.3})

-- set the x and y position
local bkg = display.newImageRect("Images/bkg.png", 2049, 1593)
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

-- send to back
bkg:toBack()

----------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------

-- create the first ball
local function firstBall()
	-- creating first ball
	local ball