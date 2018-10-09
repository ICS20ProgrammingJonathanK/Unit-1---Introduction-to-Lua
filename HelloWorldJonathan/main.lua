-----------------------------------------------------------------------------------------
-- Name: Jonathan Kene
-- Course: ICS2O/3C
-- This program displays Hello, World on the iPad simulator and "Hellooooooo" to the command
-- terminal.
-----------------------------------------------------------------------------------------

-- print "Hello, World" to the command terminal
print ("***Helloooooooooooooo!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background color
display.setDefault("background", 0/255, 191/255, 255/255)

-- create a local variable
local textObject

-- displays text on the screen at position x = 500 and y = 5 with
-- a deafult font style and font size of 50 
textObject = display.newText( "Hello, Jonathan Kene", 240, 100, nil, 40)

-- sets the color of the text
textObject:setTextColor(0, 191, 255)



-- create a local variable 
local textObjectSignature

-- displays text on the screen at position x = 400 and y = 5 with
-- a deafult font style and font size of 30
textObjectSignature = display.newText( "Created by Jonathan Kene", 240, 200, nil, 30)

-- sets the color of the text
textObjectSignature:setTextColor(0, 191, 255)


