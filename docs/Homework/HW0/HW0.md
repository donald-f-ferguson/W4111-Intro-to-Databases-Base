# Homework 0: Environment Setup<br>COMS W4111: Introduction to Databases<br>Sections 003, V03<br>Fall 2024

__(v 1.0; 2024-SEP-07)__


## Introduction and Overview

Homework 0 provides step-by-step instructions on how to install and set up necessary tools for this course/section.
HW 0 also contains tests to verify successful installation. We start the semester with a HW 0 environment setup prior
to HW 1. This allows us to resolve configuration and set up issues before students begin
working on graded assignments.


Completing the HW requires using a Jupyter notebook, running tests and providing screenshots.
Students run the tests and include the screenshots in a copy of the Jupyter notebook
S23-W4111-HW0 that they create. The notebook is also in the Homeworks subfolder of the GitHub repository
for the course. We recommend that students clone the repository.

The notebook includes additional information and guidance, including submission format.

This assignment is for both Programming and Non-Programming tracks. All steps will be required for both tracks
unless specifically marked for Programming Only. 

HW 0 is not worth any points, i.e. the points earned for submission is 0. Failing to submit HW 0 on time
will result in deducting 5 points from your total grade at the end of the semester.

Due date: 2023-Jan-28, 11:59 PM EDT on GradeScope

__Please note:__
- You may NOT use late days. 
- You submit on Gradescope. The notebook S24-W4111-HW0.ipynb provides submission guidance.

The following tools will need to be installed and or setup, and tested:
Anaconda/Python 3/Jupyter Notebook 
PyCharm (Programming Track only, but strongly recommended for all students).
MySQL Server Community Edition.
DataGrip

## HW 0 Project

There are two ways to get the project you use for HW0:
- Clone the GitHub repository (https://github.com/donald-f-ferguson/W4111-Intro-to-Databases-Base.git).
- There is also an option to download a zip file that contains the project files. The zip file is on Ed Stem
in the HW0 post.

We recommend using Git. There are online instructions for installation and use. Some of the tools that you
install will contain Git support.

The folder in the project has the following structure:
- F24-W4111-HW0.ipynb: The Jupyter notebook you use for completing the HW.
- Two png files that the notebook includes.
- Two SQL scripts that you use in DataGrip to setup and load a MySQL database.

We will hold an online, recorded recitations TBA to demo installation and use of the software.  We will publish the
exact time and Zoom URL when we can.

## Anaconda/Python 3/Jupyter Notebook

Follow the online instructions to download and install Anaconda Individual Edition here. A successful
installation produces a new application Anaconda Navigator.

Once installation is complete:
- Launch/start Anaconda Navigator
- Select and Launch Jupyter Notebook

A file system/folder navigator page will appear in the browser. Navigate to the folder/directory containing the
HW 0 files. You created the folder/directory either by cloning the class repository and making a copy of the
relevant folder, or by downloading a zip file and unzipping.

Click on the link S24-W4111-HW0.ipynb. This will launch the Jupyter Notebook in a new browser window/tab.
Switch to the notebook in the browser. Follow the instructions in the notebook.

## PyCharm

__Note:__ Required only for Programming Track, but recommended for all.

Download the professional version of PyCharm. You need to apply for a free education license.
Please install PyCharm Professional. You can install the trial version and apply the license later if necessary.

PyCharm requires configuration for each project. In the test for this section you will practice configuring
a Python Environment.

Start PyCharm, and in PyCharm use the file open menu to open the project (folder) HW0 that you cloned/unzipped.
Click on the HW0PyCharmTest.py file. The Anaconda installation should make Python 3.8 the default interpreter for your
projects. If you get a message about missing an interpreter or cannot find the run option, please follow online
instructions to configure a Python interpreter for the project.

Follow the instructions and replace your uni in the Python file where specified. Right click on the
HW0PyCharmTest.py file, either on the tab or anywhere in the file’s body. Click “Run HW0PyCharmTest” to execute.
Take a screenshot of your window and embed it into the test notebook file provided where specified. There is a
Markdown cell. You just need to replace the name of the file in Image("./PyCharmScreenshot.png").
The notebook contains instructions.

If your file will not run because it is missing a configuration or interpreter follow the above instructions,
otherwise move onto the next section. 

## MySQL Server Community Edition

You must install MySQL (Server)  Community. There is a download link and you can select your operating system.
For Mac, you need to install the correct version for your chipset (ARM, Intel). The installation is relatively easy.
There are online instructions.

__Note:__ If you have an old version of MacOS or Windows, you may have to go into the MySQL Community
archive to find a version compatible with your operating system. Choose a version of MySQL Community Server 8.x
that is compatible with your OS version.

At some point, you will be promoted for/have to set login/authentication options.
Write down and remember the root user ID and password. You are installing on a local machine with no sensitive data.
A simple password is OK. We recommend the password ```dbuserbdbuser.``` Using a common password solves
problems due to your forgetting your password.

Choose the Legacy Authentication method.

Installing MySQL registers MySQL Server as a service. It should start automatically. If you are ever
unsure if MySQL Server is running, there are online OS specific instructions for determining status,
starting and stopping the server.

## DataGrip

DataGrip will be the GUI (Graphical User Interface)/integrated development environment (IDE) and tool that
allows you to visualize and edit data table definitions and data on your MySQL server.
You need to apply for an education license from JetBrains if you didn’t already do so in the PyCharm setup.

Download DataGrip and setup. You will need the education license so you can use DataGrip beyond your free trial period.
You can start with the trial version of professional and apply the credit later.

You will need to set up a connection in DataGrip to your local MySQL Sever. There are online instructions
for configuring a connection. In addition to the general instructions, there are MySQL specific instructions.

Once DataGrip is installed, you need to install two databases. You do this by running 3 SQL scripts that
are in the HW 0 folder:
- book-DDL.sql
- book-smallRelationsInsertFile.sql

Start DataGrip. You will run the SQL scripts in the order above.. The DataGrip documentation
provides instructions on how to run an SQL script from a file (hard drive). Follow the instructions
for each of the SQL files.

Right click on the folder “db_book” in the left navigation menu. Choose “new query console.”
In the new window area, enter select * from student. Click the green arrowhead to run the query.
You will take a screenshot and include it in your Jupyter notebook submission. Your screen will look like

<img src="DataGripScreenshot.png">

The left hand panel will not have as many folders.

## Complete
You are done, for now.

We will post the submission instructions.
