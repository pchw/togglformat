# Automatically inject Bower components into the HTML file
module.exports = (grunt) ->
  app:
    src: ["<%= config.app %>/*.html"]