# NTU MSc Dissertation

<!--[NTU Sheild](ntu.jpg)-->
<img src="ntu.jpg" alt="NTU Shield" style="width: 250px;"/>

**Student**: Donald Duck <br>
**Supervisor**: Dr. Nachiket Kapre <br>
**Date**: 22th August 2013 <br>

Download Markdown template msc_dissertation.md.html <br>
*Sharepoint forces .html extension. Rename .html to .md on download*

> wget http://www.ntu.edu.sg/home/nachiket/advice/msc_dissertation.md.html

> mv msc_dissertation.md.html msc_dissertation.md

To compile on Mac OS X or Ubuntu Linux with
[Pandoc](http://johnmacfarlane.net/pandoc) installed, use

> pandoc msc_dissertation.md -o msc_dissertation.pdf

<hr>

**Grading Policy** <br>

| | | |
|:--|:--|:--|
|20% | Regular 1:1 meetings | The process of conducting yourself through the MSc is as important as the final product. You will be expected to attend all 1:1 weekly meetings. Exceptions only with MCs. |
|10% | Draft plan | A good engineer knows how to provision the most important resource: **time**, for his project. I will expect at least a rough plan outline that we revise as we execute the project. | 
|20% | Regular 15-minute group presentations (once a month) | A good engineer is also a good oral communicator. I will expect short 15-minute presentations to my research group once a month. Ultimately, I want you to become confident speakers and great communicators.. |
|50% | Final report | Technical report writing is very different from writing an exam. In industry, you will be expected to be precise with your specifications and communications. At the same time, you need to tell a **good story**. You need to connect with your reader at several levels. |

<hr>

# Advice

- Use active voice.
	- e.g. We show how to speedup computations (**correct**)
	- e.g. It is shown that speedup can be achieved.. (**wrong**)

- Good engineering students should *quantify* all aspects of their design.
  Vague claims "this is good, this is bad" will not be appreciated.

- Use examples to explain difficult concepts. Simply writing equations or
  program pseudo-code is *not* enough. Try to convey the intuition behind the
  problem you are solving.

- Use Markdown+Pandoc on Ubuntu/MacOSX to generate your preliminary reports.
  Eventually you will have to switch to Latex.

- State **novelty** of the MSc project. I expect MSc reports to be novel in
  some way. They cannot simply be engineering efforts.

- Become familiar with **gnuplot** or other visualization tools to help you
  better support your plotting needs. I will *NOT* accept Excel-based plots.

- Think about designing good experiments. It is not sufficient to merely get
  your idea working. It is not a binary system of evaluation - works vs does
  not work. In fact, there is a lot you can learn even if your ideas do not
  work. How well does your system perform? What are its operating
  limits/weaknesses? Can it be improved and by how much?

- Tell a good story. Ultimately, we all like to listen to a carefully
  constructed narrative. Make it interesting for everyone.

<hr>

The MSc disseration should be modeled like a research paper with the following
breakdown of section. This is recommended for double-column, double-sided A4
pages with 10-point font. Read a few technical papers first to get a hang of
the language/tone expected and the type of report you will be expected to
write.

# Abstract (1 page)

- Crisp, quantitative Claim of what you have achieved (quantitative=numerical
  statement)
	- e.g. We can make SPICE run 10 times faster using cheap off-the-shelf
	  hardware (**correct**)
	- e.g. SPICE runs faster when using our ideas (**wrong**)

- Explain the idea behind your project effort. Why does your idea work (or
  not?).

- Elaborate the idea with *insightful* comments about the instinct behind the
  idea.

- If this is an unexpected result, say what the typical expectation is...

- How does this advance the state-of-the-art in the field?

# Introduction

- Gentle introduction of the subject under discussion. Writing introductions is
  an art. Try to think of how a popular science article is written. It should
  almost be something that your mom can read and understand.

- A nice iconic picture that captures your problem/system would be perfect
  here. This may or may be possible in your project. This will help the reader
  associate your report with this first visual impression.

- At the end, summarize a list of key claims/deliverables of the report.

# Background (2 pages)

- What new knowledge did you need to learn to implement your project? These
should strictly be scientific/technical ideas and not really based on
	*personal experience*
- e.g. I had to learn Linux (**wrong**)
	- e.g. If you friend from a different specialization were to
	read your report, what key concepts from your area should he know. Think of
that are write down self-contained high-level summaries of these concepts. (**correct**)

# Literature review (1 page)

- No scientific scholarly work is complete without context. It is important
  that you talk to your advisor to get a broader perspective of the area.  Your
  work will sound a lot more intelligent when you show that you have made an
  effort to highlight the contrast between your report and other efforts.

- A tabular taxonomy/classification of existing ideas can be helpful.  Again
  shows that you are a systematic person who knows how to visually place his
  work in the world.

# Idea (3-4 pages)

- This is all up to you. Good students distinguish themselves from others by
  using examples to walk a reader thought the mechanics of the internals of the
  project.

- Meaningless laborious complex details do not impress anyone. Think hard about
  what details to leave out. Just because you spent a lot of time being stuck
  at a particular step of the problem does not mean you have to devote a
  proportional amount of space in text.

- Make it interesting to read. Examiners have to read dozens of reports. Cute
  analogies, pretty pictures, good examples will stand out and be remembered.
  Boring details and hard-to-understand descriptions will be forgotten.

# Experiments (5-6 pages)

- Most students ignore this component. They stop at the "it is working" phase.
  I really only start to evaluate the student project when I start seeing
  numbers and quantification of the project.

- Design good experiments. Put your scientist hats on and try to think of how
  you can show off your achievements.

- Learn to use plotting/graphing tools. Use labels and text that is actually
  visible properly. Examiners do not carry around magnifying glasses on a
  typical workday.

- Provide a head-to-head comparison with a competing system if it exists. This
  will further reaffirm the quality and scholarly nature of your work.

- Provide an in-depth discussion of the key ideas that emerge after looking at
  the data.

# Conclusions (1 page)

- Restate the quantitative claim from the abstract. Tell the examiner what you
  have already told him before (repeat for clarity).

- DO NOT INTRODUCE A NEW IDEA IN THE CONCLUSIONS. All concepts should have been
  covered earlier. 

- Conclusions are only a place to collate the 'aha' moments you had when
  writing the report or conducting your experiments.

# Planning (1 page)

- How does your final execution compare to the actual initial plan sketch?

- What new skills did you learn during the MSc project? Did you have to learn
  something that you never thought you would have to/be able to learn?

- What was your working relationship with your advisor? Did you expect things
  to be different and in what way?

# Future Work (1 page)

- No project is complete without a forward direction. Do not be afraid to think
  of the weaknesses of your project. 

- Think about what you did not have time to complete but your advisor wanted to
  see completed.


<hr>

<font color="red"> Updated: 22nd August 2013 </font>
