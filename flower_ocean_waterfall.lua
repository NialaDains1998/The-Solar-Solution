--Create a table to store information related to the project 
local projectInfo = {}

-- Store information in the table 
projectInfo["title"] = "Solar Energy Promotion"
projectInfo["objective"] = "Reduce our reliance on fossil fuels, bringing us one step closer to a more sustainable future."

-- Function to set up the project 
function setupProject()
	--Create a new folder to store project materials 
	os.execute("mkdir 'ProjectFiles'")
	
	--Create a Lua file to store project information
	local projectInfoFile = io.open("ProjectFiles/projectInfo.lua", "w")
	projectInfoFile:write("return " .. table.show(projectInfo))
	projectInfoFile:close()
	
	--Create a README file to explain project goals
	local readmeFile = io.open("ProjectFiles/README.md", "w")
	readmeFile:write("#Solar Energy Promotion\n\n")
	readmeFile:write(projectInfo["objective"] .. "\n\n")
	readmeFile:write("This project seeks to promote the use of solar energy to reduce our reliance on fossil fuels and create a more sustainable future.") 
	readmeFile:close()
	
	--Create a Makefile to compile Solar Energy Promotion related code
	local makefile = io.open("ProjectFiles/Makefile", "w")
	makefile:write("CC=gcc\nCFLAGS=-I.\n\n")
	makefile:write("#Compile solar energy promotion related code\nall: solar_energy_promotion\nsolar_energy_promotion: src/solar_energy_promotion.c\n\t$(CC) $(CFLAGS) -o bin/solar_energy_promotion src/solar_energy_promotion.c\n")
	makefile:close()
	
	--Create a shell script to run the Solar Energy Promotion code
	local runScript = io.open("ProjectFiles/run.sh", "w")
	runScript:write("#!/bin/sh\n./bin/solar_energy_promotion")
	runScript:close()
	
	--Create a source code file for the Solar Energy Promotion code
	local solarCode = io.open("ProjectFiles/src/solar_energy_promotion.c", "w")
	solarCode:write("#include <stdio.h>\n\nint main() {\n\tprintf(\"Solar Energy Promotion\\n\");\n\treturn 0;\n}")
	solarCode:close()
end

--Function to promote solar energy
function promoteSolarEnergy()
	--Create a website to promote solar energy
	os.execute("mkdir 'Website'")
	local websiteIndex = io.open("Website/index.html", "w")
	websiteIndex:write("<html>\n<head>\n\t<title>Solar Energy Promotion</title>\n</head>\n<body>\n\t<h1>Solar Energy Promotion</h1>\n\t<p>")
	websiteIndex:write(projectInfo["objective"] .. "</p>\n</body>\n</html>")
	websiteIndex:close()
	
	--Create a tweet promoting solar energy
	local tweet = io.open("ProjectFiles/tweet.txt", "w")
	tweet:write("Let's reduce our reliance on fossil fuels and create a more sustainable future with solar energy! #SolarEnergyPromotion")
	tweet:close()
end

--Function to set up events to promote solar energy
function setupEvents()
	--Create a directory to store event materials
	os.execute("mkdir 'Events'")
	
	--Create a text file to store event details
	local eventDetails = io.open("Events/eventDetails.txt", "w")
	eventDetails:write("Event Name: Solar Energy Promotion\nEvent Date: January 8, 2020\nLocation: Washington, D.C.\nDescription: This event seeks to promote the use of solar energy and reduce our reliance on fossil fuels, bringing us one step closer to a more sustainable future.\n")
	eventDetails:close()
	
	--Create a flyer to advertise the event
	local eventFlyer = io.open("Events/flyer.md", "w")
	eventFlyer:write("#Solar Energy Promotion\n\n")
	eventFlyer:write("Location: Washington, D.C.\nDate: January 8, 2020\n\n")
	eventFlyer:write("Let's reduce our reliance on fossil fuels and create a more sustainable future with solar energy!")
	eventFlyer:close()
end

--Call setup functions 
setupProject()
promoteSolarEnergy()
setupEvents()