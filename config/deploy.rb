# config valid for current version and patch releases of Capistrano
lock "~> 3.17.0"


# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/rails/deploy/jobsvoortechniekers"
set :application, "jobsvoortechniekers"
set :repo_url, "git@github.com:kimvanrompay/JVT.git"
# set :puma_conf, "{shared_path}/config/puma.rb"
set :rails_env, :production
set :stage, :production
set :user, "rails"
set :use_sudo, false

# set :puma_service_unit_env_file, '/etc/environment'
# THE BELOW ENV VARS ARE NOT SET ON THE PRODUCTION SERVER and should be removed
# set :puma_service_unit_env_vars, [
#  "RDS_HOST=%s" % [ENV['RDS_HOST']],
#  "RDS_PASSWORD=%s" % [ENV['RDS_PASSWORD']],
#  "RDS_USERNAME=%s" % [ENV['RDS_USERNAME']],
#  "RDS_DATABASE=%s" % [ENV['RDS_DATABASE']]
#] 
# WE USE INSTEAD: EDITOR=vim rails credentials:edit; this is created an encrypted file with vars

####
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.access.log"
set :puma_error_log,  "#{release_path}/log/puma.error.log"


### NGINX
### if your nginx server configuration is not located in /etc/nginx, you may need to customize: ###
# set :nginx_sites_available_path, "/etc/nginx/conf.d"
set :nginx_sites_enabled_path, "/etc/nginx/conf.d"
set :nginx_config_name, "#{fetch(:application)}_#{fetch(:stage)}.conf"

# append :rvm_map_bins, 'puma', 'pumactl'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, 'main'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/master.key"
append :linked_files, "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor/bundle", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
