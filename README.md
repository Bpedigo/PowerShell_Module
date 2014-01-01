PowerShell Module
=================

simple functions to make life at the command line easyer!


  
  
======================================================================================  

1.) Add-Numbers                                                                          

  
SYNOPSIS:  Adds any numbers given to it.

SYNTAX:    Add-Numbers args1 args2 args3 ect...
   
EXAMPLE:   Add-Numbers 1 2 100 235 


========================================================================================

 
2.) Bir                                                                              

 

SYNOPSIS:
    Counts the number of files in the current directory.
    Also, counts and highlights files with the following file extensions:
    .ps .py .cpp .rb .exe


SYNTAX:  Bir <"no pramaters">


 
============================================================================================

 
3.) google

 
SYNOPSIS:
   Opens internet explorer and navigates to www.google.com and searches the terms you provide as an argument.

 
SYNTAX:
   Google <"search term here">

 
=============================================================================================

 
4.) grep

 
SYNOPSIS:
  Searches through files for the search term you provide it

 
SYNTAX:
   Grep <"search term here">

 

============================================================================================

 
5.) list

 

SYNOPSIS:
  Shows the all available functions in the BTPDSL module

 

SYNTAX:
  list <"no pramaters">

 

===========================================================================================

 

6.) log_history


SYNOPSIS:
   Writes the current PowerShell sessions history to a file and adds a date stamp.


SYNTAX:
  log_history <no pramaters>

 

===========================================================================================

 
7.) Methods

 
SYNOPSIS:
  Displays the methods available to that object in a grid out view

 
SYNTAX: <"Object"> | methods


EXAMPLE:  Get-date | methods

===========================================================================================   

 
8.) obj_Veiw

 
SYNOPSIS:
  Displays the all properties and methods available to that object in a grid out view

 
SYNTAX:
  <"object"> | obj_view

EXAMPLE:
   Get-date | obj_view 

==========================================================================================

 
9.) pandora

 
SYNOPSIS:
  Opens internet explorer and navigates to www.pandora.com

 
SYNTAX:
  Pandora <"no pramaters">

 

==========================================================================================

 
10.) ps_info

 
SYNOPSIS:
  this displays the current PowerShell version, .Net Version , and the current scripting setting.


SYNTAX:
  ps_info <"no pramaters">

 

============================================================================================

 
11.) Repeat

 
SYNOPSIS:
  This will repeat a command or string as many times as you request.

 
SYNTAX:
   Repeat <"#of times"> {the hear string to be repeated}   

 
EXAMPLES:
    repeat 3 {"hello world"} 
    repeat 3 {speak {"PowerShell is fun!"}}

 

===========================================================================================

 
12.) Speak

 
SYNOPSIS:
  This will make the computer speak what you tell it to.

 
SYNTAX:
  speak {"text to be spoken by the computer"}

 
EXAMPLE:
  speak {"PowerShell is fun!"}

 

==========================================================================================

 
13.) Times

 
SYNOPSIS:
  This will repeat a command or string as many times as you request.

 
SYNTAX:
  <"#of times"> | times {the hear string to be repeated}

 
EXAMPLE:
  3 | times {"HELLO WORLD"}
  4 | times {speak{"PowerShell is fun!"}

 

==========================================================================================

 
14.) view_history


SYNOPSIS:
  This allows the user to view the history log created by the log_history function.

 
SYNTAX:
   view_history <no pramaters>
