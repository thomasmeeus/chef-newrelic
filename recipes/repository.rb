include_recipe "apt"

apt_repository "newrelic" do
    uri "http://apt.newrelic.com/debian/"
    components ["newrelic", "non-free"]
    key "https://download.newrelic.com/548C16BF.gpg"
end

