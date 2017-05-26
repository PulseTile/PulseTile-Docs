---
title: Technologies Stack
sidebar: technologies_sidebar
permalink: tech_intro.html
folder: technologies
toc: false
---

## PulseTile uses the following technology stack:

* Angular 1.5
* Redux
* Bower
* Webpack
* CodeCov
* Karma

## Redux

Redux is a predictable state container for JavaScript apps.

It helps you write applications that behave consistently, run in different environments (client, server, and native), and are easy to test. On top of that, it provides a great developer experience, such as live code editing combined with a time traveling debugger.

We use redux module for Angular - https://github.com/angular-redux/ng-redux

## Angular

AngularJS is a toolset for building the framework most suited to your application development. It is fully extensible and works well with other libraries. Every feature can be modified or replaced to suit your unique development workflow and feature needs. Read on to find out how.

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
