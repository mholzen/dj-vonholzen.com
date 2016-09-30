{Server} = require 'visualize'
server = new Server()
server.start ()->
  console.log 'started', server
