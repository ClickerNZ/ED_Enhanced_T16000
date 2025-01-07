# ED_ENHANCED_T16000

Elite:Dangerous Enhanced TARGET script for Thrustmaster T16000 Joystick with TWCS Throttle 

### PURPOSE

The purpose of this script is to give people who have a Thrustmaster T16000 Joystick and TWCS Throttle a way to maximise the usefulness of their joystick and provide a gateway into TARGET scripting now, or maybe in the future.  

One issue this script solves is that using straight DX game binds we can run out of DX bindings (ED supports only 32).  
So my solution is to bind keyboard keys and get your joystick buttons and switches to send the game mostly keypresses!  

### FEATURES  

This script uses "layers".  
This version assigns (maps) up to 3 actions to many buttons thereby increasing your HOTAS usefulness.  

> NOTE: maximum layers per button = 5.  

I wrote this "ENHANCED" script because it's way better than the feeble attempt provided by Thrustmaster.  

It includes;  
- MapAxis statements for all critical axes  
- Curve settings for all axes  
- Mapkey statements for every button (some don't do anything, but they are defined)  
  * It uses layers to map up to 3 actions to many buttons  
- Associated BIND files  
- Game state engine which checks the game's status.json file every half second  
- Text to speech (TTS) functionality to add verbal feedback  
- Sound effects functionality to allow various wav files to be played as ound effects  
- Customised and advanced PIP management
- Automated joystick curve profiles depending on which flight mode you are currently in  
  * (ie FA-Off v Normal v Supercruise etc)  
- On the fly TTS Volume  
- On the fly manual joystick curve profiles selection to suit your own preferences  
- On the fly shifted trigger action  
- Shifted trigger modes...
  * Discovery Scanner - Momentary trigger pull results in a 6.1 second hold function  
  * Mining Laser - Press to hold, press to release  
  * Pulse Wave Scanner - Momentary trigger pull results in repeating trigger action every 7 seconds. Press to stop  
- and many more  

These all provide additional joystick and throttle functionality and improves the immersion within the game.  

#### ACTIONS  

Each mapped button and switch produces an ACTION (not all buttons are mapped).  
These may simply produce a keystroke, however the main advantage of this script is that most call a script function which does more that sending a keystroke.  

Refer to the User Guide in the SupportFiles\Documents subfolder.  
Refer the following file in the SupportFiles\Documents subfolder for more information on ACTIONS.   
 
[Button Action Reference](/SupportFiles/Documents/ButtonActionsReference.md)  

### REQUIREMENTS

To use this script you will need a Thrustmaster T16000L or T16000M and a Thrustmaster TWCS Throttle.  
Rudder pedals are not required, but recommended.  
  
Also, you will need the latest firmware for these devices and the very latest version of TARGET software.  

### ZIP PACKAGE  

The zip file contains the following:  
- This README.md file  
- Changelog.txt
- ScriptFiles folder contains all supporting script files  

[Script Files Overview](./SupportFiles/Documents/ScriptFilesOverview.md)  

- A MapFiles folder which contains  
  * Quick Reference guide spreadsheet  
  * Keyboard Mapping spreadsheet  
  * Multiple image files the Throttle and Joystick
    * Image files showing the button and switch names for both the Joystick and Throttle 
    * T16000-Joystick-ENHANCED-ACTIONS.png shows the button and switch actions for the Joystick when the FULL keymap is used    
	* TWCSThrottle-ENHANCED-ACTIONS.png shoiws the button and switch actions for the throttle when the FULL keymap is used    
    * T16000-Joystick-BASIC-ACTIONS.png shows the button and switch actions for the Joystick when the BASIC keymap is used    
	* TWCSThrottle-BASIC-ACTIONS.png shoiws the button and switch actions for the throttle when the BASIC keymap is used    
- A BindFiles folder which contains the binds files matching what this script uses    
- A SupportFiles folder containing;  
  * Documents subfolder with a User Guide, Button Action Reference and UserSettings Guide  
  * Sounds subfolder containing the wav files used in the script  
  * TTS Voice Registry Scraps to assist in adding voices to Windows for use within the game via this script  
  * The sounder.exe (SoundFX) and voice.exe (TTS) executable files called from within the script  

### INSTALLATION

If you have just bought a Thrustmaster T16000 and TWCS Throttle, you can be up a running very quickly.  
You will, however need to spend some time becoming accustomed to what the buttons and switches all do.  

The \'MapFiles\' folder contains some images which should help with this.  
I recommend you print out the ACTIONS images for the profile you are using and have handy whilst learning which buttons do what.  

> Make sure you have already installed the Windows drivers and TARGET software before installing this script  

- Unzip the package to a local drive/folder of your choice.  
> I suggest creating c:\Thrustmaster\ED_TargetScript\ and copying the entire package into there.  
- Create a backup of your current game bind files which can be found at...  
	
	C:\Users\\<username\>\AppData\Local\Frontier Developments\Elite Dangerous\Options\Bindings  
	(change \<username\> in the above path to your Windows username)
 
- Copy the contents of my BindFiles folder into the above bindings folder.

### SCRIPT CONTROLLER CHECK 

The script will check for compatible controllers each time it is run (as described under REQUIREMENTS) and will ABORT if you don't have at least;  

- Thrustmaster T16000L or T16000M FCS flight stick...  
- Thrustmaster TWCS Throttle  

If you have either of the following compatible rudder pedals, they too will work with this script and the script will NOT ABORT if you don't;  

- TFRPRudder  
- TFRPHARudder  

The script will also automatically assign YAW to the most appropriate device in the following order;  
- Rudder Pedals (if one is detected)  
- Throttle Paddles  
- Joystick Twist axis  

Alternately, you can set this manually via a variable in ED_UserSettings.tmh.  
(this is covered in the next section)  

### USER SETTINGS  

There are several CRITICAL settings which need to be set before you run the script or the game.  
Refer to the User Setting Guide file (below) for guidance on these.  

[User Settings Guide](/SupportFiles/Documents/UserSettingsGuide.md)  

### SCRIPT USAGE

- Open the TARGET Script Editor program.  
- Select Munu, Open, then navigate to where you copied the package and select **ED_ENHANCED_T16000.tmc** file found in the **ScriptFiles subfolder**  
- Click 'compile'  
- If you get no errors, hit 'run'  

> Errors can happen if you've made changes to the script or have not set the required file paths correctly  

You are likely to get an error or two when you run the script for the first time.   
Read the console messages carefully.  
Try to resolve the errors, then save, compile and run.  

Repeat as necessary until you see 'main returned 0'.    
If you get stuck, contact me via the E:D forum.  

Once the script is running the script editor console will show **'main returned 0'** if everything is ok.  

If the script aborts, it might mean you do not have the required controllers connected.  
Read the abort error messages carefully.  
If you get stuck, post a query in the Elite Dangerous forums.  

Assuming the script compiled and runs fine, start Elite Dangerous.  

> NOTE: You need to always run the script before starting the game  

### LAUNCHER BATCH FILE  

Once you get a clean compile and run via the script editor, you can use the optional "Launcher" batch file that I've provided in the SupportFiles folder.  

This launcher command file will try to run the Elite Dangerous Launcher and then this script via the TARGET GUI program.  

Before running this file, do the following;  

- Create a shortcut to ED_Launcher_T16000.cmd file on your desktop  
- Right click and select properties and select 'Advanced'  
- Tick the 'Run as Administrator' check box and click 'Ok'  
- Click 'Apply' then 'ok'  
- Right click the shortcut again but this time choose 'edit'  
- In the EDLauncher section check/change the drive letter and folder if you have installed Elite somewhere else on your PC  

> I have included example sections for other supporting programs you may wish to take advantage of.  
> To use these, remove the 'rem ' at the start of the lines and ensure the disk letter and folders are correct.  

- In the Target Script section, check/change the drive letter and folder to accurately reflect where you installed the TARGET software.  
- On the line which starts with 'start targetgui -r ...' make sure the full path to this script is correct.  
- If you have changed anything, do not forget to **save** before exiting the editor.  

Go ahead and run the Launcher shortcut!  
Assuming evrything is configured correctly, the Launcher will fire up the game launcher, any additional apps you've enabled then the script.  

### SET CONTROLLER BINDS IN GAME TO 'Clicker-ENHANCED_T16000'  

Once the game is running, hit escape key and choose OPTIONS then CONTROLS.    
Set the PRESET for each of GENERAL, SHIP and SRV. to 'Clicker-BASIC_T16000' and hit APPLY for each one then go flying!  

> NOTE: 'Clicker-ENHANCED_T16000' will only appeear as a menu option if the script is running AND you have copied the BINDS files from the package to the game folder correctly  

### PLAYING ELITE:DANGEROUS WITH THIS SCRIPT  

>RECOMMENDATION: Print the following files and have handy as reference to become familiar with the Joystick and Throttle button actions.
- Quick Reference guide spreadsheet for either BASIC or ENHANCED (set within ED_UserSettings.tmh)   
- The image files for each of the Joystick and Throttle  
  * T16000-Joystick-BUTTONS.png  
  * TWCSThrottle-BUTTONS.png  
  * T16000-Joystick-ENHANCED-ACTIONS.png and/or T16000-Joystick-BASIC-ACTIONS.png depending on which keymap profile you wish to use   
  * TWCSThrottle-ENHANCED-ACTIONS.png and/or TWCSThrottle-BASIC-ACTIONS.png depending on which keymap profile you wish to use   
  
### NOTES  

> ALWAYS Open the TARGET Script editor program and load, compile and run the script FIRST then launch Elite:Dangerous  
> Alternately, once everything is working as expected, run the Launcher shortcut you created on the desktop (as above)  


### QUICK START USAGE (In Game)  

The script assigns ("maps") multiple ACTIONS to some buttons.  
(these are marked alongside 'U' and 'D' in the Quick Reference Guide)  

To use the alternate actions do the following;  
- Press and hold Throttle TBTN2 then the required button for the alternate "UP" action, or  
- Press and hold Throttle TBTN3 then the required button for the alternate "DOWN" action  

EXAMPLE - TBTN2+H1L (H1L-U)
>  To toggle the Landing gear, press and hold the TBTN2 button on the Throttle then press and release the Joystick Hat button to the left (H1L)  

NOTE: Joystick H1D Hat switch  
>  H1D on the joystick allows you to select each Wingman in sequence.  
>  First press selects Wingman 1, second press selects Wingman 2, third press selects Wingman 3  
>  Fourth press selects Wingman 1 again, and so on  

For more information refer the following file;  
[Button Action Reference](/SupportFiles/Documents/ButtonActionReference.md)  

[User Guide](/SupportFiles/Documents/UserGuide.md)  

### SUPPORT  
  
If you get stuck or just want to understand more, post a question in the forum, or PM me.  

Fly dangerously!  

o7  

Cheers  
Clicker  
