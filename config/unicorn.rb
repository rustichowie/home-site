app_dir = File.expand_path('../../', __FILE__)
shared_dir = File.expand_path('../../../shared/', __FILE__)

# Set unicorn options
worker_processes 2
timeout 30

# Fill path to your app
working_directory app_dir

# Listen on unix socket
listen "/tmp/unicorn.home-site.sock", :backlog => 64

pid "/var/www/home-site/tmp/pids/unicorn.pid"

stderr_path "/var/www/home-site/tmp/log/unicorn.log"
stdout_path "/var/www/home-site/tmp/log/unicorn.log"
# combine Ruby 2.0.0dev or REE with "preload_app true" for memory savings
# http://rubyenterpriseedition.com/faq.html#adapt_ap
