@title(CS519: Operating System Theory, Sudarsun Kannan)

# Topics:

- What this course is about?
- Course administrivia.
- Computer Science Research Course.
- Overview of Operating Systems Research.
- Reading Research Papers
- Writing Research Papers
- Simple Quiz (*Not for Grading*)


# Course administrivia:
 - Paper Reviews (10%) - Submit before each lecture 
 - Midterm (10%) and Finals (15%)
    - Discussions in the class, papers, homework problem
 - Homeworks (30%) 
    - Includes implementation and analysis 
    - Example: Implement a System Call and measure context switch cost
 - Semester-long Project - 35%
    - Details shortly
 - Extra Credits (Class participation) - 10%

# Semester project:
 - The real meat of the course.
 -  The goals of the project are:
    - Let you try your hand at conducting systems research.
    - Provide a lot of feedback on writing, posing a question, designing an experiment, presenting research.
    - Help you become better systems researchers.
    - About the size of a conference/workshop paper.
    - May be completed in groups -- size of project should reflect the size of the group

# Semester project (continued):
- Five phases
   - Proposal (due 3rd week 09/19) - Start thinking, meeting me @ office hours
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

- I want to know how applications use hardware resource

# Prerequisite
- C programming
- CS 416 (OS Design) or CS 518 (Graduate version) or Computer Architecture 

# General information
- Please see course website for schedule, news, links to homeworks, and
  everything else.
- Web: <https://www.cs.rutgers.edu/~sk2113/course/cs519.html>
- Piazza: <https://piazza.com/class/jlfj3jldgkz370> (please register)
- Reference book: freely available online <http://pages.cs.wisc.edu/~remzi/OSTEP/>

# Office hours
 - Monday 5pm @ CoRE 313
 - No TA, so email me your questions or post on Piazza

# Class structure
 - One or two papers per class
 - Goal not to cover maximum papers but discuss important ideas
 - Please read the paper before the class and submit the reviews!

  [comment]: <>  @img(img/lab-commenting.png)

# Class policy

- Late day
    - [[Five]] days of grace period (All four homeworks combined)
    - Manage your grace periods wisely!
- No cheating
    - Cheating vs. collaboration
    - Write the name(s) of your sources


# High-level Intro

- Hardware trends
- What is an operating system?
    - Challenges
    - Goal
    - Role

# Micro-processor trends: CPU

- by David A. Patterson and John L. Hennessy (2013)

 @img(w80%, img/cpu-growth.png)

# Projecting micro-processor Trends

- by Chuck Moore (2012)

 @img(w65%, img/35y-cpu-trend:amd11.png)

# Memory trends

- by Onur Mutlu

 @img(w80%, img/memorytrend.jpg)

# What does an OS do?

 - Virtualizes (gives illusion of private resources)
 - Manages resources
 - Acts as a library
 
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

# Role of an OS?
- Manage hardware resources on behalf of mutliple applications

# Goal of an Ideal OS?

# Goal of an Ideal (dream) OS?
- Provide applications with near-hardware performance 
- Do current OSes achieve the goal?

# New operating systems (Peter J. Denning)

 @img(w80%, img/era.png)

# Future hardware trends

 @img(w80%, img/futuretrend.png)

# Future hardware trends

 @img(w80%, img/heterogeneity.png)


# Future operating systems (xkcd)

- Large scale: lots of cores, bigger memory, huge storage
- Small scale: dust?
- Heterogeneity

 @img(img/xkcd-os.png)


What language is used for Linux, Windows, Mac OSX, FreeBSD, etc?

# Why using C for OS development?

- Portability
- No runtime
- Direct hardware/memory access
- (decent) Usability

# Prep quiz: the C programming language
 - Relax! (Not for grading but for self-evaluation)
 - < 70% correct answers - time to revisit your programming skills

# Next lecture

- Discussion of Exokernel Paper - Please submit reviews to  
- Register [Piazza](https://piazza.com/class/jlfj3jldgkz370)

# References and Materials used from
- [CS 3210](https://tc.gtisc.gatech.edu/cs3210/2016/fall/)
- [UWisc CS 736](http://pages.cs.wisc.edu/~remzi/Classes/736/Fall2007/)
- [UW CSE 451](http://courses.cs.washington.edu/courses/cse451/15au/)
- [OSPP](http://ospp.cs.washington.edu/)
- Wikipedia
- The Internet
