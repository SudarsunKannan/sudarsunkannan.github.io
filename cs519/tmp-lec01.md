
# XXX {.dropme}
<!-- @title(CS519: Operating System Theory, Sudarsun Kannan) --!>


# Topics:

- What this course is about?
- Course administrivia.
- Computer Science Research Course.
- Overview of Operating Systems Research.
- Reading Research Papers
- Writing Research Papers


# Semester project:
 - The real meat of the course.
 -  The goals of the project are:
    - Let you try your hand at conducting systems research.
    - Provide a lot of feedback on writing, posing a question, designing an experiment, presenting research.
    - Help you become better systems researchers.
    - About the size of a conference paper.
    - May be completed in groups -- size of project should reflect the size of the group

- Five phases
   - Proposal (After 3rd week 09/19) and project meetings with me to identify topic
   - Checkpoint 1 
   - Checkpoint 2
   - Project Presentation and Final Paper
   - Demo


# Why is designing OS interesting?

- Conflicting design goals and trade-offs
    - Efficient yet portable
    - Powerful yet simple
    - Isolated yet interactable
    - General yet performant
- Open problems: security and multi-core

# Who should take CS3210?

- Anyone wants to work on the above problems
- Anyone cares about what's going on under the hood
- Anyone has to build high-performance systems
- Anyone needs to diagnose bugs or security problems

Also, you have *lots of free time* ...

# About this course

- CS3210: "Design" Operating Systems
- Goals
    - Understand operating systems in detail by designing and
      implementing a small O/S
    - Hands-on experience with building systems

# Prerequisite

- C programming (strict)
- CS 2200: Systems and Networks (strict)
- CS 2110: Computer Organization and Programming (recommended)
- CS 3220: Processor Design (recommended)

> I’m doing a (free) operating system (just a hobby, won’t be big and
> professional like gnu) for 386(486) AT clones. -- Linus Torvalds

# General information

- Web: <https://tc.gtisc.gatech.edu/cs3210>
- Piazza: <https://piazza.com/gatech/spring2016/cs3210agr>
- Text: freely available online
    - xv6: a simple, Unix-like teaching operating system
    - (optional) Linux Kernel Development

# General information

- TA: send us an email for an appointment (<3210-staff@cc.gatech.edu>)
    - Sudarsun Kannan (head TA)
    - Sanidhya Kashyap
    - Kyuhong Park

# Grading policy

- Preparation (10%)
- Quiz (20%)
- Lab (40% + 10% bonus)
- Final project (30%)
    - Proposal presentation (5%)
    - Demo & presentation (15%)
    - Write-up (10%)

# Class structure

- Tue: Lecture, in-class exercises
- Thr: Tutorial
    - Individual exercises
    - Group meeting

Bring your laptop!

# Class structure


<div class='dropme'>
<!-- @img(img/1week.png) --!>

</div>
- First week:
    - Lecture: about PC, Booting, and C
    - Tutorial: tools

- NOTE: preparation questions

# About quiz, project

- Two quiz (in-class, about lec/tut/lab)
- Final project
    - <https://tc.gtisc.gatech.edu/cs3210/2016/proj.html>
    - Pre-proposal, Team proposal, and Demo day

# About preparation questions

- Every lecture and tutorial (<mark>DUE: by 10pm the day before</mark>)


<div class='dropme'>
<!-- @img(img/question.png) --!>

</div>
# About labs

- A toy operating system, called JOS (exokernel)
    - Lab 1: Booting a PC
    - Lab 2: Memory management
    - Lab 3: User environments
    - Lab 4: Preemptive multitasking
    - Lab 5: File system and shell
    - Lab 6: Network driver

# About labs

- "Lab 1: Booting a PC" is out (<mark>DUE: Jan 19th</mark>)
- Ask questions via inline comments


<div class='dropme'>
<!-- @img(img/lab-commenting.png) --!>

</div>
# Class policy

- Late day
    - <mark>Four</mark> days of grace period (entire labs)
    - Don't have to inform us (e.g., job interview, sick)
- No cheating
    - Cheating vs. collaboration
    - Write the name(s) of your sources

See, <https://tc.gtisc.gatech.edu/cs3210/2016/info.html>

# Today's agenda

- Hardware trends
- What is an operating system?
    - Design
    - Goal
    - Role
    - Example: xv6 and JOS
- In-class exercise: *C quiz!* & submission site

# Micro-processor trends: CPU

- by David A. Patterson and John L. Hennessy (2013)


<div class='dropme'>
<!-- @img(w65%, img/cpu-growth.png) --!>

</div>
# Micro-processor trends: SPECInt

- by Henk Poley (2014)


<div class='dropme'>
<!-- @img(w60%, img/spec-cpu-perf:14.png) --!>

</div>
# Projecting micro-processor Trends

- by Chuck Moore (2012)


<div class='dropme'>
<!-- @img(w65%, img/35y-cpu-trend:amd11.png) --!>

</div>
# Memory trends

- by John C. McCallum (2015)


<div class='dropme'>
<!-- @img(w60%, img/memory-price:15.png) --!>

</div>
# Computer performance trends

- by Thomas E. Anderson (2015)


<div class='dropme'>
<!-- @img(w70%, img/perf-over-time:tom15.png) --!>

</div>
# Hardware: IBM System/360 30/75 (1964)

- Ref. [Computer History Museum](http://www.computerhistory.org/revolution/mainframe-computers/7/intro)
    - CPU: 0.034/1 MIPS, 64K/8M (8-bit), $133,000+/$2.2m+
    - Tape Operating System (TOS),  Basic Operating System (BOS/360)


<div class='dropme'>
<!-- @img(w55%, img/ibm-360-model-30.png) --!>

</div>
# Hardware: Apollo 11 (1969)

- Ref. [Wikipedia](https://en.wikipedia.org/wiki/Apollo_Guidance_Computer)
    - CPU: 1 MIPS, 64K (15-bit + 1-bit), $???
    - Apollo Guidance Computer Software


<div class='dropme'>
<!-- @img(w60%, img/agc:wiki.png) --!>

</div>
# Hardware: iPhone (2015)

- Ref. [Apple](htpps://apple.com)
    - CPU: 25k MIPS (1.84 GHz, Dual-core), 2 GB (64-bit), $649
    - iOS 9


<div class='dropme'>
<!-- @img(w60%, img/iphone:15.png) --!>

</div>
# Hardware: Raspberry Pi Zero (2015)

- Ref. [Raspberry.org](https://www.raspberrypi.org/products/pi-zero/)
    - CPU: 1k MIPS (1 Gz, Single-core), 512 MB (32-bit), $5
    - Linux


<div class='dropme'>
<!-- @img(w65%, img/pi-zero.png) --!>

</div>
# Modern hardware

- What's common among these devices?


<div class='dropme'>
<!-- @img(w55%, img/devices.png) --!>

</div>
# Example: Raspberry Pi B

- Ref. [The Raspberry Pi Board](http://jeffskinnerbox.me/posts/2012/Dec/05/raspberry-pi-serial-communication-what-why-and-a-touch-of-how/)


<div class='dropme'>
<!-- @img(w55%, img/pi-board.jpeg) --!>

</div> 
# Challenges in operating systems

- Portability
- Performance
- Reliability
- Security

# Challenges in (practical) operating systems

e.g. Mac OSX, Windows, Linux

- Legacy (compatibility)
- Implementation
- Business

# About "compatibility"
	
- <https://lkml.org/lkml/2012/3/8/495>

> Seriously. Binary compatibility is *so* important that I do not want
> to have anything to do with kernel developers who don't understand
> that importance. If you continue to pooh-pooh the issue, you only show
> yourself to be unreliable.  Don't do it. -- Linus

# Conceptual hardware for CS3210


<div class='dropme'>
<!-- @img(w35%, img/motherboard.png) --!>

</div>
# It's realistic ([IBM T42](https://en.wikipedia.org/wiki/File:IBM_T42_Motherboard_IMG_2591a.jpg))


<div class='dropme'>
<!-- @img(w70%, img/ibm-t42.png) --!>

</div>
# CS3210: JOS and xv6

- Micro-kernel: JOS (exokernel)
- Monolithic: [xv6](https://pdos.csail.mit.edu/6.828/2014/xv6.html) (UNIX-like)
    - Book: [Xv6, a simple Unix-like teaching operating system](https://tc.gtisc.gatech.edu/cs3210/2016/r/xv6-rev8-book.pdf)
    - Code: [commentary](https://tc.gtisc.gatech.edu/cs3210/2016/r/xv6-rev8.pdf)

~~~{.sh}

$ git clone git://github.com/mit-pdos/xv6-public.git
~~~

# UNIX history (Wikipedia)


<div class='dropme'>
<!-- @img(w80%, img/unix-history.png) --!>

</div>
# New operating systems (Peter J. Denning)


<div class='dropme'>
<!-- @img(w80%, img/era.png) --!>

</div>
# Future operating systems (xkcd)

- Large scale: lots of cores, bigger memory, huge storage
- Small scale: dust?
- Heterogeneity


<div class='dropme'>
<!-- @img(img/xkcd-os.png) --!>

</div>
# Programming languages for OS development

- ASM, LISP, C, C++, Object C, Java, Smalltalk, C#, Rust, Haskell, etc
- Why not X, Y, Z?
    - e.g., Brainf***

What language is used for Linux, Windows, Mac OSX, FreeBSD, etc?

# Why using C for OS development?

- Portability
- No runtime
- Direct hardware/memory access
- (decent) Usability

# Prep quiz: the C programming language

- Open your laptop
- Visit [submission site](https://tc.gtisc.gatech.edu/cs3210/2016/submit/handin.py)
- Download the quiz
- Submit your answer!

# Self evaluation

- < 11/21 (50%): shall we meet next year in cs3210?
- < 15/21 (70%): do you have enough time to catch up?

First two tutorials (Jan 14/21) will cover in depth Tools and C/gdb!

# Next lecture

- Tutorial: Group, Tools, Lab1
- Register [Piazza](https://piazza.com/gatech/spring2016/cs3210agr)
- [Lab 1: Booting a PC](https://tc.gtisc.gatech.edu/cs3210/2016/lab/lab1.html) is out (<mark>DUE: 10pm, Jan 19</mark>)
- Don't forget to submit "preparation question" (<mark>DUE: 10pm, Jan 13</mark>)

# References

- [UW CSE 451](http://courses.cs.washington.edu/courses/cse451/15au/)
- [OSPP](http://ospp.cs.washington.edu/)
- [MIT 6.828](https://pdos.csail.mit.edu/6.828/2014/)
- Wikipedia
- The Internet
