# ED_BASIC_T16000 - CUSTOMISING

### CHANGING BINDS  

At time of release my script uses 46 seperate pre-defined actions mapped to the Joystick grip and Throttle.  
I've only mapped a small handful of ACTIONS to the Joystick Base buttons.  
So, there's plenty of opportunity to make use of those if you wish.  

---  

<figure>  
    <div align= "center"><img src="/MapFiles/T16000-Joystick-ACTIONS.png" width="640"></div>  
</figure>

<p align= "center">ED_JoystickChart - ACTIONS</p>

---  

<figure>
    <div align= "center"><img src="/MapFiles/TWCSThrottle-ACTIONS.png" width="640"></div>
</figure>  

<p align= "center">ED_ThrottleChart - ACTIONS</p>  

---  

If you are happy to go with these then things are pretty simple, you are done.  
However, if you want to change what the buttons and switches do, then there are several ways to accomplish this.  

No doubt if you have been playing Elite Dangerous for a while you will already have your own preferred binds.  
If you want to use this script but want to use your own binds then this is what you can do...  

#### OPTION 1 - For a lot or most of the BINDS

Maybe you want this option so you can run the script and get comfortable using your preferred bindings.  

However, this option has a hard limit on the number of buttons (32 DX) and switches (8 DX POV Hat) you can bind to DX inputs in game.  
This option bypasses all the MapKey settings and your joystick/throttle remains 2 distinct controllers with no mappings.

- Using the Target Script Editor, load ED_BASIC_T16000.tmc  
- Find 'define ButtonMaps' near the top of the script  
- Change from ENABLED to DISABLED  
- Save, Compile and Run the script  
- Run Elite Dangerous  
- Go to OPTIONS | CONTROLS  
- Select GENERAL, SHIP and SRV one by one and go through each line and press the button or switch on the Joystick or Throttle you want to use  

You will see I've mostly used the secondary binds for the keypresses in the bind file so most of the primary bindings are still empty.  
Either way, you can always recopy my package bind files if you make a mess of things and need to start over.  

This method allows you to assign a JOY# (ie DX#) to each of the actions up to the limit of JOY32.  
If you don't want or need to use the joystick or throttle buttons to send extra keypresses, you are done!  
  
#### OPTION 2 - CHANGE BUTTON ACTIONS  

Before making changes using this option, check out the image files within the 'MapFiles' folder for all the button and switch names used by TARGET script.  

> NOTE: This option requires 'define ButtonMaps ENABLED' in the script

---  

<figure>  
    <div align= "center"><img src="/MapFiles/T16000-Joystick-BUTTONS.png" width="640"></div>  
</figure>  

<p align="center">ED_JoystickChart - BUTTON NAMES</p>  

---  

<figure>
    <div align= "center"><img src="/MapFiles/TWCSThrottle-BUTTONS.png" width="640"></div>  
</figure>  

<p align="center">ED_ThrottleChart - BUTTON NAMES</p>  

---  

Edit the ED_BASIC_T16000.tmc file using notepad (or Notepad++)  
Starting around line 224 is the Mapkey assignment subroutine which is called from Line 81 of the script (so long a ButtonMaps is ENABLED)  
  
EXAMPLE 1:  
You wish to swap the action of the B5 and B10 buttons so B5 will open the System Map and B10 opens Galaxy Map  

Current mappings;    
> MapKey(&MyJoystick, B5,  PULSE+GalMap);       // Press B5  to send ':' (LShift+;)  
> MapKey(&MyJoystick, H10, PULSE+SystemMap);    // Press B10 to send ';'  
  
Make this change; 

> MapKey(&MyJoystick, B5,  PULSE+SystemMap);   // ';'  
> MapKey(&MyJoystick, B10, PULSE+GalMap);      // ':' (LShift+';')  
		
NOTE: It's always a good idea to update the comments at the end of the line to reflect what the statement does.
  
EXAMPLE 2:  
You want to map more than one button to do the same action.  

> MapKey(&MyJoystick, B5, PULSE+SystemMap);  // ';' key  
> MapKey(&MyJoystick, B6, PULSE+SystemMap);  // ';' key  
  
This results in both buttons (B5 and B6) sending the same action to the game.  
    
EXAMPLE 3:  
You want an entirely different action for the button, or assign an ACTION to an unused button.
  
An unused button will be shown with its' ACTION set to '0'.  

Take a look in the ED_GameBindings.ttm file and pick any of the defined actions listed.  
Use the define name in the ACTION part of the MapKey statement for the button you want to assign or change.  

Let's suppose you want to use some unused buttons (B14 and B15) to ROLL the spaceship.  
We find the following defines in the ED_GameBindings.ttm file;  

>	define RollLeft          'W'    // LSHIFT+W   
>	define RollRight         'S'    // LSHIFT+S   

Change the action part of the MapKey statements by replacing '0' with the action define name  

> MapKey(&MyJoystick, B14, PULSE+RollLeft);    // LSHIFT+W  
> MapKey(&MyJoystick, B15, PULSE+RollRight);   // LSHIFT+S  

> **WARNING!** All syntax and define names are case sensitive. The script will throw and error if you make a typo during compile or run.  
    
When testing this change you might find the Ship Roll is not as smooth as you'd like.  

Try removing PULSE+  
  
>  MapKey(&MyJoystick, B14, RollLeft);    // LSHIFT+W  
>  MapKey(&MyJoystick, B15, RollRight);   // LSHIFT+S  

This results in a Roll to the left or right as long as you are holding the button.  
Release the button and the roll will cease.    

The ship should now roll smoothly for as long as you are holding the hat button left or right.  

### CHANGING JOYSTICK/THROTTLE/SLEW/SLIDER CURVES  

- Open ED_BASIC_T16000.tmc using the TARGET script Editor  
- Find 'int MapAllAxes() {'   
- For each of the active MapAxis() statements there is a corresponding SetCurves() statement  
- I have provided syntax for SetSCurve() and SetCustomeCurve() and a short descriptor on what the numbers mean  
- If you prefer to have no curves applied, simply COMMENT out the start of the line containing the SetCurve() statement/s  
- Conversely, if you want to tweak the curves, by all means experiment  

If you get stuck, post a question or PM me in the forum.  
  
### SUPPORT  
  
If you get stuck or just want to understand more, post a question or PM me in the forum.  

Fly dangerously commands!  

o7  

Cheers  
Clicker  
