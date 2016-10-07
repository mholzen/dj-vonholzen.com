{Server} = require 'visualize'
server = new Server
    rewrites:
      '/': '/pug/files/index.pug'

server.start (err)->
  if err
    console.error err
  else
    console.log 'started'
