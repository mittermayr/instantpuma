root = "#{Dir.getwd}"
rackup "#{root}/config.ru"
pidfile "#{root}/runtime/puma.pid"
state_path "#{root}/runtime/puma.state"
bind "unix:///#{root}/runtime/puma.pumatra.sock"