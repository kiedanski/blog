---
date: 2022-04-01
title: Takeaways from MLConf 22’
tags: machine learning
---

# Introduction

I had the pleasure to attend the Machine Learning Conference (ML Conf) in person this year, in beautiful New York.

The conference was a great opportunity to learn from AI practitioners about how they are using ML, what challenges they face, and where they see that most opportunities are.

The event had a very diverse set of speakers ranging from finance to drug discovery, from fashion to pure mathematical modeling.

In an exercise of extreme summarization, these are my main takeaways from the conference.

# Summary

## ML Ops

- MLOps including deployment, monitoring, and service orchestration are essential components of any serious application that relies on ML models. A very good example of this was provided by [Yin Aphinyanaphongs](https://mlconf.com/speakers/yin-aphinyanaphongs/) from [NYC Langone Health](https://nyulangone.org/): their COVID-19 model to predict patient's health evolution had to be re-evaluated for each new variant and when patients became vaccinated.
- If you want to do model monitoring, you should check out [Evidently AI](https://evidentlyai.com/).
- Local regulations can affect how a model processes and shares data. Keeping track of where models are deployed and the regulations by which they should abide adds an extra layer of complexity to the deployment of ML systems.

## Healthcare

> How many of us can access our bank statements from our phones? How about our medical records?
>
- The healthcare industry is ripe for digital disruption, particularly using ML. The wide adoption of fitness wearables (Fitbit, Apple Watch, etc) and the increase in telemedicine (due to the COVID pandemic) will facilitate the transition.
- In spite of the point above, it is not clear that innovative applications such as predicting diseases or suggesting treatments from wearable measurements will (should (?)) be the leading digitalization effort. We still need to solve problems such as: do we trust the daily measurements produced by my Apple Watch if they differ considerably from the measurement taken 3 months ago by my physician?
- There are opportunities to improve the efficiency of the healthcare system in "less fancy" ways, but that could result in an improved experience for patients and a massive reduction of costs for hospitals and insurance companies. **As in every AI journey, it pays to start with the low-hanging fruits.**

## NLP

- Having the ability to fine-tune language models for different applications and the appearance of zero-shot models has greatly increased the usage of NLP in industry applications.
- Even though modern NLP models are quite powerful, the journey from tinkering to production can span several months!
- Many applications that benefit from NLP are not necessarily stand-alone model deployments. Instead, interleaving NLP layers with rule-based systems or other machine learning models can improve stability (from small variations in text), but also flexibility (by accepting text instead of fixed inputs).

## Extras

- If you need to train a model with a very large dataset stored in a database, you might benefit from [Activeloop](https://www.activeloop.ai/).
