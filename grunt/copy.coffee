module.exports = (grunt) ->
  dist:
    files: [
      expand: true
      dot: true
      cwd: "<%= config.app %>"
      dest: "<%= config.dist %>"
      src: [
        "*.{ico,png,txt}"
        "images/{,*/}*.{webp,gif}"
        "{,*/}*.html"
        "styles/{,*/}*.css"
        "styles/fonts/{,*/}*.*"
        "_locales/{,*/}*.json"
      ]
    ]