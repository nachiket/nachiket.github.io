css: ../cycling/cycling.css 

SPICE3f5 Framework Landing Page
============================
Last Update: 19/July/2013

[SPICE](http://bwrcs.eecs.berkeley.edu/Classes/IcBook/SPICE/) was developed by
the EECS department at UC Berkeley under the leadership of Donald Pederson,
Larry Nagel, Richard Newton and many others. This fork (with KLU solver
integration) is currently being maintained and modified by Nachiket Kapre at
Nanyang Technological University.

Software on this page is made available and distributed under
[license](license.txt).


Documents
---------

1. The best introduction to SPICE is the Berkeley [webpage](http://bwrcs.eecs.berkeley.edu/Classes/IcBook/SPICE/).

2. A summary [paper](../publications/spice_trcad2012.pdf) and 
[book chapter](http://www.springer.com/engineering/circuits+%26+systems/book/978-1-4614-1790-3") 
are good high-level overviews of my FPGA SPICE acceleration work.

3. The FCCM 2009, FPL 2009, FPT 2009 and FPT 2011 conference papers show how to accelerate the three difference phases of SPICE:
   a. [Model-Evaluation-FPGA](../publications/spice_spatial-model-eval_fccm-2009.pdf), [Model-Evaluation-GPU](spice_perf-compare-arch_fpl-2009.pdf)
   b. [Sparse Matrix-Solve](spice_matrix-solve_fpt-2009.pdf)
   c. [Iteration Control](spice_iterctrl_fpt-2011.pdf)


Simulator
---------

The current working copy of source code for the simulator is hosted on Assembla.
	
> `git@git.assembla.com:spice3f5.git`

> `git@git.assembla.com:spice3f5_klu.git`

	
One-line install script for SPICE3f5
---------------------

> sudo apt-get install libmysqlclient-dev libsuitesparse-dev libreadline6-dev libxaw7-dev colormake; mkdir -p workspace; git clone git@git.assembla.com:spice3f5.git; cd spice3f5; colormake; colormake install; ./debian/spice3f5/bin/spice3 -b cap.spice

