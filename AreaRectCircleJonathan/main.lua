-----------------------------------------------------------------------------------------
--Title: AreaRectCircle 
-- Name: Jonathan Kene
-- Course: ICS20/3C
-- This program displays a rectangle and shows its area 
-----------------------------------------------------------------------------------------

-- create my local variables 
local areaText
local textSize = 50
local myRectangle 
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

-- set the background color of my screen.Remember that colors are between 0 and 1
display.setDefault("background", 28/255, 121/255, 243/255) 

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left corner of the screen and sets its (x,y) position 
myRectangle.anchorX = 0 
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the color of the rectangle 
myRectangle.setFillColor(0.7, 0.1, 0.3)

-- set the color of the border
myRectangle:setStrokeColor(0, 1, 0)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this rectangle with a width on \n" .. 
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x, y) position 
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 25 
areaText.y = display.contentHeight/2

-- set the colour of the newText
areaText:setTextColor(1, 1, 1)