# Watches files for changes and runs tasks based on the changed files
module.exports = (grunt) ->
  bower:
    files: ["bower.json"]
    tasks: ["bowerInstall"]

  js:
    files: ["<%= config.app %>/scripts/{,*/}*.js"]
    tasks: ["jshint"]
    options:
      livereload: true

  gruntfile:
    files: ["Gruntfile.js"]

  styles:
    files: ["<%= config.app %>/styles/{,*/}*.css"]
    tasks: []
    options:
      livereload: true

  livereload:
    options:
      livereload: "<%= connect.options.livereload %>"

    files: [
      "<%= config.app %>/*.html"
      "<%= config.app %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}"
      "<%= config.app %>/manifest.json"
      "<%= config.app %>/_locales/{,*/}*.json"
    ]