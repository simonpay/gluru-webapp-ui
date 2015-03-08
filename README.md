# Gluru Web App


### Description
Static development site for the Gluru Web App.

### Requirements
 - [Bower](http://bower.io/)
 - [Node & npm](http://nodejs.org/)
 - [Compass](http://compass-style.org/help/) or SASS compiler capable of compiling SASS >= 3.3, if frontend packages are used as provided.

### Getting started
1. Install dependencies (see requirements)
2. Clone repository
3. Make a directory
4. CD into that directory
5. npm install (installs Node dependencies)
6. bower install (installs Bower dependencies)
7. grunt serve (or just hit the /build directory in browser)

### Templates
The project uses Swig templates in conjunction with Assemble to generate static sites.

 The core terminology is as followed:

  - **Layouts**: Wrappers for pages. The base layout that ships with the boilerplate contains a standard HTML structure (Doctype declaration, head and body elements). Layouts (included the provided "base") are found in the templates/layouts directory.
  - **Pages**: Pages are the primary location for your content. They extend a layout and are found within the templates/pages directory of the project.
  - **Includes**: Swig includes that allow the inclusion of partial content. The full path to the include must be referenced. E.g. {% include "myproject/src/templates/includes/header.swig" %}.

For more information read the following:

  - [**Assemble Templates**](http://assemble.io/docs/index.html)
  - [**Swig**](http://paularmstrong.github.io/swig/docs/)
  - [**Assemble Swig**](https://github.com/assemble/assemble-swig)
  - [**Layouts**](http://assemble.io/docs/Layouts.html)
  - [**Pages**](http://assemble.io/docs/Pages.html)
  - [**Includes**](http://paularmstrong.github.io/swig/docs/tags/#include)

### Data
Templates have access to data objects. This data is ideally stored as json inside of the template/data directory.

For more information on Assemble's use of data, reference [Assemble's own documentation](http://assemble.io/docs/Context.html).

### Frontend packages
The project includes the following frontend packages.

  -  [**Bourbon**](http://bourbon.io/): SCSS utilities (compiles to 0 lines of CSS if not called)
  -  [**Neat**](http://neat.bourbon.io/): Bourbon dependent grid framework (compiles to 0 lines of CSS if not called)
  -  [**Scut**](http://davidtheclark.github.io/scut/): More useful SCSS shortcuts (compiles to 0 lines of CSS if not called)

### Grunt Commands
The project has a variety of grunt tasks, defined in the Gruntfile.js.

#### grunt build
Builds the project, including templates and processing of SCSS and js.

Includes:

  - **Assemble**: Process templates and data
  - **grunt-contrib-jshint**: Lints javascript before concatenation. Will stop build if it finds an error.
  - **grunt-contrib-concat**: Concatanates vendor and custom javascript.
  - **grunt-contrib-compass**: Compiles SCSS to CSS
  - **grunt-contrib-copy**: Copies images and fonts to build directory

#### grunt dist
Production, or distribution, release of your project. Includes all of build, and the following:

  - **grunt-prettify:** Prettify processed HTML
  - **grunt-contrib-clean**: Cleans distribution directory before build
  - **grunt-contrib-uglify**: Minifies and comment-strips javascript 
  - **grunt-contrib-cssmin**: Minifies and comment-strips CSS 

#### grunt serve
Serve the project on localhost. Defaults to port 8000.

#### grunt watch
Watch for changes in SCSS, js, image and font directories, and any templates. On change recompiles that aspect of the project. The project does not include livereload because it sucks more than it helps.

#### grunt docco
Build HTML documentation for javascript files. See [Docco documentation](http://jashkenas.github.io/docco/) for more information.


### CSS Style Guide
Where possible, all CSS is based on the style guide written by Harry Roberts:
[CSS style guide](http://cssguidelin.es/)

Naming conveention is based on BEM methodology with a variation described here: [BEM Variation](http://webuild.envato.com/blog/chainable-bem-modifiers/)
