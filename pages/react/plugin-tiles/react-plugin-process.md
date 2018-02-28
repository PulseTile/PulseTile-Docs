---
title: Plugin development brief
keywords: plugins process structure
summary: "Guide to plugins development process"
sidebar: react_sidebar
permalink: react-plugin-process.html
folder: react/plugin-tiles
filename: react-plugin-process.md
---

## Plugin's development:

To get started, copy the core project (https://github.com/PulseTile/PulseTile-React) for creating your functional environment.

### Structure of ExamplePlugins
To create a new heading, you can create a new folder by the following path ```src/components/pages```

To implement a simple heading (e.g. 'ExamplePlugins'), you can use the structure mentioned below.
For example, you can also look at the implementation of the simple heading in the repository PulseTile-React - [GenericPlugin](https://github.com/PulseTile/PulseTile-React/tree/master/src/components/pages/GenericPlugin)

```
src/components/pages
  /ExamplePlugins
    /ducks
      - fetch-example-plugins.duck.js
      - fetch-example-plugins-create.duck.js
      - fetch-example-plugins-detail.duck.js
      - fetch-example-plugins-detail-edit.duck.js

    /ExamplePluginsCreate
       - default-values.config.js
       - ExamplePluginsCreateForm.js

    /ExamplePluginsDetail
      - ExamplePluginsDetail.js
      - ExamplePluginsDetailForm.js

    - ExamplePlugins.js
    - forms.config.js
    - forms.validation.js
    - index.js
    - selectors.js
    - table-columns.config.js
```
Below you can find the information with the description of each file and its role.

#### ExamplePlugins.js
This is the main component of the plugin. It includes all internal components and implements the business logic of your plug-in.

##### Component structure
```
  // to import main packages
  import React, { PureComponent } from 'react';
  import { bindActionCreators } from 'redux';
  import { connect } from 'react-redux';
  import { lifecycle, compose } from 'recompose';

  // to import auxiliary components for the implementation of panels
  import PluginListHeader from '../../plugin-page-component/PluginListHeader';
  import PluginCreate from '../../plugin-page-component/PluginCreate';
  import PluginMainPanel from '../../plugin-page-component/PluginMainPanel';

  // to import internal components
  import ExamplePluginsDetail from './ExamplePluginsDetail/ExamplePluginsDetail';
  import ExamplePluginsCreateForm from './ExamplePluginsCreate/ExamplePluginsCreateForm';

  // to import actions for fetching the requests to server
  import { fetchExamplePluginsRequest } from './ducks/fetch-example-plugins.duck';
  import { fetchExamplePluginsCreateRequest } from './ducks/fetch-example-plugins-create.duck';
  import { fetchExamplePluginsDetailRequest } from './ducks/fetch-example-plugins-detail.duck';
  import { fetchExamplePluginsDetailEditRequest } from './ducks/fetch-example-plugins-detail-edit.duck';

  // to import selectors for retrieving data from the main storage
  import { patientExamplePluginsSelector, patientExamplePluginsDetailSelector, personalNotePanelFormSelector, personalCreateFormStateSelector } from './selectors';

  // to import additional functions for the simple handling of data collections
  import { checkIsValidateForm, operationsOnCollection } from '../../../utils/plugin-helpers.utils';

  // to map dispatch to Properties
  const mapDispatchToProps = dispatch => ({ actions: bindActionCreators({ fetchExamplePluginsRequest, fetchExamplePluginsDetailRequest, fetchExamplePluginsDetailEditRequest, fetchExamplePluginsCreateRequest }, dispatch) });

  // Higher-Order Components (HOC) for getting some data
  @connect(patientExamplePluginsSelector, mapDispatchToProps)
  @connect(patientExamplePluginsDetailSelector, mapDispatchToProps)
  @connect(personalNotePanelFormSelector)
  @connect(personalCreateFormStateSelector)
  // Higher-Order Components (HOC) for realizing call requests in the life cycle of a component
  @compose(lifecycle(fetchExamplePluginsOnMount), lifecycle(fetchExamplePluginsDetailOnMount))
  // React component
  export default class ExamplePlugins extends PureComponent {
    // implementing the functionality of a Component

    // component template
    render() {
      return ()
    }
  }
```

#### ExamplePluginsDetail.js
This component is needed to display more information about one record from the list of incoming records to the main component

##### Component structure
```
  // to import packages
  import React, { PureComponent } from 'react';

  // to import auxiliary components for the implementation of panels
  import PluginDetailPanel from '../../../plugin-page-component/PluginDetailPanel'

  // to import internal components
  import ExamplePluginsDetailForm from './ExamplePluginsDetailForm'

  // React component
  export default class ExamplePluginsDetail extends PureComponent {
    // Implementing the Functional of a Component

    // component template
    render() {
      return ()
    }
  }
```

#### ExamplePluginsDetailForm.js
This component contains a form for editing information about one record from the list of incoming records to the main component

##### Component structure
```
  // to import the main packages
  import React, { PureComponent } from 'react';
  import { Field, reduxForm } from 'redux-form'

  // to import the Fields components
  import ValidatedInput from '../../../form-fields/ValidatedInputFormGroup';
  import ValidatedTextareaFormGroup from '../../../form-fields/ValidatedTextareaFormGroup';
  import DateInput from '../../../form-fields/DateInput';

  // to import the constants containing the names of fields and their labels
  import { valuesNames, valuesLabels } from '../forms.config';

  // to import the function to validate form
  import { validateForm } from '../forms.validation';

  // decorator to connect this component form to Redux
  @reduxForm({
    form: 'examplePluginPanelFormSelector',
    validate: validateForm,
  })
  export default class ExamplePluginsDetailForm extends PureComponent {
  // React component

    // component template
    render() {
      return ()
    }
  }
```

#### ExamplePluginsCreateForm.js
This component contains a form for editing information about one record from the list of incoming records to the main component

##### Component structure
```
  // to import the main packages
  import React, { PureComponent } from 'react';
  import { Field, reduxForm } from 'redux-form'

  // to import the Fields components
  import ValidatedInput from '../../../form-fields/ValidatedInputFormGroup';
  import ValidatedTextareaFormGroup from '../../../form-fields/ValidatedTextareaFormGroup';
  import DateInput from '../../../form-fields/DateInput';

  // to import the constants containing the names of fields and their labels
  import { valuesNames, valuesLabels } from '../forms.config';

  // to import the function for validate of form
  import { validateForm } from '../forms.validation';

  // to import of object contains default values of fields
  import { defaultFormValues } from './default-values.config';

  // decorator to connect its form component to Redux
  @reduxForm({
    form: 'examplePluginCreateFormSelector',
    validate: validateForm,
  })
  export default class ExamplePluginsCreateForm extends PureComponent {
  // React component

    // component template
    render() {
      return ()
    }
  }
```

#### default-values.config.js
It's just an object containing the default values of the fields for pre-populating before editing the fields by users.
It is used in component ExamplePluginsCreateForm

##### File structure
```
  export const defaultFormValues = {
    key: value,
  };
```

#### forms.config.js
This file contains 2 basic configuration objects for working with the fields in forms and for displaying detailed information about the record.
You can also add additional configuration objects here to use it in forms

##### File structure
```
  export const valuesNames = {
    NAME_OF_FIELD: 'name',
  };

  export const valuesLabels = {
    NAME_OF_FIELD: 'label',
  };
```

#### forms.validation.js
This file exports a function for form validation.
The parameter of the function is an object containing form fields with values.
The function must return an error object, where the key is the field name, the value is the error text.
If the field does not pass the validation it must be included in the resulting object error.

##### File structure
```
  const validateForm = (values) => {
    const errors = {};

    errors[valuesNames.NAME_OF_FIELD] = !values[valuesNames.NAME_OF_FIELD] ? 'Error text' : null;

    return errors;
  };

  export { validateForm }
```

#### table-columns.config.js
This file contains 2 configuration objects for configuring the main record table.

##### File structure
```
  // The object contains the setting of possible columns in the table
  // transformer - it is a function, which is called before the displaying of the field and is necessary for the modification of the field itself
  export const columnsConfig = [
    { key: 'nameOfField', title: 'Title of Field', transformer: transformerFunction, width: '30%' },
    { key: 'sourceId', title: 'SourceID', display: 'none' },
  ];

  // The object allows you to enable or disable columns in a table
  export const defaultColumnsSelected = {
    type: true,
    sourceId: true,
  };
```
#### Ducks
  - fetch-example-plugins.duck.js
  - fetch-example-plugins-create.duck.js
  - fetch-example-plugins-detail.duck.js
  - fetch-example-plugins-detail-edit.duck.js

Each of these files contains all of its related constants, actions/action creators, epic, and its reducer for work with requests to server

##### File structure
```
  // to import packages
  import { Observable } from 'rxjs';
  import { ajax } from 'rxjs/observable/dom/ajax';
  import { createAction } from 'redux-actions';

  // Actions names
  export const FETCH_EXAMPLE_PLUGINS_CREATE_REQUEST = 'FETCH_EXAMPLE_PLUGINS_CREATE_REQUEST';
  export const FETCH_EXAMPLE_PLUGINS_CREATE_SUCCESS = 'FETCH_EXAMPLE_PLUGINS_CREATE_SUCCESS';
  export const FETCH_EXAMPLE_PLUGINS_CREATE_FAILURE = 'FETCH_EXAMPLE_PLUGINS_CREATE_FAILURE';

  // Actions
  export const fetchExamplePluginsCreateRequest = createAction(FETCH_EXAMPLE_PLUGINS_CREATE_REQUEST);
  export const fetchExamplePluginsCreateSuccess = createAction(FETCH_EXAMPLE_PLUGINS_CREATE_SUCCESS);
  export const fetchExamplePluginsCreateFailure = createAction(FETCH_EXAMPLE_PLUGINS_CREATE_FAILURE);

  // Epics for async actions
  export const fetchExamplePluginsCreateEpic = (action$, store) => {};

  // reducer
  export default function reducer(patientExamplePluginsCreate = {}, action) {
    switch (action.type) {
      case FETCH_EXAMPLE_PLUGINS_CREATE_SUCCESS:
        return action.payload;
      default:
        return patientExamplePluginsCreate
    }
  }
```

#### selectors.js
This file exports the object of selectors.
Selector - this is a function that extracts the necessary data from a centralized store.

##### File structure
```
  // to import packages
  import { createSelector } from 'reselect';
  import _ from 'lodash/fp';

  const patientExamplePluginsSelector = createSelector(
    ({ patientsExamplePlugins }) => patientsExamplePlugins,
    (state, props) => _.getOr(null, 'match.params.userId', props),
    (patientsExamplePlugins, userId) => {
      const allExamplePlugins = patientsExamplePlugins[userId];
      return ({ allExamplePlugins, userId });
    }
  );

  export {
  	patientExamplePluginsSelector,
  }
```

#### index.js
This is the main file of the new heading, which exports all the resources of this plugin to the application core and configuration objects.

```
  // to import all resources
  import { combineEpics } from 'redux-observable';

  import ExamplePlugins from './ExamplePlugins';
  import { clientUrls } from '../../../config/client-urls.constants';

  import { fetchExamplePluginsEpic } from './ducks/fetch-example-plugins.duck';
  import { fetchExamplePluginsUpdateEpic } from './ducks/fetch-example-plugins.duck';
  import { fetchExamplePluginsDetailEpic } from './ducks/fetch-example-plugins-detail.duck';
  import { fetchExamplePluginsDetailEditEpic } from './ducks/fetch-example-plugins-detail-edit.duck';
  import { fetchExamplePluginsCreateEpic } from './ducks/fetch-example-plugins-create.duck';

  import patientsExamplePlugins from './ducks/fetch-example-plugins.duck';
  import examplePluginsDetail from './ducks/fetch-example-plugins-detail.duck';
  import examplePluginsDetailEdit from './ducks/fetch-example-plugins-detail-edit.duck';
  import examplePluginsCreate from './ducks/fetch-example-plugins-create.duck';

  const epics = combineEpics(fetchExamplePluginsEpic, fetchExamplePluginsDetailEpic, fetchExamplePluginsDetailEditEpic, fetchExamplePluginsCreateEpic, fetchExamplePluginsUpdateEpic);

  const reducers = {
    patientsExamplePlugins,
    examplePluginsDetail,
    examplePluginsDetailEdit,
    examplePluginsCreate,
  };

  const sidebarConfig = { key: 'examplePlugins', pathToTransition: '/examplePlugins', name: 'Example Plugins', isVisible: true };

  const routers = [
    { key: 'examplePlugins', component: ExamplePlugins, path: `${clientUrls.PATIENTS}/:userId/${clientUrls.EXAMPLE_PLUGINS}` },
    { key: 'examplePluginsCreate', component: ExamplePlugins, path: `${clientUrls.PATIENTS}/:userId/${clientUrls.EXAMPLE_PLUGINS}/create` },
    { key: 'examplePluginsDetail', component: ExamplePlugins, path: `${clientUrls.PATIENTS}/:userId/${clientUrls.EXAMPLE_PLUGINS}/:sourceId` },
  ];

  export default {
    component: ExamplePlugins,
    epics, reducers, sidebarConfig, routers,
  }
```

### Steps how to connect the Plugin to the apps core

#### 1. Connection index.js
1. Go to ```src/plugins.config.js```
2. Make the import of your index.js into object
3. Add your object to plugins Array

##### Example code
```
  ...
  import examplePlugins from './components/pages/ExamplePlugins/index';

  export const plugins = [
    ...
    examplePlugins,
  ];
  ...
```

#### 2. Configuration of breadcrumbs
1. Go to ```src/configs/client-urls.constants.js```
2. Create new constant into clientUrls object
3. Add your configuration of breadcrumbs to pluginsPages object

##### Example code
```
  ...
  export const clientUrls = {
    ...
    EXAMPLE_PLUGINS: 'examplePlugins',
  };

  const pluginsPages = {
    ...
    'examplePlugins': {
      breadcrumbs: [{
        title: 'Example Plugins',
        state: '/examplePlugins',
      }],
    },
    ...
  };
  ...
```

#### 3. Generating a component subscription to requests from the server
1. Please, go to ```src/utils/HOCs/fetch-patients.utils.js```
2. Create a new Higher-Order Component (HOC) for realizing call requests in the life cycle of a component.

##### Example code
```
  ...
  export const fetchExamplePluginsOnMount = (generateFetchListOnMount('fetchExamplePluginsRequest'));
  export const fetchExamplePluginsDetailOnMount = (generateFetchDetailOnMount('fetchExamplePluginsDetailRequest'));
  ...
```
