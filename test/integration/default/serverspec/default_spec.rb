require 'spec_helper'

describe package('ntp') do
  it { should be_installed }
end

describe file('/etc/ntp.conf') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_mode 644 }
end

describe service('ntp') do
  it { should be_enabled }
  it { should be_running }
end
