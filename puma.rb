appname = "PROJECTNAME"
root = "#{Dir.getwd}"
rackup "#{root}/config.ru"
pidfile "#{root}/runtime/puma.pid"
state_path "#{root}/runtime/puma.state"
bind "unix:///tmp/puma.#{appname}.pumatra.sock"
