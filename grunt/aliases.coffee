module.exports =
  debug:[
    "jshint"
    "concurrent:chrome"
    "connect:chrome"
    "watch"
  ]
  test:[
    "connect:test"
    "mocha"
  ]
  build:[
    "clean:dist"
    "chromeManifest:dist"
    "useminPrepare"
    "concurrent:dist"
    "cssmin"
    "concat"
    "uglify"
    "copy"
    "usemin"
    "compress"
  ]
  default: [
    "jshint"
    "test"
    "build"
  ]
