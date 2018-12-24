=========================
3 Documentation by Sphinx
=========================

Since we want documentation to be neat and beautiful, we can use sphinx 
to generate the html. The `conda's documentation page 
<https://conda.io/docs/index.html>`_ is a good example. It uses 
**sphinx_rtd_theme**. You can find more themed examples in sphinx website: 
`theme example <http://www.sphinx-doc.org/en/master/examples.html>`_.

3.1 Install Sphinx
==================

1. I suggest using conda to install the package in conda environment 
   since we are using them.

2. Activate conda

3. Activate conda environment

4. Use command in terminal as follow: 
::

    conda install sphinx

or alternativly, 
::

    pip install sphinx

would do the job.

3.2 Apply Quickstart
====================

With the installation of sphinx, you may use a default quick setup 
package called `quickstart <http://www.sphinx-doc.org/en/master/
usage/quickstart.html>`_. Please follow instruction to use the 
quickstart to generate a basic source and build directory.

Here are some tips for you:

1. Please make a new directory called "docs" under your root directory, 
   if you still not have it, and run quickstart script inside docs to 
   maintain a clean root directory.

2. Please add "Makefile" and "make.bat" when you run the quickstart 
   script, since they are useful to build html to you.

3.3 Edit Index
==============

As you may notice, the html files are generate based on either markdown 
or reStructedText files. Therefore, all you need to do is to edit the 
corresponding files and then "make" them. 

The first step could be edit the index.rst file to give you a general 
idea about how to link all different contents. You could seperate each 
section into different rst files and use the name to link them in the 
index.rst.

Please try to edit it and use command in terminal:
::

    make html

To generate html file and see how it goes. I believe it would only take 
you few minutes to figure out what is going on!

3.4 Push to GitHub Pages
========================

Once you finish your editing job, you can push it to GitHub Pages. The 
GitHub Pages is a nice service to help you to host your documentation 
online for free. The detailed introduction of GitHub Pages will be 
documented other places, let's go back to the Sphinx.

Since GitHub Pages would only read the index.html file in your root 
or your root/docs directory, you need to place a re-direct html page 
at those places.

For example, in my setup, I need GitHub Pages to read my source under 
docs directory, but I do not have any index.html under that folder. 
Therefore, I can added an empty "index.html" filled with: 
::

    <meta http-equiv="refresh" content="0; url=./_build/html/index.html"/>

Thus, the link will be re-directed.

This solution is offered by `here <https://github.com/sphinx-doc/sphinx/
issues/3382#issuecomment-409068915>`_.

Also, GitHub Pages, sometimes, is slow to response, and it may not be 
working at first few attempts. Please be patient.

Note: You can find more usage on this page of `quickstart <http://
www.sphinx-doc.org/en/master/usage/quickstart.html>`_.
