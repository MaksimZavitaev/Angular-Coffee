gulp = require 'gulp'
browserSync = require 'browser-sync'

gulp.task 'browserSync', ->
  browserSync
    port: 9000
    open: false
    server:
      baseDir: ['./'] # TODO: Поправить путь до корня сервера
    files: ['./**']