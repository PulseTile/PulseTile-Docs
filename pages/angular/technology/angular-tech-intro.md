---
title: Technologies Stack
sidebar: angular_sidebar
permalink: angular-tech-intro.html
folder: angular/technology
toc: false
filename: angular-tech-intro.md
---

## PulseTile - Making Technical Choices in the fast world of frontend JS

So one of the most difficult choices to make when crafting a frontend framework is which tools to use.
We have been over this many times and gone for a mix that makes sense for now.
We'll be keeping our eyes open as the trends develop, will React/Angular/Vue/Aurelia/other win the day?
We'll follow them closely and follow the leader from the pack.


## PulseTile uses the following technology stack:

* Angular 1.5
* Redux
* Webpack
* Bower
* CodeCov
* Karma

## Angular

AngularJS is a toolset for building the framework most suited to your application development. It is fully extensible and works well with other libraries. Every feature can be modified or replaced to suit your unique development workflow and feature needs. Read on to find out how.

## Redux

Redux is a predictable state container for JavaScript apps.

It helps you write applications that behave consistently, run in different environments (client, server, and native), and are easy to test. On top of that, it provides a great developer experience, such as live code editing combined with a time traveling debugger.

We use redux module for Angular - https://github.com/angular-redux/ng-redux


## WebPack

WebPack is a module bundler.

Existing module bundlers are not well suited for big projects (big single page applications). The most pressing reason for developing another module bundler was Code Splitting and that static assets should fit seamlessly together through modularization.

I tried to extend existing module bundlers, but it wasn’t possible to achieve all goals.

Goals:
* Split the dependency tree into chunks loaded on demand
* Keep initial loading time low
* Every static asset should be able to be a module
* Ability to integrate 3rd-party libraries as modules
* Ability to customize nearly every part of the module bundler
* Suited for big projects

## Bower

Web sites are made of lots of things — frameworks, libraries, assets, and utilities. Bower manages all these things for you.

Keeping track of all these packages and making sure they are up to date (or set to the specific versions you need) is tricky. Bower to the rescue!

Bower can manage components that contain HTML, CSS, JavaScript, fonts or even image files. Bower doesn’t concatenate or minify code or do anything else - it just installs the right versions of the packages you need and their dependencies.
