$stdout.sync = true

use Rack::Static,
  :urls => ["/css", "/js", "/img", "/spec"],
  :index => "index.html",
  :root => "."

run lambda { |env|
  [
    404,
    { 'Content-Type'  => 'text/html' },
    ['404 - page not found']
  ]
}