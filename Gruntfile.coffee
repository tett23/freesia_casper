module.exports = (grunt) ->
  grunt.initConfig {
    pkg: grunt.file.readJSON('package.json')
    coffee: {
      app: {
        src: ['src/*.coffee'],
        dest: 'lib/freesia_casper.js'
      }
    }
    watch: {
      coffee: {
        files: ['src/*.coffee'],
        tasks: 'coffee'
      }
    }
  }

  grunt.registerTask 'test', 'run casper', ->
    shell = require('shelljs')
    shell.exec('casperjs lib/freesia_casper.js')

  grunt.loadNpmTasks('grunt-contrib')
  grunt.registerTask('default', ['coffee', 'test'])
