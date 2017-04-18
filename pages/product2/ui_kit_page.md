---
title: Core UI
keywords: mydoc
sidebar: home_sidebar
toc: false
permalink: ui_kit_page.html
folder: product2
---

This section contains description for UI elements.

## Button with drop-down selector
{% include image.html file="ui-kit/drop-down.png" alt="drop-down selector" caption="" %}
```
    <div uib-dropdown="" class="control-group left control-search-select dropdown">
      <button uib-dropdown-toggle="" class="btn btn-success btn-inverse btn-dropdown-toggle btn-search-toggle dropdown-toggle" ng-click="$ctrl.closeSearchOptions()" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bars"></i></button>
      <div uib-dropdown-menu="" class="dropdown-menu dm-panel dm-left dm-tables dm-search-select">
        <div class="heading">Search Options</div>
        <div class="dm-wrap-list">
          <div class="dm-list">
                <div class="dm-item" ng-repeat="item in searchOptionsList" ng-click="$ctrl.openAdvancedSearch($index)"><span>{{item.name}}</span></div>
          </div>
        </div>
      </div>
    </div>
```

## Input field
{% include image.html file="ui-kit/input_field.png" alt="drop-down selector" caption="" %}
```
    <input key-bind="" class="form-control ng-pristine ng-untouched ng-valid ng-empty" placeholder="Search" type="text">
```

## Button with icon
{% include image.html file="ui-kit/button_with_icon.png" alt="drop-down selector" caption="" %}
```
   <button ng-show="!searchActive &amp;&amp; !isOpenSearch" class="btn btn-success btn-search" ng-click="$ctrl.searchFunction();"><i class="fa fa-search"></i></button>
```

## Back button, Logo icon, Logo text
{% include image.html file="ui-kit/logo.png" alt="drop-down selector" caption="" %}
```
    <a ng-click="$ctrl.goBack()" class="btn-header btn-header-prev ng-scope" ng-if="isShowPreviousBtn"><i class="fa fa-arrow-left"></i></a>
    <div class="wrap-logo">
      <div class="logo">
        <div class="logo-icon">
          <a ng-click="$ctrl.goChart()">
            <span class="img"></span>
          </a>
        </div>
        <div class="logo-text">
          <a ng-click="$ctrl.goPatientList()">
            <span class="ng-binding">IDCR</span> <span class="logo-mobile-hidden"></span>
          </a>
        </div>
      </div>
    </div>
```

## Heading bar
{% include image.html file="ui-kit/heading_bar.png" alt="drop-down selector" caption="" %}
```
    <div class="header-title ng-binding">Patients Lists</div>
```

## Breadcrumbs
{% include image.html file="ui-kit/breadcrumbs.png" alt="drop-down selector" caption="" %}
```
    <div class="breadcrumbs"></div>
```

## Information / settings bar
{% include image.html file="ui-kit/settings_bar.png" alt="drop-down selector" caption="" %}
```
    <h3 class="panel-title">
          Patient Info
    </h3>
```

## Patient list single entity
{% include image.html file="ui-kit/patient_list.png" alt="drop-down selector" caption="" %}
```
    <table class="table table-striped table-bordered rwd-table table-sorted table-hover table-fixedcol table-patients-full">
        <thead>
          <tr>
              <th></th>
              <th>&nbsp;</th>
          </tr>
        </thead>

        <tbody>
          <tr dir-paginate="">
              <td></td>
          </tr>

          <tr ng-if="!$ctrl.patients.length">
              <td colspan="6"><span class="label label-default">No patients found</span></td>
          </tr>
        </tbody>
  </table>
```

## Agreement popup
{% include image.html file="ui-kit/agreement_popup.png" alt="drop-down selector" caption="" %}
```
    <div class="panel panel-secondary without-margin">
        <div class="panel-heading">
          <h3 class="panel-title">Patient Access Disclaimer</h3>
        </div>

        <div class="panel-body">
          <div class="panel-body-inner">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec lobortis elit. Aenean mi nunc, feugiat ut aliquet non, iaculis vel tellus. Donec semper felis placerat, posuere nisi a, suscipit turpis. Integer sit amet lacus pellentesque, vestibulum libero id, sagittis nisi. Phasellus eleifend, neque eget vulputate semper, enim dui dictum neque, non iaculis felis augue at nunc.
          </div>
          <div class="panel-control">
            <div class="wrap-control-group hide-indent-bottom">
              <div class="control-group with-indent right">
                <button class="btn btn-danger btn-icon-normal" ng-click="cancel()"><i class="fa fa-ban"></i> <span>Decline</span></button>
                <button class="btn btn-success" ng-click="ok()"><span>Agree</span></button>
              </div>
            </div>
          </div>
        </div>
  </div>
```

## Patient banner
{% include image.html file="ui-kit/patient_banner.png" alt="drop-down selector" caption="" %}
```
   <div class="header-toolbar">
       <div class="wrap-patient-info" ng-class="mobileShowInfo">
         <div class="patient-info-caption">
           <div class="patient-info-caption-btn btn-dropdown-toggle" ng-click="$ctrl.showInfo()"></div>
           <div class="patient-info-caption-text text-truncate ng-binding">Avram Miller</div>
         </div>
         <div class="patient-info">
           <div class="patient-info-group-2">
             <div class="column-1">
               <div class="patient-info-item ng-binding"><span class="key">D.O.B.</span> 25-Jan-1974</div>
               <div class="patient-info-item ng-binding"><span class="key">Phone:</span> 0845 46 47</div>
             </div>
             <div class="column-2">
               <div class="patient-info-item ng-binding"><span class="key">Gender:</span> Female</div>
               <div class="patient-info-item"><span class="key">NHS No.</span> <span ng-bind="$ctrl.patient.nhsNumber | formatNHSNumber" class="ng-binding">999 999 9050</span></div>
             </div>
           </div>
           <div class="patient-info-group-1">
             <div class="patient-info-item significant hidden-xs ng-binding">Avram Miller</div>
             <div class="patient-info-item ng-binding"><span class="key">Doctor:</span> Hawkins Sonya T.</div>
           </div>
           <div class="patient-info-item ng-binding"><span class="key">Address:</span> Port Glasgow Practice, 4872 Cubilia St., Port Glasgow, Renfrewshire, TQ3J 4JG</div>
         </div>
       </div></patients-banner-component></div>
   </div>
```

## Left-hand menu button / heading list
{% include image.html file="ui-kit/menu.png" alt="drop-down selector" caption="" %}
```
    <ul class="nav">
      <li class="navigation-menu" ng-repeat="link in $ctrl.linksCollection">
        <a ng-click="$ctrl.goTo(link.link)" ng-class="{active: isActiveItem(link.link)}">{{link.title}}</a>
      </li>
    </ul>
```

## Patient banner single block
{% include image.html file="ui-kit/single_block.png" alt="drop-down selector" caption="" %}
```
    <div class="board">
          <div class="board-header">
            <div class="control-group right">
              <button class="btn btn-success btn-inverse btn-board-more" ng-click="$ctrl.goToSection(dashboard.toState)"><i class="fa fa-caret-right"></i></button>
            </div>
            <h3 class="board-title ng-binding">Problems</h3>
          </div>
          <div class="board-body">
            <ul class="board-list">
               <li></li>
            </ul>
          </div>
    </div>
```

## Heading table node
{% include image.html file="ui-kit/table_node.png" alt="drop-down selector" caption="" %}
```
    <table class="table table-striped table-hover table-bordered rwd-table table-sorted table-fixedcol">
          <thead>
            <tr>
                <th>Name</th>
            </tr>
          </thead>
          <tbody>
            <tr></tr>
            <tr ng-if="!$ctrl.medications.length" class="ng-scope">
                <td colspan="4"><span class="label label-default">No medications</span></td>
            </tr>
          </tbody>
    </table>
```

## Heading table header / filter / settings
{% include image.html file="ui-kit/table_header.png" alt="drop-down selector" caption="" %}
```
    <div class="panel-heading">
        <div class="control-group right">
          <button class="btn btn-success btn-inverse btn-filter" ng-click="toggleFilter()"><i class="fa fa-filter"></i></button>
        </div>
        <h3 class="panel-title">All Medications</h3>
        <div class="panel-filter ng-hide" ng-show="isFilterOpen">
          <div class="inner-addon addon-left">
            <div class="addon">
              <i class="fa fa-filter"></i>
            </div>
            <input type="text" id="filter" class="form-control ng-pristine ng-untouched ng-valid ng-empty" placeholder="Filter..." ng-model="queryFilter">
          </div>
        </div>
    </div>
```

## Details heading
{% include image.html file="ui-kit/details_heading.png" alt="drop-down selector" caption="" %}
```
    <div class="panel-heading">
        <div class="control-group right">
          <button class="btn btn-success btn-inverse btn-filter" ng-click="toggleFilter()"><i class="fa fa-filter"></i></button>
        </div>
        <h3 class="panel-title">All Medications</h3>
        <div class="panel-filter ng-hide" ng-show="isFilterOpen">
          <div class="inner-addon addon-left">
            <div class="addon">
              <i class="fa fa-filter"></i>
            </div>
            <input type="text" id="filter" class="form-control ng-pristine ng-untouched ng-valid ng-empty" placeholder="Filter..." ng-model="queryFilter">
          </div>
        </div>
    </div>
```

## Details single instance
{% include image.html file="ui-kit/details_single_instance.png" alt="drop-down selector" caption="" %}
```
    <div class="form-group">
        <label class="control-label">Problem / Diagnosis</label>
        <div class="form-control-static ng-binding">2E2</div>
    </div>
```

## Pagination / Create button
{% include image.html file="ui-kit/pagination.png" alt="drop-down selector" caption="" %}
```
    <div class="panel-control">
      <div class="wrap-control-group">
        <div class="control-group with-indent left">
          <dir-pagination-controls max-size="6" on-page-change="pageChangeHandler(newPageNumber)" boundary-links="false"></dir-pagination-controls>
        </div>
        <div class="control-group with-indent right" ng-if="$ctrl.currentUser.permissions.indexOf('WRITE') !== -1 && $ctrl.isShowCreateBtn">
          <button class="btn btn-success btn-inverse btn-create" ng-click="$ctrl.create();"><i class="fa fa-plus"></i> <span>Create</span></button>
        </div>
      </div>
    </div>
```

## Creation dialogue input
{% include image.html file="ui-kit/creation_dialogue_input.png" alt="drop-down selector" caption="" %}
```
    <div class="form-group">
      <label for="text" class="control-label">Problem / Diagnosis</label>
      <div class="input-holder">
        <input type="text" class="form-control input-sm ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" id="problem" name="problem" ng-model="diagnosis.problem" required="">
      </div>
      <span class="help-block animate-fade ng-hide" ng-show="formSubmitted &amp;&amp; diagnosisForm.problem.$error.required">You must enter a value.</span>
    </div>
```

## Non-editable creation input field
{% include image.html file="ui-kit/author_input.png" alt="drop-down selector" caption="" %}
```
    <div class="form-group">
      <label for="author" class="control-label">Author</label>
      <div class="input-holder">
        <input type="text" value="bob.smith@gmail.com" placeholder="bob.smith@gmail.com" class="form-control input-sm ng-pristine ng-untouched ng-valid ng-not-empty" id="author" name="author" ng-model="diagnosis.author" disabled="">
      </div>
      <span class="help-block animate-fade ng-hide" ng-show="formSubmitted &amp;&amp; diagnosisForm.author.$error.required">You must enter a value.</span>
    </div>
```

## Cancel / Complete buttons
{% include image.html file="ui-kit/complete_buttons.png" alt="drop-down selector" caption="" %}
```
    <div class="panel-control">
        <div class="wrap-control-group hide-indent-bottom">
          <div class="control-group with-indent right">
            <button class="btn btn-danger" ng-click="$ctrl.cancel()"><i class="fa fa-ban"></i> Cancel</button>
            <button class="btn btn-success" ng-click="create(diagnosisForm, diagnosis)"><i class="fa fa-check"></i> Complete</button>
          </div>
        </div>
    </div>
```

## Edit button
{% include image.html file="ui-kit/edit_button.png" alt="drop-down selector" caption="" %}
```
    <div class="panel-control ng-scope" ng-if="diagnosis.source !== 'vista'">
        <div class="wrap-control-group">
          <div class="control-group right">
            <button class="btn btn-success btn-inverse btn-edit" ng-click="$ctrl.edit();"><i class="fa fa-edit"></i> Edit</button>
          </div>
        </div>
    </div>
```

## Image details
{% include image.html file="ui-kit/image_details.png" alt="drop-down selector" caption="" %}
```
    <div class="panel-body">
      <div class="panel-body-inner">
        <div class="form">
          <div class="form-group-wrapper">
              <div class="form-control-static">
                <cornerstone-image imageid="http://138.68.134.7:8086/instances/ecd967b0-aaec17a2-860b3925-91d8ef8b-1932d1c7/preview" class="ng-isolate-scope"><div id="dicomImage" oncontextmenu="return false" unselectable="on" onselectstart="return false;" onmousedown="return false;" style="width: 100%; height: 512px; margin: auto"><canvas width="464" height="512" style="width: 464px; height: 512px;"></canvas></div></cornerstone-image>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="panel-control">
        <div class="control-group center">
          <button id="play" type="button" class="btn btn-inverse btn-success btn-none-border"><i class="fa fa-play"></i></button>
          <button id="stop" type="button" class="btn btn-inverse btn-success btn-none-border"><i class="fa fa-stop"></i></button>
          <div class="control-separate"></div>
          <button id="zoomIn" type="button" class="btn btn-inverse btn-success btn-none-border" ng-click="zoomOut()"><i class="fa fa-search-minus"></i></button>
          <button id="zoomOut" type="button" class="btn btn-inverse btn-success btn-none-border" ng-click="zoomIn()"><i class="fa fa-search-plus"></i></button>
          <div class="control-separate"></div>
          <button id="arrows" type="button" class="btn btn-inverse btn-success btn-none-border"><i class="fa fa-arrows"></i></button>
          <button id="verticalArrows" type="button" class="btn btn-inverse btn-success btn-none-border"><i class="fa fa-arrows-v"></i></button>
        </div>
      </div>
    </div>
```

## Document import field
{% include image.html file="ui-kit/document_import.png" alt="drop-down selector" caption="" %}
```
    <div class="fgs-control">
        <div class="wrap-control-group">
            <div class="control-group right">
                <button class="btn btn-primary" ng-click="importToCreate('diagnoses', $ctrl.clinicalDocument.diagnosisList[0])"><span>Import Data</span></button>
            </div>
        </div>
    </div>
```

## Vitals details
{% include image.html file="ui-kit/vitals-details.png" alt="drop-down selector" caption="" %}
```
    <div class="row">
      <div class="col-xs-12 col-md-6">
        <div class="vitals-group highlighter-wrapper">
          <span ng-class="getHighlighterClass('respirationRate')"></span>
          <label class="vitals-label">Respiration Rate</label>
          <div class="input-group vitals-holder popover-wrap" ng-class="vitalStatuses.respirationRate.type">
            <div class="form-control input-sm">{{vital.respirationRate}}</div>
            <span class="vitals-addon popover-toggle" ng-click="togglePopover($event)">resps/min</span>
            <mc-popover-vital title="Respiration Rate" labels="{{popoverLabels.respirationRate}}"></mc-popover-vital>
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-md-6">
        <div class="vitals-group highlighter-wrapper">
          <span ng-class="getHighlighterClass('oxygenSaturation')"></span>
          <label class="vitals-label">Oxygen Saturation</label>
          <div class="input-group vitals-holder popover-wrap" ng-class="vitalStatuses.oxygenSaturation.type">
            <div class="form-control input-sm">{{vital.oxygenSaturation}}</div>
            <span class="vitals-addon popover-toggle" ng-click="togglePopover($event)">%</span>
            <mc-popover-vital title="Oxygen Saturation" labels="{{popoverLabels.oxygenSaturation}}"></mc-popover-vital>
          </div>
        </div>
      </div>
    </div>
```

## Vitals tooltip
{% include image.html file="ui-kit/vitals_tooltip.png" alt="drop-down selector" caption="" %}
```
    <div class="popover-inner">
        <h3 class="popover-title ng-binding">Respiration Rate</h3>
        <div class="popover-content">
          <div class="range-vital-labels">
            <img src="data:image/jpeg;base64 />
          </div>
        </div>
    </div>
```

## Clinical Statements Tag
{% include image.html file="ui-kit/statements_tag.png" alt="drop-down selector" caption="" %}
```
    <span class="label label-success ng-binding ng-scope" ng-repeat="(key, val) in $ctrl.clinicalStatement.tags track by $index">chestpain</span>
```

## Clinical Statement creation popup
{% include image.html file="ui-kit/statement_creation_popup.png" alt="drop-down selector" caption="" %}
```
    <div class="dropdown-menu dm-panel dm-statements dm-small dm-top-left ng-scope" ng-if="!statements.length">
        <div class="heading wrap-overflow">
          <div class="pagination-heading">Tags</div>
        </div>
        <div class="dm-wrap-list">
          <div class="dm-list">
            <div class="dm-item ng-scope"><span class="ng-binding">acutesob</span></div>
          </div>
        </div>
    </div>
```

## Patient Advanced Search popup
{% include image.html file="ui-kit/patient_advanced_search.png" alt="drop-down selector" caption="" %}
```
    <div mc-datepicker="" class="panel panel-secondary without-margin">
      <div class="panel-heading">
        <div class="control-group right">
          <button class="btn btn-success btn-inverse btn-square btn-toggle-rotate" ng-click="cancel()"><i class="fa fa-chevron-up"></i></button>
        </div>
        <h3 class="panel-title">
          <span class="ng-binding">Patient Search - Advanced:</span>
          <!-- ngIf: searchParams.nhsNumber -->
        </h3>
      </div>
      <div class="panel-body">
        <div class="panel-body-inner">
          <form name="advancedSearchForm" class="form ng-pristine ng-invalid ng-invalid-required">
            <div class="form-group-wrapper">
                <div class="row">
                    <!-- ngIf: $ctrl.option.type === 'advanced' --><div class="col-xs-12 col-sm-6 ng-scope" ng-if="$ctrl.option.type === 'advanced'">
                      <div class="form-group has-error" ng-class="{'has-error': !$ctrl.detailsFocused &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber) &amp;&amp; areDetailsFieldsClean(advancedSearchForm),
                        'has-success': !$ctrl.detailsFocused &amp;&amp; advancedSearchForm.nhsNumber.$valid &amp;&amp; advancedSearchForm.nhsNumber.$dirty}">
                          <label for="nhsNumber" class="control-label">NHS Number</label>
                          <div class="input-holder">
                              <input type="text" tabindex="1" class="form-control input-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched" id="nhsNumber" name="nhsNumber" ng-model="searchParams.nhsNumber" focus-element="nhsNumberFocus" is-valid-nhs-number="" ng-focus="$ctrl.detailsFocused=false" ng-required="!$ctrl.detailsFocused" placeholder="e.g. 123 456 7890" required="required">
                          </div>
                          <span class="help-block animate-fade ng-hide" ng-show="formSubmitted &amp;&amp; advancedSearchForm.nhsNumber.$invalid &amp;&amp; !$ctrl.detailsFocused">You must enter a value.</span>
                          <span class="required-label" ng-show="!$ctrl.detailsFocused &amp;&amp; isNhsNumberRequired(advancedSearchForm)">*Required</span>
                          <span class="required-label ng-hide" ng-show="!$ctrl.detailsFocused &amp;&amp; isNhsNumberTooShort(advancedSearchForm.nhsNumber.$viewValue)">*NHS Number too short</span>
                          <span class="required-label ng-hide" ng-show="!$ctrl.detailsFocused &amp;&amp; isNhsNumberTooLong(advancedSearchForm.nhsNumber.$viewValue)">*NHS Number too long</span>
                      </div>
                    </div><!-- end ngIf: $ctrl.option.type === 'advanced' -->
                    <!-- ngIf: $ctrl.option.type === 'clinicalQuery' -->
                </div>
                <div class="row">
                    <!-- ngIf: $ctrl.option.type === 'advanced' --><div class="col-xs-12 col-sm-6 ng-scope" ng-if="$ctrl.option.type === 'advanced'">
                      <div class="form-group" ng-class="{'has-error': advancedSearchForm.surname.$error.required &amp;&amp; advancedSearchForm.surname.$invalid &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber),
                        'has-success': $ctrl.detailsFocused &amp;&amp; advancedSearchForm.surname.$valid &amp;&amp; advancedSearchForm.surname.$dirty &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber)}">
                          <label for="surname" class="control-label">Last Name</label>
                          <div class="input-holder">
                              <input type="text" tabindex="2" class="form-control input-sm ng-pristine ng-untouched ng-empty ng-valid ng-valid-required" id="surname" name="surname" ng-model="searchParams.surname" focus-element="surnameFocus" ng-focus="$ctrl.detailsFocused=true" ng-required="$ctrl.detailsFocused" placeholder="e. g. Smith">
                          </div>
                          <span class="help-block animate-fade ng-hide" ng-show="formSubmitted &amp;&amp; advancedSearchForm.surname.$error.required &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber)">You must enter a value.</span>
                          <span class="required-label ng-hide" ng-show="$ctrl.detailsFocused &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber) &amp;&amp; (advancedSearchForm.surname.$invalid || advancedSearchForm.forename.$invalid || advancedSearchForm.dateOfBirth.$invalid)">*Required</span>
                      </div>
                    </div><!-- end ngIf: $ctrl.option.type === 'advanced' -->
                    <!-- ngIf: $ctrl.option.type === 'clinicalQuery' -->
                    <!-- ngIf: $ctrl.option.type === 'advanced' --><div class="col-xs-12 col-sm-6 ng-scope" ng-if="$ctrl.option.type === 'advanced'">
                      <div class="form-group" ng-class="{'has-error': advancedSearchForm.forename.$error.required &amp;&amp; advancedSearchForm.forename.$invalid &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber),
                        'has-success': $ctrl.detailsFocused &amp;&amp; advancedSearchForm.forename.$valid &amp;&amp; advancedSearchForm.forename.$dirty &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber)}">
                          <label for="forename" class="control-label">First Name</label>
                          <div class="input-holder">
                              <input type="text" tabindex="3" class="form-control input-sm ng-pristine ng-untouched ng-empty ng-valid ng-valid-required" id="forename" name="forename" ng-model="searchParams.forename" ng-focus="$ctrl.detailsFocused=true" ng-required="$ctrl.detailsFocused" placeholder="e.g. John">
                          </div>
                          <span class="help-block animate-fade ng-hide" ng-show="formSubmitted &amp;&amp; advancedSearchForm.forename.$error.required &amp;&amp; (advancedSearchForm.nhsNumber.$invalid || advancedSearchForm.nhsNumber.$pristine)">You must enter a value.</span>
                          <span class="required-label ng-hide" ng-show="$ctrl.detailsFocused &amp;&amp; isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber) &amp;&amp; (advancedSearchForm.surname.$invalid || advancedSearchForm.forename.$invalid || advancedSearchForm.dateOfBirth.$invalid)">*Required</span>
                      </div>
                    </div><!-- end ngIf: $ctrl.option.type === 'advanced' -->
                    <!-- ngIf: $ctrl.option.type === 'clinicalQuery' -->
                </div>

                <div class="row">
                  <div class="col-xs-12 col-sm-4">
                      <div class="form-group">
                          <label for="selectAgeField" class="control-label">Select Age Params</label>
                          <select class="form-control input-sm ng-pristine ng-untouched ng-valid ng-not-empty" tabindex="5" id="selectAgeField" name="selectAgeField" ng-model="selectAgeField">
                              <option value="range">Age Range</option>
                              <option value="birthday">Birthday</option>
                          </select>
                      </div>
                  </div>
                </div>

                <!-- ngIf: selectAgeField == 'range' --><div class="form-group ng-scope" ng-if="selectAgeField == 'range'">
                  <label for="" class="control-label">Age Range (Years)</label>
                  <div class="wrap-rzslider-search">
                      <div class="mc-rz-slider rzslider ng-isolate-scope" rz-slider-model="sliderRange.minValue" rz-slider-high="sliderRange.maxValue" rz-slider-options="sliderRange.options"><span class="rz-bar-wrapper"><span class="rz-bar"></span></span> <span class="rz-bar-wrapper" style="visibility: visible; width: 809px; left: 6px;"><span class="rz-bar rz-selection" ng-style="barStyle"></span></span> <span class="rz-pointer rz-pointer-min" ng-style="minPointerStyle" role="slider" aria-valuenow="0" aria-valuetext="0" aria-valuemin="0" aria-valuemax="20" tabindex="0" style="left: 0px;"></span> <span class="rz-pointer rz-pointer-max" ng-style="maxPointerStyle" aria-valuenow="100" aria-valuetext="100" aria-valuemin="0" aria-valuemax="20" role="slider" tabindex="0" style="left: 809px;"></span> <span class="rz-bubble rz-limit rz-floor" style="visibility: visible; left: 0px;">0</span> <span class="rz-bubble rz-limit rz-ceil" style="visibility: visible; left: 821px;">100</span> <span class="rz-bubble" style="visibility: visible; left: 6px;">0</span> <span class="rz-bubble" style="visibility: visible; left: 815px;">100</span> <span class="rz-bubble" style="visibility: hidden;"></span><ul ng-show="showTicks" class="rz-ticks"><!-- ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(0px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">0</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(40px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(81px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">10</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(121px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(162px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">20</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(202px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(243px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">30</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(283px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(324px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">40</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(364px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(405px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">50</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(445px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(485px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">60</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(526px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(566px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">70</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(607px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(647px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">80</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(688px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(728px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">90</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(769px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --><li ng-repeat="t in ticks track by $index" class="rz-tick ng-scope rz-selected" ng-class="{'rz-selected': t.selected}" ng-style="t.style" ng-attr-uib-tooltip="{{ t.tooltip }}" ng-attr-tooltip-placement="{{t.tooltipPlacement}}" ng-attr-tooltip-append-to-body="{{ t.tooltip ? true : undefined}}" style="transform: translateX(809px);"><!-- ngIf: t.value != null --> <!-- ngIf: t.legend != null --><span ng-if="t.legend != null" class="rz-tick-legend ng-binding ng-scope">100+</span><!-- end ngIf: t.legend != null --></li><!-- end ngRepeat: t in ticks track by $index --></ul></div>
                  </div>
                </div><!-- end ngIf: selectAgeField == 'range' -->

                <!-- ngIf: selectAgeField == 'birthday' -->

                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                      <div class="form-group" ng-class="{'has-error': (formSubmitted || advancedSearchForm.route.$dirty) &amp;&amp; medicationForm.route.$invalid, 'has-success': medicationForm.route.$valid &amp;&amp; medicationForm.route.$dirty}">
                          <label for="gender" class="control-label">Gender</label>
                          <div class="input-holder">
                              <div class="wrap-fcustominps-inline">
                                  <div class="wrap-fcustominp">
                                      <div class="fcustominp">
                                          <input type="checkbox" id="gender-male" name="gender-male" ng-model="searchParams.sexMale" class="ng-pristine ng-untouched ng-valid ng-empty">
                                          <label for="gender-male"></label>
                                      </div>
                                      <label for="gender-male" class="fcustominp-label ng-binding">Male</label>
                                  </div>
                                  <div class="wrap-fcustominp">
                                      <div class="fcustominp">
                                          <input type="checkbox" id="gender-female" name="gender-female" ng-model="searchParams.sexFemale" class="ng-pristine ng-untouched ng-valid ng-empty">
                                          <label for="gender-female"></label>
                                      </div>
                                      <label for="gender-female" class="fcustominp-label ng-binding">Female</label>
                                  </div>
                              </div>
                          </div>
                      </div>
                    </div>
                </div>
            </div>
          </form>

        </div>
        <div class="panel-control">
          <div class="wrap-control-group hide-indent-bottom">
            <div class="control-group with-indent right">
              <button class="btn btn-danger btn-icon-normal" ng-click="cancel()"><i class="fa fa-times"></i> Close</button>
              <button class="btn btn-success btn-icon-normal" ng-click="ok(advancedSearchForm)"><i class="fa fa-search"></i> Search</button>
            </div>
          </div>
        </div>
      </div>
    </div>
```