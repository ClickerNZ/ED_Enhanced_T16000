# ED_ENHANCED_T16000 - SCRIPT FILES OVERVIEW  

For the script to work, you must install the latest version of Thrustmaster's Drivers and TARGET Software.  
(https://support.thrustmaster.com/en/product/t16000mfcs-en/)  

Whilst I could have incorporated all of the below files within one single ".tmc" file it would have been a couple thousand lines long and a nightmare to maintain.  
I've separated the code into 11 seperate files which does make it easier for me to maintain.  

Each file contains comments which add context and useage information.

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

This file creates script label variables aligned to the game's BINDS file.  
Not all of the variables are used in this script package however, they could be.  
The extras are included here for completeness and makes customisation of the script much easier by not having to create a new label variable or change the BIND file in-game.  

It is recommended that if you change a definition in this file, you should also make the coresponding change to the BIND file in-game.  
Likewise, if you make a change in the BIND file in-game, you should make the coresponding change in this file.  

### ED_GlobalVars.tmh  

Variables, as the name suggests can have different values applied during code execution.  
Variables can be 'Global' or 'Local'.  
'Local' Variables are declared inside the routine (function) and their values are lost when the routine exists.  
'Global' variables are used by 2 or more different routines or functions across multiple files and their values remain available for any routine to use or change.  

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

- fnNotValid()*Tabspace**Tabspace**Tabspace**Tabspace**Tabspace**Tabspace*Announce if function called is not valid  
- fnStartupMapKeyMode()*Tabspace**Tabspace**Tabspace**Tabspace*Sets Mapkey Mode on Script start  
- fnSetCurves()*Tabspace**Tabspace**Tabspace**Tabspace**Tabspace**Tabspace*Sets Joystick, Throttle and Rudder curves for all axes  
- fnSetSliderCurve()				Set context driven DX-SLIDER curves (Radar sensitivity)  
- fnGetFlightMode()					Determine current flight mode and set Slider Curves appropriately  
- fnTextToSpeech()					Converts Text to Speech using voice.exe  
- fnVoiceVolume()					Volume Controller for 'voice' exe / fnTextToSpeech()  
- fnSoundFX()						Plays WAV file sound effects  
- fnGameStarted()					Announce Game Start, TTS and SoundFX status, Game version  
- fnPIPMode()						Sets PIP Mode profiles  
- fnPIPManager()					Determines PIP Profile, constructs and parses correct parameters to fnPIPMapper()  
- fnPIPMapper()						Sets Auto-PIP Mapping & then sends sequence of keystrokes to game  
- fnAdvFireControl()				Perform Primary and Secondary trigger actions  
- fnAdvancedSCB()					Fire Shield Cell Bank or two and follow up with a heatsink  
- fnHeatsink()						Deploy a heatsink  
- fnChaff()							Deploy chaff  
- fnDeploySRV()						Deploy/Recover SRV  
- fnDRShip()						Dismiss/Recall Ship   
- fnRequestDock()					Calls Request Dock macro. Set power to shields  
- fnHangerServices()				Calls Enter/Exit Hanger macro   
- fnCheckFSDCharge()				Checks FSD starts spooling up after hitting FSD  
- fnCheckFSDMassLocked()			Checks we've cleared MassLock for 2 seconds  
- fnClearChatBox()					Clears the chat boxes in the Comms Panel  
- fnModeSwitch()					Menulog to Solo, Private Group or Open  
- fnVPOutput()						Sends output to console and TTS  
- fnPrintState()					Display header banner for the status of the macro toggles & user preferences at script start  
- fnStateDump()						Prints state banner to console  
- fnGetTOD()						Return Time-of-day for console messages  
- findstr()							Find substring within a string and return first char position or -1 if not found  

### ED_Initialise.tmh  

This file contains the following hardware, TTS and SoundFX initialisation routines;  

- CheckControllers()
- initJoystickAxis()
- initThrottleAxis()
- initRudderAxis()
- initSliderAxis()
- initSlewAxis()
- initTextToSpeech()
- initSoundFX()

### ED_Macros.tmh   

This file contains keystroke macro chains;  

- fnCustomCommands()				Container within which we declare our macros
- m_RequestDock
- m_DeploySRV
- m_BoardShip
- m_ShowGameStats
- m_FastModeSwitch0
- m_FastModeSwitch1
- m_FastModeSwitch2
- m_ReportCrimesToggle
- m_NAVBeaconWing
- m_NAVBeaconOff
- m_EnterHanger
- m_Launch
- m_ChangeColours

### ED_Toggles.tmh  

Contains general purpose routines which serve to turn on/off, open/close, start/stop, deploy/retract ship systems;  

- tgTxt2Speech()
- tgEnhancedFAOFF()
- tgTriggerMode()
- tgLights()
- tgSilentRunning()
- tgCargoScoop()
- tgLandingGear()
- tgReverseThrust()
- tgBoost()
- tgHardpoints()
- tgHUDMode()
- tgFSSMode()
- tgPlanetView()
- tgWarpDrive()
- tgExtCamera()
- tgXAxis()

### ED_StateTracker.tmh  

The purpose of this file is to read and process the status.json file and read/write the MyStates file;  

- stfnReadStatusJson()
- stfnWriteMaxJson()
- stfnGetKeyValue()
- stfnProcessFlags()
- stfnProcessFlags2()
- stfnProcessGuiFocus()
- stfnStartCheck()
- stfnMyStates()

## Button and Switch Assignment  

The following file contains 2x MapKey blocks. One for Training Mode and one for Game mode (Main).  
Each block assigns either BASIC or FULL (Enhanced) button/switch actions depending on which User Setting the user has set (FULL = Default).  

### ED_MapKeyAssignment.tmh  

- MainKeyMap()
- TrainingMap()
