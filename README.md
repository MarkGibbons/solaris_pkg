solaris_pkg
=============

Set up a server to install Solaris packages.  The current function is to install
a response file for silent installs.

Requirements
============

Only applies to Solaris 2.

Usage
=====

Include the cookbook in the run_list.
Include code to set options for a package resource.

  include_recipe 'solaris_pkg'
  pkg_sol_noask = node['solaris_pkg']['nocheck']
  options = '-a #{pkg_sol_noask} -r #{pkg_sol_noask}'
  options << ' -G' unless node['platform_version'] == '5.9'

Attributes
==========

None

Recipes
=======

pkg_sol_noask - Creates a response file for silent installations.

Author
======

Mark Gibbons
