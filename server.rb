require 'webrick'

server = WEBrick::HTTPServer.new(:DocumentRoot=>"public",:Port=>3000)

server.mount("/update",WEBrick::HTTPServlet::ERBHandler,"update.erb")

server.start