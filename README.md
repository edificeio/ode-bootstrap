# À propos d'ode-bootstrap
    
* Licence : [AGPL v3](http://www.gnu.org/licenses/agpl.txt) - Copyright Edifice
* Financeur(s) : Edifice
* Développeur(s) : Edifice
* Description : UI boostrap framework for entcore and Edifice Framework.

# ODE Bootstrap Framework

ODE Bootstrap is a CSS framework containing all the UI components used by our ENT.
This framework is based on bootstrap 5.2.

## Install

Install it by cloning the repository:
```
git clone https://github.com/opendigitaleducation/ode-bootstrap.git
./build.sh clean init
```

## Dev

To use these generic styles, see documentation on `ode-bootstrap-one` or `ode-bootstrap-neo` 

## Bootstrap 5.x

If a component already exists in Bootstrap 5.x, we use it and override it if necessary. The same goes for utility classes.

## Components

Based on Bootstrap 5.2, many components used CSS Variables (CSS Custom Properties). We adhere to this guideline to create our own components or to override Bootstrap components.

```scss
// _form-control.scss

.form-control {
  --#{$prefix}input-padding-y: #{$input-padding-y};
  --#{$prefix}input-padding-x: #{$input-padding-x};
  --#{$prefix}input-padding-y-lg: #{$input-padding-y-lg};
  --#{$prefix}input-padding-x-lg: #{$input-padding-x-lg};
  --#{$prefix}input-font-size-lg: #{$input-font-size-lg};
  --#{$prefix}input-padding-y-sm: #{$input-padding-y-sm};
  --#{$prefix}input-padding-x-sm: #{$input-padding-x-sm};
  --#{$prefix}input-font-size-sm: #{$input-font-size-sm};
  --#{$prefix}input-border-color: #{$input-border-color};
  --#{$prefix}input-disabled-bg: #{$input-disabled-bg};
  --#{$prefix}input-disabled-color: #{$input-disabled-color};
  --#{$prefix}input-disabled-border-color: #{$input-disabled-border-color};
  --#{$prefix}input-placeholder-color: #{$input-placeholder-color};
  --#{$prefix}input-focus-border-color: #{$input-focus-border-color};
  --#{$prefix}input-filled-border-color: #{$input-filled-border-color};
  --#{$prefix}input-border-radius: #{$input-border-radius-lg};
  --#{$prefix}input-border-radius-sm: #{$input-border-radius};
  --#{$prefix}input-border-radius-lg: #{$input-border-radius-lg};
  padding: var(--#{$prefix}input-padding-y) var(--#{$prefix}input-padding-x);
  border-color: var(--#{$prefix}input-border-color);
  font-size: var(--#{$prefix}input-font-size-lg);
  min-height: inherit;

...
}
```

Structure and generic styling should be done in `ode-bootstrap` when overring style should be done inside `ode-bootstrap-one` or `ode-bootstrap-neo`

```scss
// ode-bootstrap-one > _form-control.scss

$input-focus-border-color: $orange-200;

.form-control {
  --#{$prefix}input-focus-border-color: #{$input-focus-border-color};
}
```