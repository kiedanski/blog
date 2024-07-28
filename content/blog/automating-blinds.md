---
date: 2024-04-22
title: Automating your binds should be a good idea...
description: The story of how I automated my home and nobody cared
filename: automating-blinds
tags: life updates
---

## Setting up an automated household

I have dreamed of having a very smart home for quite some time: having all the bulbs automatically turn on when I get into the house (if it is dark outside), turning the blinds up and down when I wake up, automatically playing music based on my mood, and having my coffee machine prepare my coffee before I wake up, but only if I'm on the house and I have cleaned the machine the night before (not even dreaming of a self-cleaning machine yet!). 

For most people, the most reasonable approach would be to get one (and only one) of these things (smart appliances, lightbulbs, etc.) working for a time, check it out, move to another one, and slowly build up. I am too anxious for that.

I started tinkering with my raspberry-pi, creating the perfect local cloud to connect to my setup. I spent several hours trying to configure HomeAssistant to talk to Apple Home Kit (the worst of all home assistants), and I never used it again because it didn't work as I had in mind. This is the story of my life: doing something 100% without waiting to see the intermediate results, realizing that I don't quite like what I see, and leaving the project unfinished without benefit from the effort put in.

The fun thing? I love startup theory. I have consumed hundreds of hours of podcasts about building your startup, and I know 1 or 2 things about MVPs. Setting up Home Assistant to connect it to HomeKit before using your blinds for 2 days and realizing that you don't want to turn them on and off that often? That is Premature Optimisation (PO). That's not the LEAN approach, nor an MVP.

After doing all the installation and showing it to my roommate, she asked: why do you even need to turn the blinds off? I had automated the living room blind; we don't even close that one ever!

What could I have done differently?

Some ideas:

- Recorded each time we used the blind and realized we didn't want to automate it.
- Install the smart switch and control it via the app for a week or two to see what use cases I find most relevant.
- Realize that HomeKit is not the most configurable smart home app and avoid it at first. 
- Read about HomeKit + Sonoff configuration and realize they don't work well. Try a different approach.

**Moving it to my bedroom**

My current thought is that I can move the smart blind to my room instead: it should get a lot more usage since I turn it on and off daily.

For some time, I have been toying with the idea of using the blinds to wake up with natural light. Turn them on a few minutes before my alarm goes off, and voila (I sleep alone, not waking anyone).

What's a lean way of testing this without removing the electric switch from the living room and re-installing it in my room (at least a few hours of work that I can easily mess up)?

- I bought a new switch to avoid removing the old one, but I might end up with twice the switches and not using either.
- Get a smart lamp, and get it to do the same thing but in my room. It might be enough to wake me up (and then maybe I don't need the blinds), or it might prove that configuring it to turn on automatically before I wake up is too hard (good to know before automating the blinds).

All in all, leaner ways exist most of the time. Since I enjoy building stuff, it's very easy for me to fall into these rabbit holes. But if I'm cautious, I could save much time by thinking carefully about the experiments I'm about to make and finding better ways to try them out.

The fun thing is, when I stop and think about them, it's fairly easy to find a way to be leaner, something I always do for my job. Why is it so hard to do it for oneself?