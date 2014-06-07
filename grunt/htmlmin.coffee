module.exports = (grunt) ->
  dist:
    options: {}
    
    # removeCommentsFromCDATA: true,
    # collapseWhitespace: true,
    # collapseBooleanAttributes: true,
    # removeAttributeQuotes: true,
    # removeRedundantAttributes: true,
    # useShortDoctype: true,
    # removeEmptyAttributes: true,
    # removeOptionalTags: true
    files: [
      expand: true
      cwd: "<%= config.app %>"
      src: "*.html"
      dest: "<%= config.dist %>"
    ]