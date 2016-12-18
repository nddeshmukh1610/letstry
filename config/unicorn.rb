rails_env = ENV['RAILS_ENV'] || 'production'
root = "/var/www/Ask4Referral1/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.Ask4Referral1.sock"
worker_processes 1
timeout 30
