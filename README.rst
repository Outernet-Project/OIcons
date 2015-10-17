=======================
OIcons - Outernet icons
=======================

OIcons is a vector icon set used in Librarian, content management system that
manages the downloads on Outernet_ receivers.

Modifying the SVG sources
=========================

The source files for the icons are located in the ``src`` directory. They are
all in Inkscape SVG format, and Inkscape is recommended for editing these files
(although SVG-compatible software such as Adobe Illustrator can also be used).

Requirements for webfont generation
===================================

Conversion of the SVG files into webfonts is performed by grunt-webfont_. The
following software is required for performing the conversion:

- NodeJS_
- grunt-cli (from NPM_)
- fontforge

Compiling the webfonts
======================

Once the requisite software is installed, you also need to install local
depedencies. In your terminal (or Command Prompt), go to the OIcons folder and
type::

    npm install

To compile the fonts just run this command::

    grunt

If you are on Linux or UNIX-like system (e.g., BSD, OSX), you can also use `GNU
Make`_ to start the compilation::

    make

The compiled fonts and SCSS file are generated in ``build`` directory.

Cutomizing the stylesheet
=========================

If you wish to customize the generated SCSS file, edit the template in
``templates/icons.scss```. Note that this file uses EJS syntax and mixes
JavaScript with SCSS.

License
=======

See LICENSE file for details.

Disclaimer
==========

SOFTWARE AND ASSETS IN THIS REPOSITORY ARE PROVIDED AS IS WITHOUT ANY WARRANTY,
EITHER EXPLICIT OR IMPLIED. YOU USE THESE FILES AT YOUR OWN RISK AND TAKE FULL
RESPONSITIBLITY FOR ANY NEGATIVE (OR POSITIVE) CONSEQUENCES OF DOING SO.

.. _Outernet: https://outernet.is/
.. _grunt-webfont: https://github.com/sapegin/grunt-webfont
.. _NodeJS: https://nodejs.org/en/
.. _NPM: https://www.npmjs.com/
.. _GNU Make: https://www.gnu.org/software/make/manual/make.html
