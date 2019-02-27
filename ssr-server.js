const express = require('express')
const next = require('next')

const dev = process.env.NODE_ENV !== 'production'
const app = next({ dev })
const handle = app.getRequestHandler()

app.prepare()
.then(() => {
  const server = express()
  
  // landing redirect to Campaigns
  server.get('/', (req, res) => {
    if(req.params.page == undefined)  {
      res.redirect('/Campaigns');
    }
  })

  // page route masking
  server.get('/:page/:campaignId', (req, res) => {
    const actualPage = '/index'
    const queryParams = { page: req.params.page, campaignId: req.params.campaignId } 
    app.render(req, res, actualPage, queryParams)
  })

  server.get('/:page', (req, res) => {
    const actualPage = '/index'
    const queryParams = { page: req.params.page } 
    app.render(req, res, actualPage, queryParams)
  })


  server.get('*', (req, res) => {
    return handle(req, res)
  })

  server.listen(3000, (err) => {
    if (err) throw err
    console.log('> Ready on http://localhost:3000')
  })
})
.catch((ex) => {
  console.error(ex.stack)
  process.exit(1)
})