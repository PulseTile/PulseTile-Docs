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