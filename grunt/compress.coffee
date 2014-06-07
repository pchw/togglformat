module.exports = (grunt) ->
  dist:
    options:
      archive: "package/togglformat<%= config.manifest.version %>.zip"

    files: [
      expand: true
      cwd: "dist/"
      src: ["**"]
      dest: ""
    ]