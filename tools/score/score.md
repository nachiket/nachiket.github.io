<div class="wrapper">

SCORE Framework Landing Page
============================
Created: 18/December/2012 <br>
Last Update: 5/May/2014

[SCORE](http://brass.cs.berkeley.edu/SCORE) originally developed by the
[BRASS](http://brass.cs.berkeley.edu/index.html) group at UC Berkeley under the
leadership of Andre DeHon and John Wawryznek.  Andre DeHon and Eylon Caspi
helped revive the code-base and students and interns at Imperial College
supported this with excellent software skills. It is currently being maintained
and modified by Nachiket Kapre at Nanyang Technological University. 

Software on this page is made available and distributed under
[license](license.txt).


Documents
---------

1. The best introduction to SCORE is the JMM journal [article](score_jmm.pdf).

2. To start writing SCORE code, refer to the [tutorial](score_tutorial.pdf).

1. The FPT 2011 best paper winner:
   [VLIW-SCORE](../publications/vliw-score_fpt2011.pdf) showed how to compile
   SCORE state-machines into statically-scheduled VLIW engines.

2. The FCCM 2012 [FX-SCORE](../publications/fxscore_fccm-2012.pdf), 2013
[Uncertainty-SCORE](../publications/uncertainty_fccm-2013.pdf) and 2014
[MixFX-SCORE](../publications/mixfxscore_fccm-2014.pdf) describe a framework
for generating fixed-point bitwidths for streaming programs using Gappa++.

Compiler
---------

The current working copy of source code for the compiler is hosted on Assembla.
The compiler accepts `.tdf` input files and generates a variety of outputs
including `.v`, `.cc`, among others.
	
`git@bitbucket.org:nachiketkapre/tdfc.git`

It compiles with g++-4.4 and requires LEDA 6.3 library to work correctly.

Runtime
---------

The current working copy of source code for the C++ CPU runtime is also hosted
on Assembla. The runtime is required to provide an implementation of streams
and other SCORE objects for C++ simulations.
	
`git@bitbucket.org:nachiketkapre/scoreruntime.git`

It compiles with g++-4.4 and requires LEDA 6.3 library to work
correctly.  
	
Vim Syntax Highlighting
-----------------------

If you're a VIM user, you will love [syntax](tdf.vim) highlighting
configuration for TDF.

One-Line Install Script for SCORE
------------------------

> sudo apt-get install g++4.4 bison flex; cd /opt; wget http://www.algorithmic-solutions.info/free/Packages/LEDA-6.3-free-fedora-core-8-64-g++-4.1.2.tar.gz; gunzip  LEDA-6.3-free-fedora-core-8-64-g++-4.1.2.tar.gz; tar xvf LEDA-6.3-free-fedora-core-8-64-g++-4.1.2.tar; mv LEDA-6.3-free-fedora-core-8-64-g++-4.1.2 leda; git clone git@bitbucket.org:nachiketkapre/tdfc.git; git clone git@bitbucket.org:nachiketkapre/scoreruntime.git; mv scoreruntime ScoreRuntime; cd tdfc; make; cd ../ScoreRuntime; make

Minimal Instructions
---------------------

1. Download **LEDA 6.3** (free edition, NOT the multi-threaded version as it
   segfaults) from [here](http://www.algorithmic-solutions.com/leda) and
   install in `/opt/leda`.  Add `/opt/leda` to **LD_LIBRARY_PATH**. 
2. Checkout the compiler **tdfc** and runtime **ScoreRuntime** into `/opt/tdfc`
   and `/opt/ScoreRuntime` respectively. 
3. If using Ubuntu, you may have to install **flex**, **bison**, **g++-4.4**
   and possibly other missing Ubuntu packages. 
4. Compile simple examples in `/opt/tdfc/examples`. When building code, make
   sure you add the proper `-lleda -lScoreRuntime` and `-L/opt/ScoreRuntime`
   and `-L/opt/leda` switches as required. 

</div>
