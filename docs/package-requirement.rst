=====================
8 Package Requirement
=====================

8.1 Use pip in venv
===================

If you want to re-setup mannually, here is a list of pacakges you need to 
install:

1. Use the following command in the terminal:
::

    pip install pip --upgrade

2. Use the following command in the terminal:
::

    pip install tensorflow; pip install keras; pip install -U Sphinx; 
    pip install jupyter; pip install pandas; pip install seaborn; 
    pip install xlrd; pip install sphinx_rtd_theme;

8.2 Use conda in conda env
==========================

The reason why I don't want to use pip inside conda environment is that, 
using pip may install pacakges for both inside and outside of current 
conda environment, which is not how we wanted.

Therefore, please try to use conda command as follow:

Step 1: 
::

    conda install setuptools=39.0.1

This is because tensorflow of current version only supports 39.1.0 or 
below.

Step 2: use conda install to install all packages:
::

    conda install tensorflow keras sphinx jupyter pandas seaborn xlrd