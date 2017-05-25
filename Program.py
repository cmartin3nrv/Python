##################################################
################PAINTED PROGRAM###################
##################################################

print ("Welcome to Painted!")
print ("----------------------------------")

###################STAGE 1#####################
#Starts quote mode
def customerDetails():
    print("----------------------------------")
    print ("Please enter the customer's details")
    custTitle = input ("Title:")
    custSurname = input ("Surname:")
    custAddress1 = input ("Address Line 1:")
    custAddress2 = input ("Address Line 2:")
    custPostCode = input ("Postcode:")

#Admin function
def adminMode():
    print("----------------------------------")
    adminPassword = input("Please enter the set Administrator password:\n")
    if adminPassword == ("password"):
        print ("Welcome to Admin mode")
        
        print ("Please select from the following options:\n")

usrMode = input("Press 1 for Quote mode\nPress 2 for Admin mode\n")
if usrMode == ("1"):
    customerDetails()
if usrMode == ("2"):
    adminMode()

#keeps asking user until 1 or 2 is entered
#while usrMode != ("1"):
    #print ("Please only enter '1' or '2'")
    #usrMode = input("Press 1 for Quote mode\nPress 2 for Admin mode\n")
#else:
    #if usrMode == ("1"):
        #customerDetails()
    #if usrMode == ("2"):
        #adminMode()
###################STAGE 2#####################
print("----------------------------------")

#paint prices
paintLuxPrice = 1.75
paintStanPrice = 1.00
paintEcoPrice = 0.80

LuxPaint = 0
StanPaint = 0
EcoPaint = 0

def paint():
    paintChoice = input("\nWhat paint would the customer like?\n")
#-------------------Choice 1 (Luxury)------------------------
    if paintChoice == ("1"):
        choice1 = input("You have selected Luxury paint, is this correct? Please enter 'Y' 'N'\n")
        if choice1 == ("Y" or "y"):
            print ("Luxury paint selected\n")
            LuxPaint = 1
        else:
            paint()
#-------------------Choice 2 (Standard)----------------------
    if paintChoice == ("2"):
        choice2 = input ("You have selected Standard paint, is this correct? Please enter 'Y' 'N' \n")
        if choice2 == ("Y" or "y"):
            print ("Standard paint selected\n")
            StanPaint = 1
        else:
            paint()
#-------------------Choice 3 (Economical)---------------------
    if paintChoice == ("3"):
        choice3 = input ("You have selected Economical paint, is this correct? Please enter 'Y' 'N'\n")
        if choice3 == ("Y" or "y"):
            print ("Economical paint selected\n")
            EcoPaint = 1
        else:
            paint()

stage2 = input("STAGE 2 (press enter to continue)\n")
if stage2 == (""):
    paint1 = print("1. Luxury paint - £1.75 per square metre")
    paint2 = print("2. Standard paint - £1.00 per square metre")
    paint3 = print("3. Economical paint - £0.80 per square metre")
    paint()
else:
    paint1 = print("1. Luxury paint - £1.75 per square metre")
    paint2 = print("2. Standard paint - £1.00 per square metre")
    paint3 = print("3. Economical paint - £0.80 per square metre") 
    paint()
###################STAGE 3#####################
print("----------------------------------")

def walls():
    print ("Wall dimensions...")
    print ("\nPlease note that the Height must be between 2.4m and 6m")
    print ("Please note that the Length must be between 1m and 25m")

    #Wall 1
    Wall1Height = input ("\nPlease enter the Height of wall 1\n")
    Wall1Length = input ("Please enter the Length of wall 2\n")
    #Wall 2
    Wall2Height = input ("Please enter the Height of wall 2\n")
    Wall2Length = input ("Please enter the Length of wall 2\n")       
    #Wall 3
    Wall3Height = input ("Please enter the Height of wall 3\n")
    Wall3Length = input ("Please enter the Length of wall 3\n")
    #Wall 4
    Wall4Height = input ("Please enter the Height of wall 4\n")
    Wall4Length = input ("Please enter the Length of wall 4\n")

stage3 = (input("STAGE 3 (press enter to continue) \n"))
if stage3 == (""):
    walls()
else:
    walls()

print("----------------------------------")

def door():
    print ("Door dimensions...")
    DoorHeight = float(input("\nPlease enter the Height of the door\n"))
    DoorLength = float(input("Please enter the Length of the door\n
                             "))
    doorTotal = DoorHeight * DoorLength
    doorValidation = ("The dimensions of the door are:",DoorHeight,"x",DoorLength)

door()

def window():
    print ("Window dimensions...")
    WindowHeight = float(input("\nPlease enter the Height of the window"))
    WindowLength = float(input("Please enter the Length of the door"))
    windowTotal = WindowHeight * WindowLength
    windowValidation = ("The dimensions of the window are:",WindowHeight,"x",WindowLength)
   
window()


    
    
