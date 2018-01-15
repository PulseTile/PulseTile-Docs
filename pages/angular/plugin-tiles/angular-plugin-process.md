---
title: Plugin development brief
keywords: plugins process structure
summary: "Guide to plugins development process"
sidebar: angular_sidebar
toc: false
permalink: angular-plugin-process.html
folder: angular/plugin-tiles
filename: angular-plugin-process.md
---

## Plugin's development:
To get started, copy the core project (https://github.com/PulseTile/PulseTile) for creating your functionality environment.

### We will use next 10 files in our plugin, below explanations of that files:

#### example-list.component.js (Link to test file: [clinicalnotes-list.component.js](https://github.com/PulseTile/PulseTile/blob/develop/src/app/pulsetileui/pages/clinical-notes/clinicalnotes-actions.js))
*It's a list.component functionality file (angular 1.5 component)*
    
```
//Called component's template.
let templateClinicalnotesList = require('./clinicalnotes-list.html');
```
   
```
//Create es6 class with injected services for ClinicalnotesList component.
class ClinicalnotesListController {
constructor($scope, $state, $stateParams, $ngRedux, clinicalnotesActions, serviceRequests, ClinicalnotesModal,     usSpinnerService) {
```
   
```
//Connect to $ngRedux service for catching states.
//Publish states to this.setCurrentPageData functions for detailed analysis

let unsubscribe = $ngRedux.connect(state => ({
  getStoreData: this.setCurrentPageData(state)
}))(this);

$scope.$on('$destroy', unsubscribe);
```
    
```
//Create function for call request's methods.
this.clinicalnotesLoad = clinicalnotesActions.all;
this.clinicalnotesLoad($stateParams.patientId);
```
    
```
// component template and controller initialization start
 const ClinicalnotesListComponent = {
  template: templateClinicalnotesList,
  controller: ClinicalnotesListController
};

//injected services start here
ClinicalnotesListController.$inject = ['$scope', '$state', '$stateParams', '$ngRedux', 'clinicalnotesActions', 'serviceRequests', 'ClinicalnotesModal', 'usSpinnerService'];
export default ClinicalnotesListComponent;
//injected services end here
```

#### example-list.html (Link to test file: [clinicalnotes-list.html](https://github.com/PulseTile/PulseTile/blob/develop/src/app/pulsetileui/pages/clinical-notes/clinicalnotes-list.html))
*It is a HTML template file for the list.component - basically, an HTML template for the page. Pretty self-explanatory if you are familiar with HTML*

#### example-detail.component.js
*It's detail.component functionality file (angular 1.5 component) - used to display a detailed view of particular element, chosen in the left-hand list of items*
```
let templateClinicalnotesDetail = require('./clinicalnotes-detail.html');

class ClinicalnotesDetailController {}
```

#### example-detail.html
*It is a HTML Template file for the detail.component*

#### example-modal.js
*It's modal functionality file (should be added to plugin if the modal window is necessary)*

```
 //Create es6 export functions for Modal module and inject certain services or modules.
 //openModal function called for init/open modal popup in other components.
 //modalInstance instance from $uibModal service (bootstrap). 
  export default function ClinicalnotesModal($uibModal, clinicalnotesActions, $stateParams) {
  var isModalClosed = true;

  var openModal = function (patient, modal, clinicalNote, currentUser) {
    if (isModalClosed) {
      isModalClosed = false;

      var modalInstance = $uibModal.open({
        template: require('./clinicalnotes-modal.html'),
        size: 'lg',
        controller: function ($scope, $state, $uibModalInstance) {}
       });
    };
    return {
        isModalClosed: isModalClosed,
        openModal: openModal
      };
}
ClinicalnotesModal.$inject = ['$uibModal', 'clinicalnotesActions', '$stateParams'];
```

#### example-modal.html
*It is HTML Template file for the modal window (it should be added in the plugin, if a modal window is necessary)*

#### index.route.js (Link to the file: [index.route.js](https://github.com/PulseTile/PulseTile/blob/develop/src/app/index.route.js))
*File with routes for core application*


```
//Create route state for application's pages routing.
//Object views contains parts for current page/state.

.state('clinicalNotes', {
    url: '/patients/{patientId:int}/clinicalNotes?reportType&searchString&queryType',
    views: {
      banner: {template: '<patients-banner-component></patients-banner-component>'},
      actions: {template: '<patients-sidebar-component></patients-sidebar-component>'},
      main: {template: '<clinicalnotes-list-component></clinicalnotes-list-component>'}
    }
})
.state('clinicalNotes-detail', {
    url: '/patients/{patientId:int}/clinicalNotes/{clinicalNoteIndex}?filter&page&reportType&searchString&queryType&source',
    views: {
      banner: {template: '<patients-banner-component></patients-banner-component>'},
      actions: {template: '<patients-sidebar-component></patients-sidebar-component>'},
      main: {template: '<clinicalnotes-list-component></clinicalnotes-list-component>'},
      detail: {template: '<clinicalnotes-detail-component></clinicalnotes-detail-component>'}
    },
    params: { source: '{}' }
})
```

#### example-actions.js (Link to file: [clinicalnotes-actions.js](https://github.com/PulseTile/PulseTile/blob/develop/src/app/pulsetileui/pages/clinical-notes/clinicalnotes-actions.js))
*This file contains actions functions for redux architecture*

```
//ES6 import redux instance and redux actions.
import {bindActionCreators} from 'redux';
import * as types from '../../../constants/ActionTypes';
```

```
//Create es6 export function with request name all.
 export function all(patientId) {
  return {
    types: [types.CLINICALNOTES, types.CLINICALNOTES_SUCCESS, types.CLINICALNOTES_ERROR],

    shouldCallAPI: (state) => !state.contacts.response,
 //Call an API to get a necessary data for clinical notes
    config: {
      method: 'get',
      url: '/api/patients/' + patientId + '/clinicalNotes'
    },

    meta: {
      timestamp: Date.now()
    }
  };
}
```

```
//In the end of file need create export default function which contains requests functions and injected
//$ngRedux service.
export default function clinicalnotesActions($ngRedux) {
  let actionCreator = {
    all, get, create, update
  };

  return bindActionCreators(actionCreator, $ngRedux.dispatch);
}
clinicalnotesActions.$inject = ['$ngRedux'];
```

#### example-reducer-name.js
*It contains reducer functions for redux architecture*

```    
//ES6 import redux actions.
import * as types from '../../../constants/ActionTypes';
```

```
//Creation of INITIAL_STATE object with default parameters for redux states.
const INITIAL_STATE = {
  isFetching: false, //isFetching state
  error: false, //error state
  data: null, //data state
  dataGet: null, //dataGet state  
  dataCreate: null, //dataCreate state  
  dataUpdate: null //dataUpdate state  
};
```

```
//Here we are creating ES6 export default function contacts to watch redux states changes.
export default function contacts(state = INITIAL_STATE, action) {
  const {payload} = action;

  var actions = {
    [types.CLINICALNOTES]: (state) => {
      return Object.assign({}, state, {
        isFetching: true,
        error: false
      });
    }
  }
  return actions[action.type] ?
      actions[action.type](state) :
      state;
}
```

#### ActionTypes.js 
*This file contains actions constants for redux architecture* 

```
//Create name of actions for redux state.
export const CLINICALNOTES = 'CLINICALNOTES';
export const CLINICALNOTES_SUCCESS = 'CLINICALNOTES_SUCCESS';
export const CLINICALNOTES_ERROR = 'CLINICALNOTES_ERROR';

export const CLINICALNOTES_GET = 'CLINICALNOTES_GET';
export const CLINICALNOTES_GET_SUCCESS = 'CLINICALNOTES_GET_SUCCESS';
export const CLINICALNOTES_GET_ERROR = 'CLINICALNOTES_GET_ERROR';

export const CLINICALNOTES_CREATE = 'CLINICALNOTES_CREATE';
export const CLINICALNOTES_CREATE_SUCCESS = 'CLINICALNOTES_CREATE_SUCCESS';
export const CLINICALNOTES_CREATE_ERROR = 'CLINICALNOTES_CREATE_ERROR';

export const CLINICALNOTES_UPDATE = 'CLINICALNOTES_UPDATE';
export const CLINICALNOTES_UPDATE_SUCCESS = 'CLINICALNOTES_UPDATE_SUCCESS';
export const CLINICALNOTES_UPDATE_ERROR = 'CLINICALNOTES_UPDATE_ERROR';
```

Create the github repository for your separate module/plugin.

Run the following command within your command line: npm/bower install moduleName (Module name here stands for github url for external plugin)
`bower i https://github.com/Plugin-for-PulseTile.git`
*We are downloading the module from external repository to root application directory*

To copy files from node_modules/bower_components use: webpack.config.js --> CopyWebpackPlugin, change path in it's options { from: '', to: '' }
*Here we are copying module files from source folder to destination folder*

`npm run copy`
*Running the copy command itself*
