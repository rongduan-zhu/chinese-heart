max_threads = Integer(ENV['MAX_THREADS'] || 4)
max_workers = Integer(ENV['MAX_WORKERS'] || 2)
rails_env = ENV['RAILS_ENV'] || 'development'

threads 2, max_threads
workers max_workers

environment rails_env
port 3000

preload_app!

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
