# Installation
default['jently']['install_dir'] = '/opt/jently'
default['jently']['repo'] = 'https://github.com/vaneyckt/Jently.git'
default['jently']['revision'] = 'master'

# GitHub Integration
default['jently']['github']['login'] = nil
default['jently']['github']['password'] = nil
default['jently']['github']['oauth_token'] = nil
default['jently']['github']['repository'] = nil
default['jently']['github']['polling_interval'] = 60

# GitHub Enterprise
default['jently']['github']['api_endpoint'] = nil
default['jently']['github']['web_endpoint'] = nil

# Jenkins Integration
default['jently']['jenkins']['login'] = nil
default['jently']['jenkins']['password'] = nil
default['jently']['jenkins']['url'] = nil
default['jently']['jenkins']['test_job'] = 'test_job'
default['jently']['jenkins']['timeout'] = 1800
default['jently']['jenkins']['polling_interval'] = 60
default['jently']['jenkins']['whitelist_branches'] = []
