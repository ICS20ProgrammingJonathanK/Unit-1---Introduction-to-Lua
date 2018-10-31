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

-- create bkg
 local bkg = display.newImageRect("Images/bkg.png", 104, 1592)
 bkg.x = 510
 bkg.y = 750
 
 -- display ground
 local ground = display.newImageRect("Images/ground.png", 5008, 50)
 ground.x = 515
 ground.y = 750

 -- change the width to be the same as the screen
 ground.width = display.contentWidth
 
 -- add to physics
 physics.addBody(ground, "static", {friction = 0., bounce = 0.3})

local beam = display.newImageRect("Images/beam.png", 508, 50)
beam.x = 500
beam.y = 500


 local beam = display.newImageRect("Images/beam.png", 508, 50)
 beam.x = 115
 beam.y = 600

 -- rotate the bame -60 degrees so its on an angle
 beam:rotate(45)

 -- send it to the back layer
 beam:toBack()


local longBeam = display.newImageRect("Images/longBeam.png", 1008, 50)
 longBeam.x = 1000
 longBeam.y = 470

 physics.addBody(longBeam, "static", {friction = 0.5, bounce = 0.3})


 -- rotate the bame -60 degrees so its on an angle
 longBeam:rotate(90)

 -- add to physics
 
 physics.addBody(beam, "static", {friction = 0.5, bounce = 0.3})

local longBeam = display.newImageRect("Images/longBeam.png", 1500, 50)
 longBeam.x = 1000
 longBeam.y = 100

 physics.addBody(longBeam, "static", {friction = 0.5, bounce = 0.3})


 -- rotate the bame -60 degrees so its on an angle
 longBeam:rotate(180)

 -- add to physics
 physics.addBody(longBeam, "static", {friction = 0.5, bounce = 0.3})

local longBeam2 = display.newImageRect("Images/longBeam2.png", 1008, 50)
 longBeam2.x = 25
 longBeam2.y = 100

 physics.addBody(longBeam2, "static", {friction = 0.5, bounce = 0.3})


 -- rotate the bame -60 degrees so its on an angle
 longBeam2:rotate(90)

 -- add to physics
 physics.addBody(longBeam2, "static", {friction = 0.5, bounce = 0.3})


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
	
	local superBall1 = display.newImage("Images/superBall1.png", 100, 100)

	-- add to physics
	physics.addBody(superBall1, {density = 10.0, friction = 0.5, bounce = 0.9, radius = 10})

	superBall1:scale( 1, 1 )
end

---------------------------------------------------------------------

local function secondBall()
	
	local superBall2 = display.newImage("Images/superBall2.png", 300, 100)

    -- add to physics
	physics.addBody(superBall2, {density = 10.0, friction = 4.5, bounce = 0.5, radius = 25})

    superBall2:scale( 2, 2)
end

--------------------------------------------------------------------

-- create the first ball
local function thirdBall() 
	
	local superBall3 = display.newImage("Images/superBall3.png", 250, 100)

	-- add to physics
	physics.addBody(superBall3, {density = 1.0, friction = 0.5, bounce = 0.5, radius = 65})

	superBall3:scale( 3, 3)
end

-----------------------------------------------------------------------

local function fourthBall()
	
	local superBall4 = display.newImage("Images/superBall4.png", 300, 100)

    -- add to physics
	physics.addBody(superBall4, {density = 10.0, friction = 0.5, bounce = 0.5, radius = 65})

    superBall4:scale( 4, 4)
end


-----------------------------------------------------------------------
-- TIMER DELAYS
-----------------------------------------------------------------------

timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 700, thirdBall)
timer.performWithDelay( 900, fourthBall)

	-- creating first ball
	local ball
