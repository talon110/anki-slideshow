# set path to app that will be used to configure unicorn,
# note the trailing slash in this example
@dir = "/var/www/cards.reedandmegan.net/web/"

worker_processes 2
working_directory @dir

timeout 30

# Specify path to socket unicorn listens to,
# we will use this in our nginx.conf later
listen "#{@dir}tmp/sockets/unicorn.sock", :backlog => 64

# Set process path id
pid "#{@dir}tmp/pids/unicorn.pid"

stderr_path "#{@dir}../log/unicornstderr.log"
stdout_path "#{@dir}../log/unicornstdout.log"
