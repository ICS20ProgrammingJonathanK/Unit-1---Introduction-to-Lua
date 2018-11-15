-----------------------------------------------------------------------------------------
-- Name: Whack A Mole 
-- Name: Jonathan Kene
-- Course : ICS2O/3C
-----------------------------------------------------------------------------------------

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 124/255, 249/255, 199/255)

-- displaying mole 
local mole = display.newImage( "Images/mole.png", 0, 0)

-- setting position
mole.x = 500
mole.y = 500

mole:scale( 1, 1 )

local pointsTextObject
local numberPoints = 0

-----------------------------------------------------------------------------------

-- this function makes the mole appear in random (x, y) position on the screen
-- before calling the Hide function
function PopUp( )

	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )
	mole.isVisible = true
	timer.performWithDelay( 600, PopUp )
end

function PopUpDelay( )
	timer.performWithDelay( 600, PopUp )
end

function Hide( )
	mole.isVisible = false
end

function GameStart( )
	PopUpDelay()
end

function Whacked( event )
	if (event.phase == "began") then
		numberPoints = numberPoints + 1
		print(numberPoints)
		pointsTextObject.text = "Points = ".. numberPoints
    end
end

pointsTextObject = display.newText( "Points = ".. numberPoints, 800, 385, nil, 50 )
pointsTextObject:setTextColor(155/255, 42/255, 198/255)

mole:addEventListener( "touch", Whacked )

-- calling functions
 PopUpDelay()
   


