===================
1 Previous Attempts
===================

1.1 Using python virtual environment
====================================

Python virtual environment is neat. You can install all packages you 
need inside the virtual environment without affecting outside world. 
But once you have the venv in the repo, you may find out the total 
size of the venv folder is way too large. The github won't accept it.

1.2 Using github large file storage
===================================

Naturally, if github doesn't accept large files, you may want to use 
git lfs to track all the files. The setup is easy, but the problem is 
lfs also has a limitation of the number of files. Therefore it doesn't 
work.

1.3 Another new attempt that may work
=====================================

Besides uploading the whole virtual environment, you may want to 
take a detour. In python, you can write a python setup script (setup.py), 
which allows you to install all the requirement packages that you need. 
To aviod install all the packages in your computer globally, you can 
create a virtual environment locally by yourself once cloned the repo. 
Then activate it. Finally you can install all the packages (dependencies) 
in this local virtual environment. 
