{Server} = require 'visualize'
server = new Server
    port: 8001
    rewrites:
      '/': '/pug/files/index.pug'

server.start (err)->
  if err
    console.error err
  else
    console.log 'started', server.info.uri
