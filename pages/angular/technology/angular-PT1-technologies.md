---
title: Technologies
keywords: Technologies
summary: "Brief rationale behind some of the technology choices"
sidebar: angular_sidebar
permalink: angular-technologies.html
folder: angular/technology
filename: angular-PT1-technologies.md
---

### Redux
**Q: Why was Redux chosen?**   
**A:** 
- An acceptable choice, with equal benefits to Angular's state management system  
- Not really gaining benefits at this stage, but as the system grows it could prove very useful  

***

**Q: What benefits are gained from using Redux**  
**A:** There are a couple of them, and the main ones:  
- Scalability when state becomes complex    
- A robust platform for future development    

***

**Q: Do we know what the driver  to choose Redux? It seems we are tied to that technology now, so although it may be a great fit we are still unclear what drove that decision and whether it was the right one.**  
**A:** It seems the Redux code is clearly delineated from the PulseTile code, meaning that we aren't completely tied to the technology choice if it proves to be more of a hindrance than a benefit.

### WebPack
**Q: Why was webpack chosen?**  
**A:** Why?  
- Useful for a modular architecture, because it has the concept of a dependency tree, unlike Grunt/Gulp  
- Performs better than Grunt (the previous choice of build system)  
- Gets rid of the need for RequireJS and tools like Browserify  

***

**Q: Why is webpack better than using npm or bower to import PulseTile plugins?**  
**A:** Webpack is a build tool and its purpose is to transpile the code (like in case with Babel and ES6) and compile bundles for production usage and it does it really well and fast as it has a clear syntax and good documentation  

***

**Q: Webpack takes care of a lot of configuration for you, which of course makes things easier, but it means that changing configuration may not be as flexible as desired. Could this present problems if configuration becomes more complex?**  
**A:** Related to this point, we discussed whether there are any problems that could be faced from having a complex dependency tree that Webpack may struggle to digest. In our experience, they have never gotten to a point where webpack will struggle in this scenario, even with applications that become much more complex.  

***

**Q: Are there any performance figures that you’ve recorded that show the difference in loading times using webpack?**  
**A:** Webpack performs much faster than Grunt, and is about equal to Gulp, so that is a perfectly reasonable performance gain  

***

**Q: Currently all modules seem to be very standalone, so it looks as though webpack is not being used to its full potential. Is this just part of a step-by-step implementation process, or has it been by design?**  
**A:** Related to this point - we discussed how at present Webpack isn't being used in the standard way to send up module bundles to the client, instead of sending the vendor and PulseTile bundles in two large files. We have already noticed this and are planning to send separate, smaller bundles to the client in this way, which will mean less network traffic and higher performance.  

### Bower
**Q: What are the long term plans for Bower?**  
**A:** Bower will stay, because it serves a very particular purpose. Bower isn't being replaced by npm, and nor should it be. The 3rd party web components that the system needs should be provided by Bower, even if npm can provide them.  

***

**Q: Will all Bower components be removed and replaced by npm modules?**
**A:** We mentioned the dependency tree of imported 3rd part components, and whether the PulseTile UI is importing transient dependencies (dependencies of dependencies), and whether these should be defined within the package.json or bower.json files. SliceArt are keen to analyse the dependency tree to try to determine whether there are any problems that may be encountered by transient dependencies.  
