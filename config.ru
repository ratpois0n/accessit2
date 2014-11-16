$stdout.sync = true

run Rack::File.new('_site')