# Class CEXXXX Project Report

<!--[NTU Shield](ntu.jpg)-->
<img src="ntu.jpg" alt="NTU Shield" style="width: 250px;"/>

**Student**: Donald Duck <br>
**Date**: 9th August 2013 <br>

Download Markdown template. <br>

>       wget http://yarvard.sce.ntu.edu.sg/advice/project_report.md
>       wget http://yarvard.sce.ntu.edu.sg/advice/ntu.jpg

To compile on Mac OS X or Ubuntu Linux with
[Pandoc](http://johnmacfarlane.net/pandoc) installed, use 

>       pandoc project_report.md -o project_report.pdf

Should you choose to include LaTeX descriptions of things, use

>       pandoc project_report.md -o project_report.tex 
>       pandoc project_report.tex -o project_report.pdf

<hr>

# Advice 
- Use active voice.
	- e.g. We show how to speedup computations (**correct**)
	- e.g. It is shown that speedup can be achieved.. (**wrong**)

- Good engineering students should *quantify* all aspects of their design. Vague
  claims "this is good, this is bad" will not be appreciated.

- Proof-read for grammatical errors. Try to get someone with a decent command of English to read your report first before showing your advisor/examiner.

- Use examples to explain difficult concepts. Simply writing equations or
  program pseudo-code is *not* enough. Try to convey the intuition behind the
  problem you are solving.

- Use Markdown+Pandoc to format text better. Microsoft Word is pathetic. I
  will only accept PDF submission and highly encourage the use of Markdown. If
  you are adventurous (or want to do a PhD later), definitely use Latex.

- Use less jargon. Explain jargon whenever you use it. TLAs are stupid and
  must be avoided in technical discussions. People may be unfamiliar with
  terminology that you may take for granted.

- Pictures are good but do not overdo pictures! You are not drafting a
  photography/national geographic magazine. You are writing a technical report.

- Think about designing good experiments. It is not sufficient to merely get
  your idea working. It is not a binary system of evaluation - works vs does
  not work. In fact, there is a lot you can learn even if your ideas do not
  work. How well does your system perform? What are its operating
  limits/weaknesses? Can it be improved and by how much?

- Tell a good story. Ultimately, we all like to listen to a carefully
  constructed narrative. Make it interesting for everyone.

<hr>

Here is a recommended structure for organizing a good project report. Page counts
are for 10-point, single-column, double-sided A4 pages.

# Abstract (0.25 page)

- Crisp, quantitative Claim of what you have achieved (quantitative=numerical statement) 
	- e.g. We can make SPICE run 10 times faster using cheap off-the-shelf hardware (**correct**) 
	- e.g. SPICE runs faster when using our ideas (**wrong**)

- Explain the idea behind your project effort. Why does your idea work (or not?).

- Elaborate the idea with *insightful* comments about the instinct behind the idea. 

- If this is an unexpected result, say what the typical expectation is...

# Introduction (0.25 pages)

- Gentle introduction of the subject under discussion. Writing introductions
  is an art. Try to think of how a popular science article is written. It
  should almost be something that your mom can read and understand.

- A nice iconic picture that captures your problem/system would be perfect
  here. This may or may be possible in your project. This will help the reader
  associate your report with this first visual impression.

- At the end, summarize a list of key claims/deliverables of the report.

# Background (0.5 pages)

- What new knowledge did you need to learn to implement your project? These
  should strictly be scientific/technical ideas and not really based on
  *personal experience*
	- e.g. I had to learn Linux (**wrong**)
	- e.g. If you friend from a different specialization were to
  read your report, what key concepts from your area should he know. Think of
  that are write down self-contained high-level summaries of these concepts. (**correct**)

# Idea (1 page)

- This is all up to you. Good students distinguish themselves from others by
  using examples to walk a reader thought the mechanics of the internals of
  the project.

- Meaningless laborious complex details do not impress anyone. Think hard about
  what details to leave out. Just because you spent a lot of time being stuck
  at a particular step of the problem does not mean you have to devote a
  proportional amount of space in text.

- Make it interesting to read. Examiners have to read dozens of reports. Cute
  analogies, pretty pictures, good examples will stand out and be remembered.
  Boring details and hard-to-understand descriptions will be forgotten.

- You may inline fragments of code (not complete code)
    - Markdown source:<br>
      \```<br>
      public static void main(String[] args) {<br>
        System.out.println("Hello, Nachiket");<br>
      }<br>
      \```
    - Markdown output:
    ```
    public static void main(String[] args) {
      System.out.println("Hello, Nachiket");
    }
    ```


- You may include pictures
    - Simple Markdown form: <br>
    \[NTU Shield](ntu.jpg)
    - HTML form: <br>
    \<img src="ntu.jpg" alt="NTU Shield" style="width: 250px;"/>
    - Latex form: 
\\begin{figure} <br>
\\begin{center} <br>
  \\includegraphics{ntu.jpg} <br>
  \\caption{NTU Shield} <br>
\\end{center} <br>
\\end{figure} <br>
    - HTML Result:<br>
<img src="ntu.jpg" alt="NTU Shield" style="width: 250px;"/>



# Experiments (1 page)

- Most students ignore this component. They stop at the "it is working" phase.
  I really only start to evaluate the student project when I start seeing
  numbers and quantification of the project.

- Design good experiments. Put your scientist hats on and try to think of how you can show off your achievements.

# Team Work (0.25 pages)

- How was the project managed and divided amongst the team members. Correlate distribution of project tasks to member interest and existing skill.

- What worked and what didn't work in your team. It is important you complete both aspects of this

- Who was your team leader? Leader will not get extra points, so don't feel challenged.

# Conclusions (0.5 pages)

- Restate the quantitative claim from the abstract. Tell the examiner what
  you have already told him before (repeat for clarity).

- DO NOT INTRODUCE A NEW IDEA IN THE CONCLUSIONS. All concepts should have been
  covered earlier. 

- Conclusions are only a place to collate the 'aha' moments
  you had when writing the report or conducting your experiments.

# Future Work (0.25 page)

- No project is complete without a forward direction. Do not be afraid to think
  of the weaknesses of your project. 

- Think about what you did not have time to complete but your advisor wanted to
see completed.

# References (0.25 pages)

- What references did you need to understand and deliver the project.

<hr>
<font color="red"> Updated: 25th October 2013 </font>
