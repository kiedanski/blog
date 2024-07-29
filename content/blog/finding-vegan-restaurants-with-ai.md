---
date: 2024-05-21
title: Finding Vegan restaurants with AI
description: My thought process before starting a new software project
filename: finding-vegan-restaurants-with-ai
tags: 
  - machine learning
  - vegan
---

### Intro

Whenever I see a problem that I might be able to solve with software or AI, my mind very quickly starts searching for ways to break it apart into manageable entities.

I'm particularly good at devising smaller pieces that should be attempted before starting work on the whole system to de-risk the project.

Let me give you an example. I often want to find vegan restaurants in cities. I have three main ways of doing so: a) Using the HappyCow app, a dedicated source of vegan restaurants. b) Searching "vegan" in Google Maps, which often surfaces some options based on reviews or self-reported tags; c) using services such as Yelp or a blog that might have "the top 10 vegan restaurants in XYZ city".

Those options are usually very good for finding 100% vegan restaurants but are pretty limited for searching for restaurants with labeled vegan options that otherwise serve animal products.

This information is important because often, you want to go out for dinner with other people who might not be as willing to go to a purely vegan restaurant. Or, you might want to switch things up a bit.

### The problem

Given the setup above, my idea was to scrape the web for restaurants with vegan options. This is difficult because most do not advertise that they have vegan options.

Here, I thought that if I could look at a picture of the menu, I could most certainly decide if they had an option. But how can I get and process the menus of all restaurants in a city?

My mind starts racing: What is the easiest way to determine whether the project is feasible, easy, or fairly hard?

**1.** How easy is it to get photos of restaurant menus? Many restaurants have their menus on their Google Maps site, either self-uploaded or from a picture taken by a customer.

The thing to test here is whether using an API to get all the images is possible. If it is, then the problem is much easier than if the API is not available since scrapping from Google is probably a tall order.

**2.** Can we know that an image has a menu? If you use Google Maps, you will see that a menu tab on their site often shows pictures of menus. They seem to be already running some machine learning algorithm that classifies an image as having a menu. If we can get those labels and know if something has a menu, we can discard most images, making the problem much more manageable. If we can't, the problem will be more complex and expensive since we must process many additional images.

**3.** Can we extract the menu items from an image? The answer is often yes since OCR technology is pretty advanced, but the question should be tested anyway. How long does it take to use an algorithm to extract all the text from a menu?

**4.** If we do all of the above, we have a text representation of a menu. How hard is it to decide whether vegan options are on the menu? It could be as easy as searching for the word vegan. We can also use an LLM to decide for us.

Note that for 3 and 4, we don't need to have implemented the API: we can manually download an image and test with it independently of steps **1)** and **2)**, maybe using a GUI. That's the power of splitting a problem into small chunks. We can assess the overall difficulty of the situation without actually having to implement it.

Problems will always arise from trying to glue all the parts together, and we should estimate that. Yet, if the core parts of the system can be built, there is hope for a solution!