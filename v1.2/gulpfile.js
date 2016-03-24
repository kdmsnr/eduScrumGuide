var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task('watch', function(){
    gulp.watch('[0-9]*.md', ['html']);
});

gulp.task('html', shell.task([
    'make html'
]))
