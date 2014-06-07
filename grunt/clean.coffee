# Empties folders to start fresh
module.exports = (grunt) ->
  chrome: {}
  dist:
    files: [
      dot: true
      src: [
        "<%= config.dist %>/*"
        "!<%= config.dist %>/.git*"
      ]
    ]