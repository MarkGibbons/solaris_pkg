#
# Copyright (c) 2015 Nordstrom, Inc.
#

require 'spec_helper'

describe file('/var/sadm/install/admin/nocheck') do
  it { should be_file }
  its(:content) { should match(/action=nocheck/) }
end
