if os[:family] == 'redhat'
  describe package('docker-engine') do
    it { should be_installed }
  end

  describe package('python-docker-py') do
    it { should be_installed }
  end
end

if os[:family] == 'amazon'
  describe package('docker') do
    it { should be_installed }
  end
end

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe command('docker info') do
  its('exit_status') { should eq 0 }
end
