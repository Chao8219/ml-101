## Contents

&nbsp;&nbsp;[1 Previous Attempts](#1-previous-attempts)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[1.1 Using python virtual environment](#11-using-python-virtual-environment)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[1.2 Using github large file storage](#12-using-github-large-file-storage)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[1.3 Another new attempt that may work](#13-another-new-attempt-that-may-work)

&nbsp;&nbsp;[2 Using Conda Environment](#2-using-conda-environment)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[2.1 How to activate conda](#21-how-to-activate-conda)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[2.2 How to activate conda environment](#22-how-to-activate-conda-environment)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[2.3 How to create the same environment](#23-how-to-create-the-same-environment)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[2.4 How to exit current environment](#24-how-to-exit-current-environment)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[2.5 How to export the conda environment to yml file](#25-how-to-export-the-conda-environment-to-yml-file)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[2.6 How to see the conda environment list](#26-how-to-see-the-conda-environment-list)

&nbsp;&nbsp;[3 Documentation by Sphinx](#3-documentation-by-sphinx)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[3.1 Install Sphinx](#31-install-sphinx)

## 1 Previous Attempts

### 1.1 Using python virtual environment

Python virtual environment is neat. You can install all packages you need inside the virtual environment without affecting outside world. But once you have the venv in the repo, you may find out the total size of the venv folder is way too large. The github won't accept it.

[Back to Top](#contents)

### 1.2 Using github large file storage

Naturally, if github doesn't accept large files, you may want to use git lfs to track all the files. The setup is easy, but the problem is lfs also has a limitation of the number of files. Therefore it doesn't work.

[Back to Top](#contents)

### 1.3 Another new attempt that may work

Besides uploading the whole virtual environment, you may want to take a detour. In python, you can write a python setup script (setup.py), which allows you to install all the requirement packages that you need. To aviod install all the packages in your computer globally, you can create a virtual environment locally by yourself once cloned the repo. Then activate it. Finally you can install all the packages (dependencies) in this local virtual environment. 

[Back to Top](#contents)

## 2 Using Conda Environment

This doc is for Ubuntu/Linux only, for now.

One could install conda [here](https://www.anaconda.com/). Once finished installation, you can edit .bashrc file in your home directory, and comment out "source" line that added by the Anaconda installer so that you won't mess up anaconda python and OS python. See below section to check how to activate conda.

Similar with python virtual environment, conda has its own environment. The detailed documentation could be found [conda.io](https://conda.io/docs/user-guide/tasks/manage-environments.html).

For this project, I created an environment called **ml-101-env**. You can create the same environment by using the "conda-environment.yml" file.

### 2.1 How to activate conda

1. Use command in terminal as follow: `source anaconda3/bin/activate`

[Back to Top](#contents)

### 2.2 How to activate conda environment

1. Activate conda

2. Use command in terminal as follow: `source activate ml-101-env`

[Back to Top](#contents)

### 2.3 How to create the same environment

1. Activate conda

2. Git clone the repo to local, then cd to that repo directory.

3. Use command in terminal as follow: `conda env create -f conda-environment.yml`

[Back to Top](#contents)

### 2.4 How to exit current environment

1. Use command in terminal as follow: `source deactivate`

Plus, this works for both leaving conda and conda environment.

[Back to Top](#contents)

### 2.5 How to export the conda environment to yml file

1. Activate the conda environment you want to export first.

2. Use command in terminal as follow: `conda env export > nameEnvironment.yml`, where nameEnvironment is the yml file name. In this project case, we use `conda env export > conda-environment.yml`

Plus, this is how you can update the conda environment.

[Back to Top](#contents)

### 2.6 How to see the conda environment list

1. Activate conda

2. Use command in terminal as follow: `conda env list`

[Back to Top](#contents)

## 3 Documentation by Sphinx

Since we want documentation to be neat and beautiful, we can use sphinx to generate the html. The [conda's documentation page](https://conda.io/docs/index.html) is a good example. It uses **sphinx_rtd_theme**. You can find more themed examples in sphinx website [here](http://www.sphinx-doc.org/en/master/examples.html).

### 3.1 Install Sphinx

1. I suggest using conda to install the package in conda environment since we are using them.

2. Activate conda

3. Activate conda environment

4. Use command in terminal as follow: `conda install sphinx`

[Back to Top](#contents)

Note: The rich documentation is still under construction. Find more solution from [here](http://www.sphinx-doc.org/en/master/usage/quickstart.html).

