# encoding: utf-8
#
# Set up the no_ask response file.
#
# Cookbook Name:: splunkforwarder
# Recipe:: package
# License:: Apache License 2.0
#

pkg_sol_noask = node[:solaris_pkg][:nocheck]

template pkg_sol_noask do
  source 'nocheck.erb'
  owner 'root'
  group 'root'
  mode '0744'
  action :create
  only_if { platform?('solaris2') }
end
