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