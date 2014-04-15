if node['newrelic']['server_monitoring']['license'] != "" then
    package "newrelic-sysmond"

    template "#{node['php']['ext_conf_dir']}/newrelic.ini" do
      source 'newrelic.ini.php.erb'
      owner 'root'
      mode '0644'
      notifies :restart, "service[newrelic-daemon]"
      notifies :restart, "service[php5-fpm]"
    end

    package "newrelic-php5" do
        action :install
    end

    service "newrelic-daemon" do
        action [ :enable, :start ]
        supports :status => true, :start => true, :stop => true, :restart => true
    end

    service "php5-fpm" do
        action [ :enable, :start ]
        supports :status => true, :start => true, :stop => true, :restart => true
    end
end

