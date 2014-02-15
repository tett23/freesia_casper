casper = require('casper').create({
  clientScripts: ['lib/jquery.js']
})

casper.start 'http://192.168.1.100:4000', ->
  casper.page.injectJs('lib/jquery.js')
  @echo casper.evaluate ->
    document.querySelector('a:nth-child(0)')
  @capture('screenshots/index.png')

casper.run()
