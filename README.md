# ODE Bootsrap Framework

ODE Bootstrap is a CSS framework contains all UI components used by our ENT.
This framework is based on bootstrap 4.

## Install

Install it by cloning the repository:
```
git clone https://github.com/opendigitaleducation/ode-bootstrap.git
./build.sh clean init
```

### Start dev mode

Launch it using:
```
./build.sh watch
```

A light web server starts and the URL is displayed on console (http://localhost:8080/docs most of the time).
Livereload is enable, so each changes on source trigger a refresh in the browser.

### Build release

Build a release using:
```
./build.sh build
```

Minified CSS and assets are generated into *dist* folder.

## Create a theme

The framework is full customisable and lets you create themes.

In your theme, install the dependency using:

```
npm i --save-dev ode-bootstrap
```

Then import the sass file below:
```
@import "node_modules/ode-bootstrap/scss/index";
```

And then you can override all variables:
- defined *node_modules/ode-bootstrap/scss/_variables-ode*
- defined in bootstrap framework

## Documentation

A documentation listing all available components is available [here](docs/index.html). You can preview all of them and copy source code.

Below all variables and their meaning:

TODO

