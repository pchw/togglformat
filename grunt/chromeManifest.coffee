module.exports = (grunt) ->
  dist:
    options:
      buildnumber: true
      background:
        target: "scripts/background.js"
        exclude: ["scripts/chromereload.js"]

    src: "<%= config.app %>"
    dest: "<%= config.dist %>"