module.exports = (grunt) ->
  all:
    options:
      run: true
      urls: ["http://localhost:<%= connect.options.port %>/index.html"]
