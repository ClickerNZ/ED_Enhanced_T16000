# ED_ENHANCED_T16000 - USER SETTINGS GUIDE  

### ED_UserSettings.tmh  

The above file contains settings which should be reviewed and changed where required.  
There are plenty of comments which hopefully make things clear as to what the settings are for.  

- Open the TARGET Script Editor program  
- Open ED_ENHANCED_T16000.tmc
- Press compile. This will load and run a syntax check on all of the required files  
- Select ED_UserSettings.tmh  
- Make any changes as necessary  
- Save and Compile the script every time you make any changes!  

## CRITICAL SETTINGS  

### status.json  

If these settings are not correct, the script will abort.  
Change "username" to match the Windows username you use to log into Windows.  
You can usually find it by opening explorer and navigating to C:\Users. A list of known users  will be shown as subfolders.  

"status.json" is a single line JSON file and written by the game and updated everytime a status variable changes.  
This script reads status.json every 500 milliseconds and decodes over 50 status flags.  

MaxStatusFile is a copy of status.json and is written every time status.json exceeds the previously longest length.  
I track this length in case status.json ever exceeds the read buffer I've set in the script.  

- alias	JournalFolder		= "C:\\Users\\username\\Saved Games\\Frontier Developments\\Elite Dangerous\\";  
- alias	StatusFile			= "C:\\Users\\username\\Saved Games\\Frontier Developments\\Elite Dangerous\\status.json";  
- alias	MaxStatusFile		= "C:\\Users\\username\\Saved Games\\Frontier Developments\\Elite Dangerous\\NewMaxJson.json";  

StatusReadRate is in milliseconds and I use this to set how often we read status.json.  
If this is set too large you may encounter a lag for some actions.  
One example is that you may hit the supercruise action button as soon as you see the Masslock light in the HUD go out but supercruise does not start spooling up straight away.  
If you witness excessive lag, try making this variable smaller (eg 300).  

- define StatusReadRate		500  

### MyT16000StatusFile  

status.json is a great file for use on keeping track of what's happening in the game.  
However, I have come across some additional things I need to track that status.json does not.  

These include;
  * Voice Volume - Text-to-speech is coded into the script but is optional. A feature of the FULL Keymap is a Volume control.  
  * Ship Dismissed - If you decide to use the  Dismiss/Recall actions, this is the only way we can track.  
  * Current Joystick Curves - Keeps tabs on which curve profile we last used  
  * Max Json Length - as above, we like to keep track of the maximum status.json file length we've seen
  * PIPMode - Keeps tabs on the last PIP Mode we used  

These flags are saved to MyStatusFile each time we quit the game or menulog so they'll be available next time we log in  

If you followed my installation instructions and unzipped the script package to C:\Thrustmaster\ED_TargetScript\ then the following will not need changing.  
If you unzipped the package elsewhere or named the folder something else, you will need to change the following setting  

The location for MyT16000StatusFile.json is set via...  

- alias	MyStatusFile		= "C:\\Thrustmaster\\ED_TargetScript\\MyT16000StatusFile.json";  

### Text-to-speech and SoundFX

The TTS and sound effects functionality is optional, however they are strongly recommended.  
Critical settings for these relate to where you copied the script package to.  
"voice.exe" is the applet which does the text to speech.  
"sounder.exe" is the wav file player applet used to play the odd sound effect (Modifier key pressed, when reversing etc).  

- alias	VoicePath			= "C:\\Thrustmaster\\ED_TargetScript\\SupportFiles\\voice.exe";  
- alias	SoundPath			= "C:\\Thrustmaster\\ED_TargetScript\\SupportFiles\\sounder.exe";  

Additionally, for TTS to work, you need to have at least one of the Microsoft narator languages installed.  
Additional infformation on how to check, install and configure the voices can be found in ED_UserSettings.tmh file.  

Likewise, the wav file sounds that I use in this scripts is usually found in the following folder;  

- alias	WAVPath				= "C:\\Thrustmaster\\ED_TargetScript\\SupportFiles\\sounds\\";  

### Setting a preferred YAW controller  

The following settings found within ED_UserSettings.tmh allow you to force the script to use your preferred contoller for YAW  

- EnableMyRudder  
  * Set to DISABLED if you do not have a Thrustmaster TFRP or TFRPHA Rudder  
  * Default YAW contoller will be set to Throttle Paddle  
  
- YAWDeviceOverride	 
  * If ENABLED, overrides autodetection and sets YAWDevice on next line  
  
- YAWDevice  
  * Options = "JSTwist",  "THRPaddles", "RudderPedals"  
  
By default the Controller Check routine will assign YAW in the following order;  
- Rudder peddles  
- Throttle paddle  
- Joystick twist  

Example: Set Joystick Twist as YAW device  
- Set YAWDeviceOverride to EENABLED as follows;
  * define YAWDeviceOverride ENABLED  // If ENABLED, overrides autodetection and sets YAWDevice on next line  
- Set YAWDevice to "JSTwist" as follws;
  * int YAWDevice = "JSTwist";       // Options = "JSTwist",  "THRPaddles", "RudderPedals"  

## Non-critical settings  

All of the rest of the settings in ED_UserSettings.tmh are personal preference.  
The commentary within the file accompanying each setting should be relatively straight forward.  

If you get stuck, or, simply wish to know more, PM me in the Elite Dangerous forums.  

Clicker.  






