gulp = require 'gulp'
coffee = require 'gulp-coffee'
ngAnnotate = require 'gulp-ng-annotate'
ngClassify = require 'gulp-ng-classify'

gulp.task 'scripts', ->
  options = {
    controller: {
      format: 'upperCamelCase'
      suffix: ''
    }
  }
  gulp.src '**/*.coffee', cwd: 'src'
  .pipe ngClassify options
  .pipe gulp.dest 'ng-classified'
  .pipe coffee bare: true
  .pipe ngAnnotate()
  .pipe gulp.dest 'destination'

gulp.task 'watch', ->
  gulp.watch '**/*.coffee', cwd: 'src', ['scripts']

gulp.task 'default', ['scripts', 'watch', 'browserSync']