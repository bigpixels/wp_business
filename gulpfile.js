const gulp         = require('gulp');
const sass         = require('gulp-sass');
const browserSync  = require('browser-sync').create();
const plumber      = require('gulp-plumber');
const cssmin       = require('gulp-cssmin');
const rename       = require('gulp-rename');
const minjs        = require('gulp-uglify');
const autoprefixer = require('gulp-autoprefixer');
const image        = require('gulp-image');

gulp.task('online', ['sass', 'html', 'jsmin', 'image'], function () {
    browserSync.init({
        port:8080,
        open:true,
        notify:false,
        proxy:'business/'
    });

    // styles
    gulp.watch('wp-content/themes/custom/src/scss/*.scss', ['sass']);
    // scripts
    gulp.watch('wp-content/themes/custom/src/js/*.js',     ['jsmin']);
    // images
    gulp.watch('wp-content/themes/custom/src/img/*',       ['image']);
    // layout updating (browserSync)
    gulp.watch('wp-content/themes/custom/*.php',           ['html']);
});

gulp.task('sass',function () {
    gulp.src('wp-content/themes/custom/src/scss/*.scss')
        .pipe(plumber())
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(sass({errLogToConsole:true}))
        .pipe(autoprefixer({
            browsers:['last 10 versions'],
            cascade:false
        }))
        .pipe(rename({extname: '.min.css'}))
        .pipe(gulp.dest('wp-content/themes/custom/css/'))
        .pipe(browserSync.reload({stream:true}));
});

gulp.task('jsmin', function () {
    gulp.src('wp-content/themes/custom/src/js/*.js')
        .pipe(minjs())
        .pipe(rename({extname: '.min.js'}))
        .pipe(gulp.dest('wp-content/themes/custom/js/'))
});

gulp.task('html',function () {
    gulp.src('wp-content/themes/custom/*.php')
        .pipe(browserSync.reload({stream: true}));
});

gulp.task('image', function () {
    gulp.src('wp-content/themes/custom/src/img/*')
        .pipe(image())
        .pipe(gulp.dest('wp-content/themes/custom/img/'));
});

gulp.task('default', ['online']);