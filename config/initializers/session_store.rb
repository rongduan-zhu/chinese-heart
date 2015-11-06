# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :redis_store, servers: {
  host: ENV['redis_host'],
  port: ENV['redis_port'],
  db: 0,
  namespace: 'session'
}, expires_in: 4.weeks
