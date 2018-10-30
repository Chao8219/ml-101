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

&nbsp;&nbsp;[4 Venv List](#4-venv-list)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[4.1 Gitignore](#41-gitignore)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[4.2 Get the list](#42-get-the-list)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[4.3 Install from the list](#43-install-from-the-list)

&nbsp;&nbsp;[8 Package Requirement](#8-package-requirement)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[8.1 Use pip in venv](#81-use-pip-in-venv)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[8.2 Use conda in conda env](#82-use-conda-in-conda-env)


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

For this project, I created an environment called **ml-101-env**. You can create the same environment by using the "conda-env.yml" file.

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

3. Use command in terminal as follow: `conda env create -f conda-env.yml`

[Back to Top](#contents)

### 2.4 How to exit current environment

1. Use command in terminal as follow: `source deactivate`

Plus, this works for both leaving conda and conda environment.

[Back to Top](#contents)

### 2.5 How to export the conda environment to yml file

1. Activate the conda environment you want to export first.

2. Use command in terminal as follow: `conda env export > nameEnvironment.yml`, where nameEnvironment is the yml file name. In this project case, we use `conda env export > conda-env.yml`

Plus, this is how you can update the conda environment.

3. To obtain no-builds list, one could use `conda env export --no-builds > conda-no-builds-env.yml`. The no-builds list is for cross-platform.

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

4. Use command in terminal as follow: `pip install sphinx`, or alternativly, `conda install sphinx` would do the job, but using conda directly may cause a problem.

[Back to Top](#contents)

Note: The rich documentation is still under construction. Find more solution from [here](http://www.sphinx-doc.org/en/master/usage/quickstart.html).

## 4 Venv List

As is described in section 1, pushing entire venv is not practical since the packages are huge. However, by creating a venv list may solve this problem.

### 4.1 Gitignore

The very first thing to do is to create a gitignore list. In this case, the example is simple: we only need to ignore the entire venv directory.

Step 1, by using `touch .gitignore`, one could create a new gitignore file; Step 2, by adding `\venv\*` in the .gitignore file, everything should be done.

[Back to Top](#contents)

### 4.2 Get the list

In an activated venv, you could output the list that you've already installed, as simple as `pip freeze > requirements.txt`

[Back to Top](#contents)

### 4.3 Install from the list

To install all packages, you need to have a venv first.

1. Create an empty, new venv by using `python -m venv nameVenv`. In this case, nameVenv is venv.

2. Activate the venv by using `source venv/bin/activate`. **DO NOT** do this inside Conda environment please, it would make things complicated.

3. Keep your pip up-to-date, by using `pip install pip --upgrade`

4. Use `pip install -r requirements.txt` to install all packages that've aleady in the list. 

[Back to Top](#contents)

## 8 Package Requirement

### 8.1 Use pip in venv

If you want to re-setup mannually, here is a list of pacakges you need to install:

1. `pip install pip --upgrade`

2. `pip install tensorflow; pip install keras; pip install -U Sphinx; pip install jupyter; pip install pandas; pip install seaborn; pip install xlrd`

[Back to Top](#contents)

### 8.2 Use conda in conda env

The reason why I don't want to use pip inside conda environment is that, using pip may install pacakges for both inside and outside of current conda environment, which is not how we wanted.

Therefore, please try to use conda command as follow:

Step 1: `conda install setuptools=39.0.1`, this is because tensorflow of current version only supports 39.1.0 or below.

Step 2: use conda install to install all packages:
```
conda install tensorflow keras sphinx jupyter pandas seaborn xlrd
```

[Back to Top](#contents)

