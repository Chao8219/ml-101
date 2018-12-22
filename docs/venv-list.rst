===========
4 Venv List
===========

As is described in section 1, pushing entire venv is not practical since 
the packages are huge. However, by creating a venv list may solve this 
problem.

4.1 Gitignore
=============

The very first thing to do is to create a gitignore list. In this case, 
the example is simple: we only need to ignore the entire venv directory.

Step 1, by using 
::

    touch .gitignore

one could create a new gitignore file; 

Step 2, by adding **"\venv\*"** in the .gitignore file, everything 
should be done.

4.2 Get the list
================

In an activated venv, you could output the list that you've already 
installed, as simple as:
::

    pip freeze > requirements.txt

4.3 Install from the list
=========================

To install all packages, you need to have a venv first.

1. Create an empty, new venv by using
::

    python -m venv nameVenv 

In this case, nameVenv is venv.

2. Activate the venv by using
::

    source venv/bin/activate

Please **DO NOT** do this inside Conda environment, it would make 
things complicated.

3. Keep your pip up-to-date, by using 
::

    pip install pip --upgrade

4. Use the following command to install all packages that've aleady in 
the list:
::

    pip install -r requirements.txt