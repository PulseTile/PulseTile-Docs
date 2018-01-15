---
title: Initial Q & A session
keywords: Q&A
summary: "Initial Q&A Session"
sidebar: angular_sidebar
permalink: angular-initial-QA.html
folder: angular/technology
filename: angular-Initial-QA.md
---

[//]: # (Question-answer session dated 27.10.2016)

***

**Q: How does webpack work with Angular to modularise the project? (i.e. is it working against the standard Angular modular architecture and adding complexity where it’s not necessary?)**  
**A:** We use export and import directives to manage project modules and they are processed by Webpack to handle different files dependencies. If we were using Gulp, for example, we would have need an additional package like Browserify to achieve the same.  

***

**Q: The readme doesn’t mention Bower, but there is a bower.json. Are we still using the Bower components, and it’s just been missed in the readme?**    
**A:** As we were playing around with different ways of connecting a plugin, Bower was most likely missed out from read.me file. Eventually, there are two active plugins left in Bower now, others are moved to its modules    

***


**Q: If we are building individual components, how to we ensure overall build quality of the project? (e.g. does component 1 work with component 2, and what about when we add component 3)**    
**A:** At this point modules are independent, however, if there is an error in a particular module, it can be a typo or a wrong function usage, resulting build will fail. We should verify that module works with the core application functionality and only after this we notify users in some way that this can be used.  

***

**Q: Will components be versioned outside the core UI components?**    
**A:** As long as the module follows the core styleguide and instructions it can be updated and versioned in the way developer feels it should be  

***
 


**Q: Is using Redux outside of its normal use-case (with Angular rather than React) bending the way it’s used? i.e. are we configuring it to work with Angular, as opposed to allowing it to “do its own thing.”**    
**A:** We agree that using Redux with React in terms of the normal use-case of Redux architecture is a more common practice, but, as this stack (Angular and Redux) was initial choice at the start of the project, we have adapted them to work together.  

***

**Q: To what extent is the build configurable when using webpack over Grunt/Gulp?**      
**A:** As mentioned in point #1 the biggest benefit is the import/export components system  

***

**Q: Does using webpack to import modules allow for the extension/editing of source files? This is important if an organisation wants to use a core module but wishes to change functionality.**    
**A:** Yes, Webpack can build the project– either it is modified or not.  

***
 
**Q: If modules are edited, how are they stored so that local additions to code aren’t overwritten when the project is updated with a new version of the core module?**     
**A:** If the core module is updated significantly, everything that could be overwritten is index files, where the other modules are included. So, if someone is working directly with some module (not core module) the local additions will not be affected. If the core module update will affect the 'includes-containing' files (`index.js`, `index.routes.js`, `actions/index.js` and `redux/reducer.js`), the locally edited modules probably should be re-included into the application.  
