module.exports = (grunt) ->
  options:
    assetsDirs: [
      "<%= config.dist %>"
      "<%= config.dist %>/images"
    ]

  html: ["<%= config.dist %>/{,*/}*.html"]
  css: ["<%= config.dist %>/styles/{,*/}*.css"]