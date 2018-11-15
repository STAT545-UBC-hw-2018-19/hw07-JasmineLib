# hw07-JasmineLib
hw07-JasmineLib created by GitHub Classroom


# Jasmine's Homework 7 Repository

Note: Initial contents of this R package were forked from [Vincenzo Coia's repo](https://github.com/vincenzocoia/powers): 


# Links:

To view the README for the package, click [here](https://github.com/STAT545-UBC-students/hw07-JasmineLib/blob/master/powers-master/README.md).   
To view the package (named powers) folder contents, click [here](https://github.com/STAT545-UBC-students/hw07-JasmineLib/tree/master/powers-master)

hw07 Tasks
----------------------------------------------------


Tasks                       |           Details   |        
|----------------------------| -----------------------|
Define and export one new function, i.e. make it available to a user upon loading the package.  | New function root( )  |   
Document all exported functions.         |   |   
Include at least three unit tests for your new function that test common use cases that you anticipate of the function.  | testing completed in the test_root.R file, runs without any errors |   
Give function arguments sensible defaults, where relevant.    |  root() has the default (x,2), such that it defaults to taking the square root. |   
Your package should pass check() without errors (warnings and notes are OK).  |  This passed for me! |   
Update the README and vignette to show usage of all the functions in the package.           | vignette and package README updated  |   
Modify the instructions telling someone how to install your package.       |      See below for instructions on how to install package         |           
Graphs |    try to incorporate a graph using the function root( ) in the package README    |

 # Instructions on how to install the powers package:  
 - You can download this repo, and run install.package("powers") followed by library(powers) to install and load this package  
 - This should overwrite your currently installed powers package (if you have one installed)  
 - If you have trouble with this,two other options on how to install this package can be found [here](http://stat545.com/Classroom/assignments/hw07/hw07-help.html)
 

# A few notes on viewing the vignette:  
 - The vignette I made for this assignment is named "powers-vignette"  
 - The name of the package I made is "powers"   
 - to view the vignette, in the console, type: vignette("powers-vignette", package = "powers)  
 - if the vignette is not found, you might need to try running the following code first: install(build_vignettes = TRUE) 
 
 
 # To view the documentation for root:  
 - After you have installed the package, and loaded it with: library(powers)  
 - type into the console: ?root 
 

