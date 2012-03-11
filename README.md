Description
===========

Installs the passenger module for nginx.

Requirements
============

Cookbooks
---------

* nginx

Platforms
---------

Only tested on Ubuntu.

Recipes
=======

Recipes are written in a modular way to support composable components. The
cookbook provides these composed services by default:

* default - installs passenger module for nginx

Low-level recipes:

* \_config - configure passenger module
* \_dependencies - install required dependencies
* \_package - install package
* \_setup\_module - setup nginx module

Usage
=====

Either use the `default` recipe or compose your own version from the low-level
recipes.

License and Author
==================

Author:: Nikolay Sturm <opscode@erisiandiscord.de>

Copyright:: 2012

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
