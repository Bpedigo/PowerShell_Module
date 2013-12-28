PowerShell Module
=================

simple functions to make live easyer at the command line!


  
  
======================================================================================  

Add-Numbers

  
SYNOPSIS:  Adds two numbers given to it.

SYNTAX:    Add-Numbers arg1 arg2
   
EXAMPLE:   Add-Numbers 1 2


    
========================================================================================

 
Dir_Stat

 

SYNOPSIS:
    Counts the number of files in the current directory.
    Also counts the number of lines inside the file type you have given it.


SYNTAX:  Dir_Stat <"PS, PY, CPP, RB, H">

EXAMPLE: dir_stat ps

 
DESCRIPTION:
    Passing the ps argument will find all PowerShell file in the current working directory and count the lines of       code.
    Passing the py argument will find all Python files in the current working directory and count the lines of          code.
    Passing the rb argument will find all Ruby files in the current working directory and count the lines of code.
    Passing the cpp argument will find all C++ files in the current working directory and count the lines of code.
    Passing the h argument will bring up help. 

 

 

============================================================================================

 
google

 
SYNOPSIS:
   Opens internet explorer and navigates to www.google.com and searches the terms you provide as an argument.

 
SYNTAX:
   Google <"search term here">

 
=============================================================================================

 
grep

 
SYNOPSIS:
  Searches through files for the search term you provide it

 
SYNTAX:
   Grep <"search term here">

 

============================================================================================

 
list

 

SYNOPSIS:
  Shows the all available functions in the BTPDSL module

 

SYNTAX:
  list <"no arguments">

 

===========================================================================================

 

log_history


SYNOPSIS:
   Writes the current PowerShell sessions history to a file and adds a date stamp.


SYNTAX:
  log_history <no arguments>

 

===========================================================================================

 
Methods

 
SYNOPSIS:
  Displays the methods available to that object in a grid out view

 
SYNTAX: <"Object"> | methods


EXAMPLE:  Get-date | methods

===========================================================================================   

 
obj_Veiw

 
SYNOPSIS:
  Displays the all properties and methods available to that object in a grid out view

 
SYNTAX:
  <"object"> | obj_view

EXAMPLE:
   Get-date | obj_view 

==========================================================================================

 
pandora

 
SYNOPSIS:
  Opens internet explorer and navigates to www.pandora.com

 
SYNTAX:
  Pandora <"no arguments">

 

==========================================================================================

 
ps_info

 
SYNOPSIS:
  this displays the current PowerShell version, .Net Version , and the current scripting setting.


SYNTAX:
  ps_info <"no arguments">

 

============================================================================================

 
Repeat

 
SYNOPSIS:
  This will repeat a command or string as many times as you request.

 
SYNTAX:
   Repeat <"#of times"> {the hear string to be repeated}   

 
EXAMPLES:
    repeat 3 {"hello world"} 
    repeat 3 {speak {"PowerShell is fun!"}}

 

===========================================================================================

 
Speak

 
SYNOPSIS:
  This will make the computer speak what you tell it to.

 
SYNTAX:
  speak {"text to be spoken by the computer"}

 
EXAMPLE:
  speak {"PowerShell is fun!"}

 

==========================================================================================

 
Times

 
SYNOPSIS:
  This will repeat a command or string as many times as you request.

 
SYNTAX:
  <"#of times"> | times {the hear string to be repeated}

 
EXAMPLE:
  3 | times {"HELLO WORLD"}
  4 | times {speak{"PowerShell is fun!"}

 

==========================================================================================

 
view_history


SYNOPSIS:
  This allows the user to view the history log created by the log_history function.

 
SYNTAX:
   view_history <no arguments>
