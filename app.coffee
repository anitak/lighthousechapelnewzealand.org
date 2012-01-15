
###
Module dependencies.
###
express = require('express')

app = module.exports = express.createServer()

###
Configuration.
###

app.configure(->
  app.set('views', __dirname + '/views')
  app.set('view engine', 'jade')
  app.use(express.bodyParser())
  app.use(express.methodOverride())
  app.use(app.router)
  app.use(express.static(__dirname + '/public'))
  app.use(require('connect-assets')())
)

app.configure('development', ->
  app.use(express.errorHandler(
    dumpExceptions: true
    showStack: true
  ))
)

app.configure('production', ->
  app.use(express.errorHandler())
)

###
Routes.
###

app.get('/', (req, res) ->
  res.render('index',
    title: 'LCINZ'
  )
)

app.get('/about', (req, res) ->
  res.render('about',
    title: 'LCINZ'
  )
)

app.get('/events', (req, res) ->
  res.render('events',
    title: 'LCINZ'
  )
)

app.get('/contact', (req, res) ->
  res.render('contact',
    title: 'LCINZ'
  )
)

app.listen(7000, 'localhost', ->
  console.log('LCINZ server listening on http://localhost:%d in %s mode', app.address().port, app.settings.env)
)
