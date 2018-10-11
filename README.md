## Previous Attempts

### Using python virtual environment

Python virtual environment is neat. You can install all packages you need inside the virtual environment without affecting outside world. But once you have the venv in the repo, you may find out the total size of the venv folder is way too large. The github won't accept it.

### Using github large file storage

Naturally, if github doesn't accept large files, you may want to use git lfs to track all the files. The setup is easy, but the problem is lfs also has a limitation of the number of files. Therefore it doesn't work.

### Another new attempt that may work

Besides uploading the whole virtual environment, you may want to take a detour. In python, you can write a python setup script (setup.py), which allows you to install all the requirement packages that you need. To aviod install all the packages in your computer globally, you can create a virtual environment locally by yourself once cloned the repo. Then activate it. Finally you can install all the packages (dependencies) in this local virtual environment. 


## Using Conda Environment

This doc is for Ubuntu/Linux only, for now.

One could install conda [here](https://www.anaconda.com/). Once finished installation, you can edit .bashrc file in your home directory, and comment out "source" line that added by the Anaconda installer so that you won't mess up anaconda python and OS python. See below section to check how to activate conda.

Similar with python virtual environment, conda has its own environment. The detailed documentation could be found [conda.io](https://conda.io/docs/user-guide/tasks/manage-environments.html).

For this project, I created an environment called **ml-101-env**. You can create the same environment by using the "conda-environment.yml" file.

### How to activate conda

1. Use command in terminal as follow: `source anaconda3/bin/activate`

### How to create the same environment

1. Activate conda

2. Git clone the repo to local, then cd to that repo directory.

3. Use command in terminal as follow: `conda env create -f conda-environment.yml`

### How to exit current environment

1. Use command in terminal as follow: `source deactivate`
