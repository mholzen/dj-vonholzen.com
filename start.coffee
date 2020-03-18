#!/usr/bin/env coffee

server = require '@vonholzen/system/server'
log = require '@vonholzen/log'

rewrites =
  '/': '/mappers/style/mappers/html/files/files/index.md'
  '/index.css': '/type/css/mappers/text/files/files/index.css'

rewriteRules = [
  [/^\/images\/(.*)/, '/type/jpg/files/files/$1']
]

s = new server.Server
  port: 8003
  rewrites: rewrites
  rewriteRules: rewriteRules
  # rewrites: (path)->
  #   if rewrites[path]?
  #     return rewrites[path]

  #   for rule in rewriteRules
  #     if rule[0].test path
  #       return path.replace rule[0], rule[1]

s.listen (err)->
  if err
    log.error err
  else
    log.debug 'started', {port: s.port}