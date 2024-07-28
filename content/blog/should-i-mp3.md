---
date: 2024-05-07
title: Should I MP3?
description: How I felt in love with an old piece of hardware, and what it costed me
filename: should-i-mp3
tags: life updates
---


Sometimes, I get this crazy urge to quit Apple's ecosystem and move to an open-source, Linux-based alternative. At the same time, I wish all my devices were dumber, single-purpose, and distraction-free. There is something to be said about "[doing one thing well](https://en.wikipedia.org/wiki/Unix_philosophy)" regarding hardware.

It was that time of the year, and I suddenly got an urge to stop using my Apple Watch for music and use an MP3 instead.

[![](https://substackcdn.com/image/fetch/w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F94de4efb-b98d-4633-b9fe-01ae93c55b0f.heic)

](https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F94de4efb-b98d-4633-b9fe-01ae93c55b0f.heic)My SanDisk MP3. Isn't it cute?

On the one hand, I recognized that I "binge consume"as much audio content as video content, and I wanted to be more mindful about it.

On the other hand, it would be great if my devices had 3x more battery, didn't need upgrading every 2/3 years, and my earplugs didn't need recharging every 2 hours.[1](https://prematureoptimisation.substack.com/p/should-i-mp3#footnote-1-144372822)

I could have tried to solve some of these issues with my Apple watch (discussed later), but instead, I felt the urge to play retro and started setting up my MP3.

As always, my first (and often wrong) instinct was to build everything to work automatically as a CLI application on a Raspberry Pi. This, of course, was a mistake. When first performing a new task, a GUI makes things much faster, probably better for prototyping.

Setting up my MP3 required 3 steps:

1) Downloading music

2) Downloading podcasts

3) Downloading audiobooks.

Of course, nothing worked as expected (nothing ever does when using software).

## 1) Struggles with Audiobooks

The standard format for audiobooks is m4a and m4b. I downloaded the audiobooks for next month, transferred them to the device, and was ready to roll...or was I?

Everything worked fine the first time I played a new book. The problems arose when I tried to resume the book from where I had left it. Then, I got an error saying that the format was unsupported and there was no way around it. I couldn't continue playing. Back to hacking.

After a few failed attempts at "restarting"(doing the same thing repeatedly because of technology...), I needed a new approach. I converted the m4b files to mp3, and things worked well this time. I lost the ability to browse book chapters in the process, but that's a loss I'm happy to live with. Audiobooks, done.

## 2) Playlists?

The next step was to set up music. The "basic version" of this is simple: download mp3s, copy them to the SanDisk, and be done. With this, you can filter by artists and albums, but only if the files are properly tagged, which is not often the case. What about playlists?

I wanted playlists, and those took me a bit to figure out. The standard playlist format is called m3u, and it's simply a list of files to play. It should be easy, right? Well, no.

I tried everything, but it simply was not working. Several hours later, some obscure blog post shed light on the issue: new line character encodings!

It turns out that the mp3 player expects files to be Windows encoded, and I was using Linux/Mac. After a few curses and a few commands, I got playlists working.

Only podcasts remained.

## 3) How much do you crave your weekly Tim Ferris?

The podcasts took me longer to figure out. I wanted the ability to automatically download new episodes, remove the episodes that I had already played, etc. Things you would expect from your smartphone. I started researching CLI options and quickly realized this would be a rabbit hole. Oh no!

I found a solution that worked and was fairly simple ([podget](https://github.com/dvehrs/podget/tree/dev) + [Podcast Index](https://podcastindex.org/)), but the names were all wrong. Can I write a script to re-tag the files? Will it run automatically? **Rabbit hole**, there we go again.

I decided that I could live with horrible names and erase the files I had already listed. I was ready to go live.

## One week into using the MP3

Things are weird. I had to watch a YouTube video on properly tangling your wires so they don't become a mess. I once caught my hand on the cable and sent the sand disk across the floor. Also, I miss my noise-canceling. And yet, somehow, I feel cooler when I'm using it. Like I have won some weird game, I'm only aware of.

The battery is great, there is only certain things I can listen to, my watch's battery last longer.

Is it worth it? I don't know. A part of me longs to carry one less device and continue the "easier life" with my Apple Watch/Airpods. The other one is happy with the current retro version of the setup. I also need to carry a micro-USB (what is that anyway?).

## Learnings

Overall, I couldn't have avoided the problems with the audiobook format and the playlist new-line issue. Those feel inherent to the device and would have happened either way (probably).

Podcasts...I could have handled it differently. By adding an item (get new podcast episodes) to my weekly review, I could have avoided the attempt to automate them and re-tag them. There are hardly more than 5 new episodes each week, and I doubt it would take me more than 5 minutes to download all new episodes (if I liked them) and copy them over. I might do that moving forward.

I could have also taken a similar, more conscious approach to the Apple watch, manually downloading the episodes for each week instead of downloading them automatically and sometimes not getting what I wanted.

Leaving Apple altogether feels like a tall order that I don't want to face at the moment, and as long as I have an Apple Watch + AirPods combo, it feels easier to just use that. I can be more mindful of my musical intake. Removing all podcasts on auto download and adding an item to do so manually to my weekly review could go a long way to fix some of these problems.

I can also take a more active role in creating and maintaining playlists on Apple Music, which I haven't done at all.

This leaves me with some things I'm pondering:

1. How much does remaining in the Apple Ecosystem cost me?

2. How much greater is the e-waste of staying in Apple (and the more frequent device update required) than moving to alternatives?

3. How can I better track how much time I am listening to stuff?

Until the next one,