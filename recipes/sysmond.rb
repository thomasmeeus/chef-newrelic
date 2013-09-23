if node['newrelic']['server_monitoring']['license'] != "" then
    package "newrelic-sysmond"

    template '/etc/newrelic/nrsysmond.cfg' do
      source 'nrsysmond.cfg.erb'
      owner 'root'
      mode '0640'
      notifies :restart, "service[newrelic-daemon]"
      notifies :restart, "service[newrelic-sysmond]"
    end

    service "newrelic-sysmond" do
      action [ :enable, :start, :restart ]
    end
    service "newrelic-daemon" do
          action [ :enable, :start, :restart ]
    end
end
