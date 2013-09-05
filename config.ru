require "rack/contrib/try_static"

use Rack::TryStatic,
  root: "public",
  urls: [""],
  index: "index.html",
  try: [".html"]

run lambda { |env| Rack::File.new("public/index.html").call(env) }

