<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/logo.png" width="1200"/></div>

# Schedule_Nurse3_Gallery
Sample Projects Gallery for Schedule NurseⅢ, commertial Solver for Nurse Scheduling Problem.

# How to run the project

1. Install <a href= "https://apps.microsoft.com/store/detail/9N94ZPBTB0RL"> Schedule NurseⅢ</a> (You need Windows 10/11, 64 bit version.)

2. Click  "Open Project file from Github". 
<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/github_viewer.png" width="400"/></div>

3. Select your favorite project.
<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/select_file_on_github.png" width="600"/></div>

4. Before you solve, you should specify the file name to store the project. 
<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/downloaded_file.png" width="600"/></div>

5. Select Solve Window menu,then Click "Solve" as below.
<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/solve_window.png" width="600"/></div>

## Second International Nurse Scheduling Competition 

### Solve the project

The appropriate algorithm is 3 or 4. <br>
These algorithms have no timeouts.<br> Thus, they do not stop until the optimal solution is found.<br>
In the middle of the process, you can hit a series of aborts or stop. The optimal value up to that point is retained.

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_1.png" width="600"/></div>


### Solution to CSV file

Press "Output CSV File" on the right-clicking menu in the shift and task solution view,

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_2.png" width="600"/></div>

Then CSV file should appear shown below.

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_4.png" width="600"/></div>


### Convert the CSV file to Competition formatted files

We need the CSV file to Competition formatted files.  <br>
Python script in Schedule Nurse Project, CSV.nurse3 can do it for fun.<br>

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_11.png" width="600"/></div>


Solve button in the project will make an open file dialog, then you can select the CSV file for conversion.<br>

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_3.png" width="600"/></div>


The following files should be generated.

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_5.png" width="600"/></div>



### Copy text files

Copy those files to the following folder.

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_8.png" width="600"/></div>


### Invoke validator


Edit the sh file and select the command line.

<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_6.png" width="600"/></div>


Paste the command line, and execute.
<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_7.png" width="600"/></div>



Then, validator.txt should be generated.
<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_9.png" width="600"/></div>

We can see the total cost.
<div align="center"><img src="https://raw.githubusercontent.com/sugawara-system/Schedule_Nurse3_Gallery/main/docs/images/inrc2_10.png" width="600"/></div>


