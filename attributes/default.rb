default['newrelic']['server_monitoring']['license'] = ""
default['newrelic']['server_monitoring']['loglevel'] = "info"
default['newrelic']['server_monitoring']['logfile'] = "/var/log/newrelic/nrsysmond.log"
default['newrelic']['server_monitoring']['proxy'] = nil
default['newrelic']['server_monitoring']['ssl'] = false
default['newrelic']['server_monitoring']['ssl_ca_bundle'] = nil
default['newrelic']['server_monitoring']['ssl_ca_path'] = nil
default['newrelic']['server_monitoring']['pidfile'] = "/tmp/nrsysmond.pid"
default['newrelic']['server_monitoring']['collector_host'] = "collector.newrelic.com"
default['newrelic']['server_monitoring']['timeout'] = "30"


default['newrelic']['application_monitoring']['license'] = ""
default['newrelic']['application_monitoring']['enabled'] = true
default['newrelic']['application_monitoring']['daemon']['logfile'] = "info"
default['newrelic']['application_monitoring']['daemon']['appname'] = "PHP Application"
default['newrelic']['application_monitoring']['daemon']['ssl'] = false
