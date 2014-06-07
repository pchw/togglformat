module.exports = (grunt) ->
  options:
    dest: "<%= config.dist %>"

  html: [
    "<%= config.app %>/popup.html"
    "<%= config.app %>/options.html"
  ]