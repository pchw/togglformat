# Project settings
module.exports = (grunt) ->
  app: "app"
  dist: "dist"
  manifest: grunt.file.readJSON("app/manifest.json")