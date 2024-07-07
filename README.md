# bat-anti-java
Some batch, etc. to silently close Minecraft Java edition every few minutes

### Installing SilentCMD
Download SilentCMD zip file: `https://github.com/ymx/SilentCMD/releases/download/v1.4/SilentCMD.zip` from https://github.com/stbrenner/SilentCMD.
<br>
Then extract the zip file and save it to wherever you want(eg: C:\Users\programms) and note down/copy the path.
<br>

### Setting up Batch
Download the batch files from the releases: `https://github.com/user-attachments/files/16120761/batch_files.zip` and extract the zip file.
<br>
Move the .bat files to a more hidden folder(maybe not temp) or just add them to the SilentCMD folder.

### Setting up Batch Helper file
##### An important note is that some files may have wierd names, as to be more conspicuous and because i liked it, so just don't get confused!
To setup the helper file, open the `js_service_main_helper.bat` file you exrtacted earlier in a text editor like notepad.
Change the 1st path from `C:\path\to\SilentCMD\SilentCMD.exe` to the path to your SilentCMD.exe file and the 2nd path from `C:\path\to\batch\file.bat` to the path to your `js_service_diagnostics.bat` file.
<br>
Note down the path to this batch-helper file for the Task-scheduler for the next step!

### Configuring autostart
To get the script to always run in the background, open Taskscheduler by typing `taskschd` into the windows search field.
Then, on the right-hand side click 'Create Simple Task' or 'Einfache Aufgabe erstellen'
<br>
<li>
  On the new popup menu, enter a name for your task, then select next.
</li> <li>
  On the second page, select 'at login' for when to execute.
</li> <li>
  Next, select 'start program' on the third page and click next.
</li> <li>
  Now enter the path to your batch-helper file you noted down earlier and select next.
</li> <li>
  On the last step, simply select finish.
</li>
