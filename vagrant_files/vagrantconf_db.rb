Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider :vsphere do |vsphere, override|
    vsphere.template_name  = ''
  end
  config.vm.provider :openstack do |openstack, override|
    openstack.flavor             = ''
  end
  config.vm.provider :virtualbox do |virtualbox, override|
    virtualbox.customize ["modifyvm", :id, "--memory", "1024"]   
  end
  config.vm.provider :digital_ocean do |digitalocean, override|
    digitalocean.image = "debian-8-x64"
    digitalocean.size = "16gb" 
  end
end

# 512mb is not enough for cassandra
# 4096mb is not enough for cassandra + blueflood
# 8096mb is not enough for druid (single)