package "newrelic-php5" do
    action :install
end

service "newrelic-php5" do
      action [ :enable, :start, :restart ]
end
