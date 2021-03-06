<!---
TODO:
- by the way, the pipe is the first memory i have of the lgm (picture of kiberpipa): a t-shirt i've met at the hostel in lyon and that i've found amazing! but i still haven't managed to buy one...
- martin sayz: the xclip can manage formatting
- another guy says: have a look at jack (libjack)
-->
![ceci n'est pas une pipe](image/pas_pipe.jpg)

Ale Rimoldi | ale@graphicslab.org

<!---

Hi. My name is Ale Rimoldi and I'm a Scribus developer.

For those who only have read the title of this talk and wonder about what kind of pipe I'm about to be talking: it's about integrating "small" tools with something similar to the Unix pipe.

Around the end of 2012, I took a break from my Scribus activities, and I've been thinking about what is the future of publishing and what we – as free software creators – can provide.

One of the topics that I've focused on: what about creating a zoo of small tools, each solving a specific task, instead of one big monolitic program.

-->

!

![cramped complex apps](image/epub.jpg)

Exact measurements → Liquid layout

<!---

My quest started, while I was working on the Epub export plugin for Scribus. One of the main goals was to get a liquid layout from an application that has been conceived to manage fixed – very exact – measurements and proportions.

And I wanted to achieve this without making the Scribus UI even more complex and make the all process as smooth as possible.

-->

!

![cramped complex apps](image/scribus.png)

Complex software → Complex UI?

!

![cramped complex apps](image/toolbars_many.jpg)

Most people don't seem to really mind.

!

![cramped complex apps](image/android.png)

But they are comfortable with phones, tablets...

<!---
But, at the same time, people are getting used to Apps that do only one task. On their phones, on their tablet

-->

!

![a flash app](image/phraseit.png)

... and Flash apps.

<!--
... and on the Web
-->

!

![this is a pipe](image/pipe.jpg)

Each App being an isoleted island.

<!---

But all those applications live in their own world and can't talk to each other. Here comes the idea to create small apps with a pipe between them...

-->

!

![xterm -bg black -fg green](image/xterm_pipe.png)

Est-ce que ceci est la |?

<!--

As you already know, the inspiration is coming from the Unix pipe.

The unix pipe is a sort of command, that can be put between between the name of two programs and will result in the output for the first program, being piped into the second program, which will do what it's needed.
-->

!

    $ ls -al | cut -c14-16,21- | sort -k5
    
    ale 102034 Apr  9 18:12 scribus.png
    ale 108759 Apr 11 17:27 pipe.jpg
    ale  15205 Apr 11 17:32 android.jpg
    ale 176818 Apr 11 18:14 photoTweaker.png
    ale  20040 Apr 12 08:26 pipe_talking.png
    ale   2374 Apr 12 08:26 pipe_file.png
    ale 251207 May  5  2011 toolbars_many.jpg
    ale  25829 Apr 10 22:50 mikado.png

<!--
The Unix pipe is a very powerfull tool, that in a rather simple way, make programs communicate. The only condition being, that each program can read text as input and can output text as a result of the process.
But already this rather simple example, shows the limits of the pipe: the size is sorted by it's alphabetic order, not the numeric one: so 20040 comes before 2374. Not that I doubt that there is a way to get it done with a simple pipe! But you can guess that with more complex graphical data, the complexity can very fast become unmanegeable.
-->

!

![terminology](image/terminology.png)

Terminology: a graphical terminal

<!---
Let's take inspiration from what is already around...
Not only has Enlightenment surprised us with a release after 12 years of development, but they are also giving us a terminal with multimedia capabilities...
-->

!

![mikado](image/mikado.png)

A GUI inspired by node based editors?

<!---
Still, the terminal feels very old. It's Very effective for many tasks, but I'm sure that we can found alternative ways to use a pipe.
-->

!

![phatch](image/phatch.png)

The Phatch way


<!---
One sampe of the way this could be look like is also Phatch, a very nice image batch processor. But will this scale for tasks that are very diverse?
-->

!

![phatch](image/xml.png)

XML could be the glue

<!---
One of the comments I've most heard is: just use XML. Yes, not a bad idea: but! XML is just a set of formatting rules. What we need is an agreement on the grammar. Even if XML is not really known to be a lightweight solution to any problem, it's certainly worth to be considered!
-->

!

![a ](image/pipe_talking.png)

How "fat" can the pipe be?

<!---

So, the next big question: how can we provide a generic way for the programs to communicate? If we leave the Unix convention of only piping raw text, we may have to put more "intelligence" into the pipe itself. One solution could be that the pipe is responsible for mediating between the "left" and "right" application buy asking them which formats they can manage and find the "best" common one.

-->

!

![photoTweaker](image/photoTweaker.png)

I've tried it out!

<!--
I have a problem: when doing support for Scribus, I often need to share screenshots to show how to do things. Here, how i can do it in a few seconds:

-->

!

![photoTweaker](image/scribus_screenshot.png)

Taking the screenshot ...

<!--
- xyz to take a screnshots of the full screen.
-->

!

![photoTweaker](image/photoTweaker_screenshot.png)

... cropping and scaling...

<!--
- piping it to the photoTweaker
-->

!

![photoTweaker](image/imgbin.png)

... uploading ...

<!---
- piping to a script that uploads to an image bin and returns returns the address. Of course, you won't see the image on the website.
- piping to the url to the X11 clipboard
-->

!

![photoTweaker](image/quassel.png)

<!---
- and with right clik it's pasted into my IRC client
-->

... show it!

!

![phatch](image/pipe_file.png)

Piping filenames

<!---
Being far from having at hand a fancy communication channel, this prototype sticks to a plain old shell script and to hand over resources bytheir names (file name or http addresse). We clearly need more!
-->

!

![scribus epub export](image/scribus_epub.png)

And what about the publishing world?

<!---

Back to the Epub exporter. In Scribus, every bit is geared towards defining positions, sizes and colors in the most absolute and picky way. So most of my  effort went into guessing what the designer's thoughts could be and find rules that would provide a pleasant Epub, with a layout that would magically adapt to the characteristics of the ebook readers and finally get a liquid layout. While minimizing the effort needed in producing the Epub. Both from the point of view of the additional configuration to be done in Scribus and of the tweaking that will be necessary on the generated Epub. But you already heared about it from Claudia.
-->

!

![html / css](image/osp_html_css.jpg)

/me too, likes HTML and CSS.

<!---

I join the OSP crew and also thank Claudia and Manuel. Not only for their talks here at the LGM, but also for the discussions we had through the year!. And I will certnialy follow with lot of interest the OSP trials and errors around HTML and CSS!

And who knows, maybe we will even find a role for Scribus in a world where dedicated tools are getting piped together!

-->

!

![ceci est une pipe](image/pipe.jpg)

Ale Rimoldi | ale@graphicslab.org

<!---
So, we still don't have a pipe to work with. It's seomething we still have to create, that we have to invent. And the biggest issue: how can we create something as simple simple as the unix pipe, but get it to pipe rich content in a way that it is easy to manage for both the "sender" and the "receiver".

- by the way, the pipe is the first memory i have of the lgm (picture of kiberpipa): a t-shirt i've met at the hostel in lyon and that i've found amazing! but i still haven't managed to buy one...
-->
