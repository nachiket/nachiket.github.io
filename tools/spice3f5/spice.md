<!-- pandoc spice.md -s -c ../../stylesheets/styles.css -o spice.html --metadata pagetitle="SPICE3f5 Framework" -->

<div class="wrapper">

SPICE3f5 Framework Landing Page
============================
Last reviewed: 15 September 2026

[SPICE](http://bwrcs.eecs.berkeley.edu/Classes/IcBook/SPICE/) was developed by
the EECS department at UC Berkeley under the leadership of Donald Pederson,
Larry Nagel, Richard Newton and many others. This fork (with KLU solver
integration) was maintained and modified by Nachiket Kapre at Nanyang
Technological University. This page is retained as a historical archive.

Software on this page is made available and distributed under
[license](license.txt).


Documents
---------

1. The best introduction to SPICE is the Berkeley [webpage](http://bwrcs.eecs.berkeley.edu/Classes/IcBook/SPICE/).

2. A summary [paper](../../publications/spice_trcad-2012.pdf) and
[book chapter](https://link.springer.com/book/10.1007/978-1-4614-1791-0)
are good high-level overviews of my FPGA SPICE acceleration work.

3. The FCCM 2009, FPL 2009, FPT 2009, and FPT 2011 conference papers show how to accelerate the three different phases of SPICE:
   a. [Model-Evaluation-FPGA](../../publications/spice-spatial-model-eval_fccm-2009.pdf), [Model-Evaluation-GPU](../../publications/spice-perf-compare-arch_fpl-2009.pdf)
   b. [Sparse Matrix-Solve](../../publications/spice-matrix-solve_fpt-2009.pdf)
   c. [Iteration Control](../../publications/spice-iterctrl_fpt-2011.pdf)


Simulator
---------

The simulator source code was historically hosted on Assembla. The repository
addresses below are retained for archival reference and may no longer be active.
	
> `git@git.assembla.com:spice3f5.git`

> `git@git.assembla.com:spice3f5_klu.git`

	
Legacy One-line Install Script for SPICE3f5
---------------------

> sudo apt-get install libmysqlclient-dev libsuitesparse-dev libreadline6-dev libxaw7-dev colormake; mkdir -p workspace; git clone git@git.assembla.com:spice3f5.git; cd spice3f5; colormake; colormake install; ./debian/spice3f5/bin/spice3 -b cap.spice

</div>
