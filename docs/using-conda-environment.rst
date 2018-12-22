=========================
2 Using Conda Environment
=========================

This doc is for Ubuntu/Linux only, for now.

One could install conda `here <https://www.anaconda.com/>`_. 
Once finished installation, you can edit .bashrc file in your home 
directory, and comment out "source" line that added by the Anaconda 
installer so that you won't mess up anaconda python and OS python. 
See below section to check how to activate conda.

Similar with python virtual environment, conda has its own 
environment. The detailed documentation could be found 
`conda.io <https://conda.io/docs/user-guide/tasks/
manage-environments.html>`_.

For this project, I created an environment called **ml-101-env**. 
You can create the same environment by using the "conda-env.yml" file.

2.1 How to activate conda
=========================

1. Use command in terminal as follow: 
::

    source anaconda3/bin/activate

2.2 How to activate conda environment
=====================================

1. Activate conda

2. Use command in terminal as follow: 
::

    source activate ml-101-env

2.3 How to create the same environment
======================================

1. Activate conda

2. Git clone the repo to local, then cd to that repo directory.

3. Use command in terminal as follow:
::
    
    conda env create -f conda-env.yml

2.4 How to exit current environment
===================================

1. Use command in terminal as follow: 
::

    source deactivate

Plus, this works for both leaving conda and conda environment.

2.5 How to export the conda environment to yml file
===================================================

1. Activate the conda environment you want to export first.

2. Use command in terminal as follow:
::

    conda env export > nameEnvironment.yml

where nameEnvironment is the yml file name. 
In this project case, we use
::

    conda env export > conda-env.yml

Plus, this is how you can update the conda environment.

3. To obtain no-builds list, one could use
::

    conda env export --no-builds > conda-no-builds-env.yml
    
The no-builds list is for cross-platform.

2.6 How to see the conda environment list
=========================================

1. Activate conda

2. Use command in terminal as follow:
::

    conda env list