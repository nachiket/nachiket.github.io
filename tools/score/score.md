<!-- pandoc score.md -s -c ../../stylesheets/styles.css -o score.html --metadata pagetitle="SCORE Framework" -->

<div class="wrapper">

SCORE Framework Landing Page
============================
Created: 18 December 2012 <br>
Last reviewed: 15 September 2026

[SCORE](http://brass.cs.berkeley.edu/SCORE) was originally developed by the
[BRASS](http://brass.cs.berkeley.edu/index.html) group at UC Berkeley under the
leadership of Andre DeHon and John Wawryznek.  Andre DeHon and Eylon Caspi
helped revive the codebase; students and interns at Imperial College supported
the effort with excellent software skills. This page documents the historical
SCORE toolchain and its later modifications by Nachiket Kapre.

Software on this page is made available and distributed under
[license](license.txt).


Documents
---------

1. The best introduction to SCORE is the JMM journal [article](score_jmm.pdf).

2. To start writing SCORE code, refer to the [tutorial](score_tutorial.pdf).

1. The FPT 2011 best paper winner:
   [VLIW-SCORE](../../publications/spice-iterctrl_fpt-2011.pdf) showed how to compile
   SCORE state-machines into statically-scheduled VLIW engines.

2. The FCCM 2012 [FX-SCORE](../../publications/fxscore_fccm-2012.pdf), 2013
[Uncertainty-SCORE](../../publications/uncertainty_fccm-2013.pdf) and 2014
[MixFX-SCORE](../../publications/mixfxscore_fccm-2014.pdf) describe a framework
for generating fixed-point bitwidths for streaming programs using Gappa++.

Compiler
---------

The compiler source code is available on
[GitHub](https://github.com/nachiket/tdfc). It accepts `.tdf` input files and
generates several output formats, including `.v` and `.cc`.

It compiles with g++-4.4 and requires LEDA 6.3 library to work correctly.

Runtime
---------

The C++ CPU runtime source code is also available on
[GitHub](https://github.com/nachiket/ScoreRuntime). The runtime implements
streams and other SCORE objects for C++ simulations.

It compiles with g++-4.4 and requires LEDA 6.3 library to work
correctly.  
	
Vim Syntax Highlighting
-----------------------

If you're a Vim user, you will love [syntax](tdf.vim) highlighting
configuration for TDF.

Legacy Minimal Instructions
---------------------

These historical instructions require old compiler and library versions and
may need adaptation on a current system.

1. Obtain the legacy **LEDA 6.3** free edition (not the multithreaded version,
   which segfaults) and install it in `/opt/leda`. Add `/opt/leda` to
   **LD_LIBRARY_PATH**.
2. Check out the compiler **tdfc** and runtime **ScoreRuntime** into `/opt/tdfc`
   and `/opt/ScoreRuntime` respectively. 
3. If using Ubuntu, you may have to install **flex**, **bison**, **g++-4.4**
   and possibly other missing Ubuntu packages. 
4. Compile simple examples in `/opt/tdfc/examples`. When building code, make
   sure you add the proper `-lleda -lScoreRuntime` and `-L/opt/ScoreRuntime`
   and `-L/opt/leda` switches as required. 

</div>
