(function() {
  var casper;

  casper = require('casper').create({
    clientScripts: ['lib/jquery.js']
  });

  casper.start('http://192.168.1.100:4000', function() {
    casper.page.injectJs('lib/jquery.js');
    this.echo(casper.evaluate(function() {
      return document.querySelector('a:nth-child(0)');
    }));
    return this.capture('screenshots/index.png');
  });

  casper.run();

}).call(this);
