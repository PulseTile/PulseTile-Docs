---
title: Plugins
keywords: plugins
summary: "Approach being taken with Plugins"
sidebar: react_sidebar
permalink: react-pluginsQA.html
folder: react/plugin-tiles
filename: react-pluginsQA.md
---

### Contract  
**Q: What is a plugin expected to provide?**   
**A:** The plugins expected will fall into 3 main categories:  
- Single Patient View (SPV)  
- Multi-Patient View (MPV)  
- Charts  

There are no specifications for other, more complex plugins that could be created, except to follow the Ripple UI style guide.    

***

**Q: What does a plugin expect the core code to provide for it (if anything)? E.g. UserService**        
**A:** All of the basic frontend functionality and API access that will serve as a data source for plugin to work with.     

***

**Q: How will versioning work if a plugin relies on core functionality, such as the UserService?**   
**A:** t seems that right now, versioning isn't a main concern. However, thought should be given to how to:  
- Update a local version of a plugin to a new version (is the plugin code separate from localisations)  
- Store a plugin version (separate GitHub repo for v1, v2, etc)  
- How to handle breaking changes for adopters of the plugin who want the latest minor version (e.g. update from v1.2.3 to v1.3.0)  

***

**Q: What are the guidelines for the scope of what a plugin can achieve? For example, must they follow the core guideline of list view and details view? Are they allowed to interfere with any code relating to the core UI (e.g. sidebar or header bar)?**  
**A:** Plugins should follow the guidelines for list and details views in order to keep every developed module with the same structure. If it's a simple module (like Allergies) – no, but if it's more complex (global) module it definitely can affect the core UI  

### Loading
_This relates to exactly how a plugin is taken from an external repository and actually plugged into the system. Anything from the current architecture of a plugin, to how they are loaded, to how they can be extended should be discussed here._  

**Q: It looks as though there are placeholders for plugins which do not have any functionality in core, for example Transfer of Care has a sidebar location even when the plugin hasn’t been loaded, so it doesn’t work until the plugin is imported. Is this the intended extension mechanism - i.e. a placeholder in the sidebar that can be plugged into as opposed to a more dynamic solution where plugins are discovered?**  
**A:** This does provide a technical challenge, and it's uncertain how this will be achieved.  

What's clear is that we shouldn't be introducing another "home made" utility that becomes another aspect of the solution that requires support, so long as there is a useful alternative already available.    

***

**Q: How are the localisations stored?**   
**A:** This comes back to the "separation of concerns" point raised in the contracts section. If a plugin functionality is separate from localisations, then updates of a plugin become easier, and wouldn't require deleting/moving edits to a module to the newly copied version. Perhaps more thought is required here to determine how much of a hindrance it would be to have this separation.  

***

**Q:  Is a plugin downloaded in raw form and changed locally to fit the local system, and then committed in its entirety? If so, it is a manual effort to upgrade a plugin to a new version.**     
**A:** At the moment we are importing the plugins from the plugins GitHub repository. This is fine for now, but we should be moving towards a centralized store of versioned plugins you can import a particular historic version/revision of a plugin that has been lost in the GitHub commit history. This is covered further in the Build section.  

### Build
_This part of the discussion is based on questions regarding the build of the UI. This is separate from a local build using npm start or npm run build. Instead, this relates to automated build processes and being able to ensure the build quality._  

**Q: How will the project be tested to ensure that plugins work with the core code? For example, how can we ensure that Component A works with Core UI, and also how could we ensure that Component B works with Component A?**     
**A:** Adding a good deal of unit tests will help to alleviate this concern. However, it will be difficult to automate the importing of plugins and testing how they interact with the core UI. A possible workaround is to have a big Ripple-based child project with all the plugins imported, allowing for automated tools to carry out rigorous testing of the whole suite of components.     

***

**Q: How can this testing be transferred to an automated build system? For example, how can a system like Bamboo determine that plugins work with the core UI codebase? This is related to concepts of versioning and expected contracts between plugins and core.**   
**A:** Excellent. We currently use Bamboo, so we'd like to be able to make use of that system. This is so that we can keep all the build statistics in one place, and not have separate environments trying to achieve the same thing but in different places.  

### Release
_Here we shall discuss the publishing of developed plugins. We should be discussing topics such as where to store the built version of a Ripple plugin, how it should be built, and the management of it._  

**Q: What is the plan for publishing plugins?**   
**A:** The SliceArt team and Tony are to discuss this further in order to try to come up with a useful way to publish artifacts to a centralised repository.  

***

**Q: Where will they be stored?**  
**A:** Unclear at the moment, but the conversation has begun.  

***

**Q: How will versioning of the code and published plugin(s) be managed?**    
**A:** First of all, we should verify that module works with the core application functionality and only after this we notify users in some way that this can be used.  

***

**Q: How will versions of plugins align with the version of the core UI?**  
**A:** If the core module is updated significantly, everything that could be overwritten is index files, where the other modules are included. So, if someone is working directly with some module (not core module)  the local additions will not be affected. If the core module update will affect the 'includes-containing' files (`plugins.config.js`), the locally edited modules probably should be re-included into the application.

### Configuration
_This relates to external configuration of a plugin. This configuration may come in the form of parameters that can be read from an external file which relate to functionality of the plugin itself. For instance, a core plugin may be generic enough to work for all instances of the UI, but may require some configuration so that each instance can have the functionality vary slightly to suit their needs._  

**Q: Is configuration of components possible? For example, configuration of behaviour of a component, such as the header search bar.**    
**A:** It was discussed that configuration of components should be only for display purposes and the like, for example the patient dashboard and the header tables that are displayed.  
Core functionality shouldn't be configurable in the way that is described here. If an organisation doesn't like functionality, they can change it themselves, meaning that Ripple is not responsible for those changes or coming up with these types of configuration options for others to use.  

***

**Q: If not currently possible, how could this be achieved?**  
**A:** We can store settings for plugins In a separate file, for example `pluginname.conf` where we describe the settings for particular module  
