# ED_ENHANCED_T16000 - SCRIPT FILES OVERVIEW  

For the script to work, you must install the latest version of Thrustmaster's Drivers and TARGET Software.  
(https://support.thrustmaster.com/en/product/t16000mfcs-en/)  

Whilst I could have incorporated all of the below files within one single ".tmc" file it would have been a couple thousand lines long and a nightmare to maintain.  
I've separated the code into 11 seperate files which does make it easier for me to maintain.  

Each file contains comments which add context and usage information.  

## Main Code File  

### ED_Enhanced_T16000.tmc  

Every TARGET script must have a ".tmc" file.  
This file's main purposes;  
- 'include' statements for each of the below files so they will be compiled at run time  
- 'exclude' statements for hardware not supported in this script in order to minimise console error messages  
- sets key runtime variables  
- calls initialisation routines for each axis on the controllers detected  
- initialises the Text To Speech and Sound Effects functions  
- loads the Training key map  
- runs the Game Start Check routine  

## Variables, Defines and Settings  

The following 4 files contain definitions for Variables, Defines, Flags and settings.  
There are many comments in each file which hopefully describe what each does or is used for.  

### ED_UserSettings.tmh  

This file's key purpose is to allow you to set critical file and folder locations required for this entire script to work properly.
There are also some options in order for you to personalise, customise and tweak the script to your own personal prefference.  

### ED_GameBindings.ttm  

This file declares script label variables aligned to the game's BINDS file.  
Not all of the variables are used in this script package, however they could be.  
The extras are included inthe file for completeness and makes customisation of the script much easier by not having to create a new label variable or change the BIND file in-game.  

It is recommended that if you change a definition in this file, you should also make the corresponding change to the BIND file in-game.  
Likewise, if you make a change in the BIND file in-game, you should make the corresponding definition change in this file.  

### ED_GlobalVars.tmh  

Variables, as the name suggests may be assigned different values during code execution.  
Variables can be 'Global' or 'Local'.  
- 'Local' Variables are declared inside a subroutine (function) and their values are lost when the routine exists.  
- 'Global' variables are used by 2 or more different routines or functions across multiple files and their values remain available for any routine to use or change.  

Rather than scatter required global variables throughout the code, I put them all in one place.  
Saying that, there are one or two instances where I've defined global variables just prior to the main routine (function) that initially uses them.  

This file also serves to declare initial values for certain flag variables.  

### ED_ScriptDefines.ttm  

Defines are global variables with static values which cannot be changed within the script.  

This file contains thesse global defines.  
It also contains Global Variables associated with some of these Defines for ease of understanding (eg. status.json flags)  

## Code Files  

Refer to each of the following code files for additional context and understanding via the included comments.  
If you'd like more context than is provided, or simply wish to better understand how a routine works, send me a PM in the Elite Dangerous forums.  

### ED_Functions.tmh  

This file contains the following general purpose routines;  

|Function | Purpose |  
|:-------:|:--------|  
|fnNotValid()						|Announce if function called is not valid|  
|fnStartupMapKeyMode()				|Sets Mapkey Mode on Script start|  
|fnSetCurves() 						|Sets Joystick, Throttle and Rudder curves for all axes|  
|fnSetSliderCurve()					|Set context driven DX-SLIDER curves (Radar sensitivity)|  
|fnGetFlightMode()					|Determine current flight mode and set Slider Curves appropriately|  
|fnTextToSpeech()					|Converts Text to Speech using voice.exe|  
|fnVoiceVolume()					|Volume Controller for 'voice' exe / fnTextToSpeech()|  
|fnSoundFX()						|Plays WAV file sound effects|  
|fnGameStarted()					|Announce Game Start, TTS and SoundFX status, Game version|  
|fnPIPMode()						|Sets PIP Mode profiles|  
|fnPIPManager()						|Determines PIP Profile, constructs and parses correct parameters to fnPIPMapper()|  
|fnPIPMapper()						|Sets Auto-PIP Mapping & then sends sequence of keystrokes to game|  
|fnAdvFireControl()					|Perform Primary and Secondary trigger actions|  
|fnAdvancedSCB()					|Fire Shield Cell Bank or two and follow up with a heatsink|  
|fnHeatsink()						|Deploy a heatsink|  
|fnChaff()							|Deploy chaff|  
|fnDeploySRV()						|UNUSED: Deploy/Recover SRV|  
|fnDRShip()							|Dismiss/Recall Ship|   
|fnRequestDock()					|Calls Request Dock macro. Set power to shields|  
|fnHangerServices()					|Calls Enter/Exit Hanger macro|   
|fnCheckFSDCharge()					|Checks FSD starts spooling up after hitting FSD|  
|fnCheckFSDMassLocked()				|Checks we've cleared MassLock for 2 seconds|  
|fnClearChatBox()					|Clears the chat boxes in the Comms Panel|  
|fnModeSwitch()						|Menulog to Solo, Private Group or Open|  
|fnVPOutput()						|Sends output to console and TTS|  
|fnPrintState()						|Display header banner for the status of the macro toggles & user preferences at script start|  
|fnStateDump()						|Prints state banner to console|  
|fnGetTOD()							|Return Time-of-day for console messages|  
|findstr()							|Find substring within a string and return first char position or -1 if not found|  

### ED_Initialise.tmh  

This file contains the following hardware, TTS and SoundFX initialisation routines;  

|Function | Purpose |  
|:-------:|:--------|  
|CheckControllers()					|Detect controllers we have connected|  
|initJoystickAxis()					|Initialise Joystick axes|  
|initThrottleAxis()					|Initialise Throttle axes|  
|initRudderAxis()					|Initialise Rudder axes|  
|initSliderAxis()					|Initialise Slider axis|  
|initSlewAxis()						|Initialise Slew axis|  
|initTextToSpeech()					|Initialise TTS Engine|  
|initSoundFX()						|Initialise Sound Effects engine|  

### ED_Macros.tmh   

This file contains keystroke macro chains;  

|Function | Purpose |  
|:-------:|:--------|  
|fnCustomCommands()					|Container within which we declare the following macros|  
|m_RequestDock						|Auto docking request|  
|m_DeploySRV						|UNUSED: SRV deploy macro|  
|m_BoardShip						|UNUSED: SRV board ship macro|  
|m_ShowGameStats					|Display the combined On Screen Display FPS & Bandwidth meters|  
|m_FastModeSwitch0					|Menulog to Open|  
|m_FastModeSwitch1					|Menulog to Private Group|  
|m_FastModeSwitch2					|Menulog to Solo|  
|m_ReportCrimesToggle				|UNUSED: Toggle 'Report Crimes' on/off|  
|m_NAVBeaconWing					|Toggle 'Wingman Beacon' to TEAM|  
|m_NAVBeaconOff						|Toggle 'Wingman Beacon' to OFF|  
|m_EnterHanger						|Refuel/repair/restock, enter hanger and station services|  
|m_Launch							|UNUSED: Launch the ship (from Launchpad screen)|  
|m_ChangeColours					|Change Engine and Weapon Colours|  

### ED_Toggles.tmh  

Contains general purpose routines which serve to turn on/off, open/close, start/stop, deploy/retract ship systems;  

|Function | Purpose |  
|:-------:|:--------|  
|tgTxt2Speech()						|UNUSED: Turn Text to Speech function ON/OFF|  
|tgEnhancedFAOFF()					|Flight/Drive Assist OFF/ON|  
|tgTriggerMode()					|Cycle between 'Discovery Scanner', 'Mining Laser' and 'Pulse Wave Scanner' modes|  
|tgLights()							|Cycle Lights and Night Vision|  
|tgSilentRunning()					|Toggle Silent running ON/OFF|  
|tgCargoScoop()						|Toggle cargo scoop DEPLOYED/RETRACTED|  
|tgLandingGear()					|Toggle landing gear DEPLOYED/RETRACTED|  
|tgReverseThrust()					|Toggle Reverse in ship or SRV|  
|tgBoost()							|Fire engine boost in normal flight and SCO drive in Supercruise|  
|tgHardpoints()						|Toggle hard points DEPLOYED/RETRACTED|  
|tgHUDMode()						|Toggle HUD between Combat and Analysis modes|  
|tgFSSMode()						|ENTER/EXIT FSS Mode|   
|tgPlanetView()						|Toggle front and rear view of planet in FSS Mode|  
|tgWarpDrive()						|Engage Frameshift Drive (Supercruise/Hyperjump)|  
|tgExtCamera()						|Toggle external camera mode ON/OFF|  
|tgXAxis()							|Toggle Joystick X axis mode between ROLL/YAW|  

### ED_StateTracker.tmh  

The purpose of this file is to read and process the status.json file and read/write the MyStates file;  

|Function | Purpose |  
|:-------:|:--------|  
|stfnReadStatusJson()				|Read status.json file in journal files folder|  
|stfnWriteMaxJson()					|Tracks maximum character length of status.json so we set the buffer value correctly|  
|stfnGetKeyValue()					|Extract json key value by name from status.json|  
|stfnProcessFlags()					|Read and process "Flags" value from status.json|  
|stfnProcessFlags2()				|Read and process "Flags2" value from status.json|  
|stfnProcessGuiFocus()				|Read and process 'GuiFocus' key value in status.json|  
|stfnStartCheck()					|Initial check to see if game is already running after we've restarted the script|  
|stfnMyStates()						|Save current status of non-status.json state variables when mode switching or restarting the game|  

## Button and Switch Assignment  

The following file contains 2x MapKey blocks. One for Training Mode and one for Game mode (Main).  
Each block assigns either BASIC or FULL (Enhanced) button/switch actions depending on which User Setting the user has set (FULL = Default).  

### ED_MapKeyAssignment.tmh  

|Function | Purpose |  
|:-------:|:--------|  
|MainKeyMap()						|This MapKey set is called from fnGameStarted() when we detect Game is running|  
|TrainingMap()						|This MapKey set is called at script startup and when game is stopped and 'TrainingMode' is ENABLED in ED_UserSettings.tmh|  
