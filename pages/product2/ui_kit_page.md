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
    <div mc-datepicker class="panel panel-secondary without-margin">
      <div class="panel-heading">
        <div class="control-group right">
          <button class="btn btn-success btn-inverse btn-square btn-toggle-rotate" ng-click="cancel()"><i class="fa fa-chevron-up"></i></button>
        </div>
        <h3 class="panel-title">
          <span>{{$ctrl.option.name}}:</span>
          <span ng-if="searchParams.nhsNumber">NHS Number: {{searchParams.nhsNumber}}</span>
        </h3>
      </div>
      <div class="panel-body">
        <div class="panel-body-inner">
          <form name="advancedSearchForm" class="form">
            <div class="form-group-wrapper">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                      <div class="form-group"
                        ng-class="{'has-error': !$ctrl.detailsFocused && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber) && areDetailsFieldsClean(advancedSearchForm),
                        'has-success': !$ctrl.detailsFocused && advancedSearchForm.nhsNumber.$valid && advancedSearchForm.nhsNumber.$dirty}">
                          <label for="nhsNumber" class="control-label">NHS Number</label>
                          <div class="input-holder">
                              <input type="text" tabindex="1" class="form-control input-sm" id="nhsNumber" name="nhsNumber" ng-model="searchParams.nhsNumber" focus-element="nhsNumberFocus" is-valid-nhs-number ng-focus="$ctrl.detailsFocused=false" ng-required="!$ctrl.detailsFocused" placeholder="e.g. 123 456 7890"/>
                          </div>
                          <span class="help-block animate-fade" ng-show="formSubmitted && advancedSearchForm.nhsNumber.$invalid && !$ctrl.detailsFocused">You must enter a value.</span>
                          <span class="required-label" ng-show="!$ctrl.detailsFocused && isNhsNumberRequired(advancedSearchForm)">*Required</span>
                          <span class="required-label" ng-show="!$ctrl.detailsFocused && isNhsNumberTooShort(advancedSearchForm.nhsNumber.$viewValue)">*NHS Number too short</span>
                          <span class="required-label" ng-show="!$ctrl.detailsFocused && isNhsNumberTooLong(advancedSearchForm.nhsNumber.$viewValue)">*NHS Number too long</span>
                      </div>
                    </div>
                    <div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                      <div class="form-group"
                        ng-class="{'has-error': advancedSearchForm.surname.$error.required && advancedSearchForm.surname.$invalid && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber),
                        'has-success': $ctrl.detailsFocused && advancedSearchForm.surname.$valid && advancedSearchForm.surname.$dirty && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber)}">
                          <label for="surname" class="control-label">Last Name</label>
                          <div class="input-holder">
                              <input type="text" tabindex="2" class="form-control input-sm" id="surname" name="surname" ng-model="searchParams.surname" focus-element="surnameFocus" ng-focus="$ctrl.detailsFocused=true" ng-required='$ctrl.detailsFocused' placeholder="e. g. Smith"/>
                          </div>
                          <span class="help-block animate-fade" ng-show="formSubmitted && advancedSearchForm.surname.$error.required && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber)">You must enter a value.</span>
                          <span class="required-label" ng-show="$ctrl.detailsFocused && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber) && (advancedSearchForm.surname.$invalid || advancedSearchForm.forename.$invalid || advancedSearchForm.dateOfBirth.$invalid)">*Required</span>
                      </div>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <div class="form-group"
                        ng-class="{'has-error': advancedSearchForm.forename.$error.required && advancedSearchForm.forename.$invalid && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber),
                        'has-success': $ctrl.detailsFocused && advancedSearchForm.forename.$valid && advancedSearchForm.forename.$dirty && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber)}">
                          <label for="forename" class="control-label">First Name</label>
                          <div class="input-holder">
                              <input type="text" tabindex="3" class="form-control input-sm" id="forename" name="forename" ng-model="searchParams.forename" ng-focus="$ctrl.detailsFocused=true" ng-required='$ctrl.detailsFocused' placeholder="e.g. John"/>
                          </div>
                          <span class="help-block animate-fade" ng-show="formSubmitted && advancedSearchForm.forename.$error.required && (advancedSearchForm.nhsNumber.$invalid || advancedSearchForm.nhsNumber.$pristine)">You must enter a value.</span>
                          <span class="required-label" ng-show="$ctrl.detailsFocused && isNhsNumberFieldInvalid(advancedSearchForm.nhsNumber) && (advancedSearchForm.surname.$invalid || advancedSearchForm.forename.$invalid || advancedSearchForm.dateOfBirth.$invalid)">*Required</span>
                      </div>
                    </div>
                </div>

                <div class="row">
                  <div class="col-xs-12 col-sm-4">
                      <div class="form-group">
                          <label for="selectAgeField" class="control-label">Select Age Params</label>
                          <select class="form-control input-sm" tabindex="5" id="selectAgeField" name="selectAgeField" ng-model="selectAgeField">
                              <option value="range">Age Range</option>
                              <option value="birthday">Birthday</option>
                          </select>
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

## Footer
{% include image.html file="ui-kit/footer.png" alt="drop-down selector" caption="" %}
```
    <footer class="footer">
      <div class="container-fluid">
        <div class="footer-povered">
          <span>Powered By</span>
          <a href="#" class="footer-logo"><img src="data:image/png;base64,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" alt="Ripple Icon" class="footer-logo-img"></a>
        </div>
        <p class="footer-text">IDCR POC</p>
      </div>
    </footer>
```