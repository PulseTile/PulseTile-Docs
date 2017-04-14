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