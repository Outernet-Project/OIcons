module.exports = function (grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        webfont: {
            icons: {
                src: 'src/*.svg',
                dest: 'build',
                options: {
                    template: 'templates/icons.scss',
                    font: 'OIcons',
                    fontFilename: 'oicons-{hash}',
                    htmlDemo: false,
                    fontHeight: 1000,
                    descent: 125,
                    templateOptions: {
                        baseClass: 'icon',
                        classPrefix: 'icon-',
                        mixinPrefix: 'icon-'
                    }
                }
            }
        }
    });

    grunt.loadNpmTasks('grunt-webfont');
    grunt.registerTask('default', ['webfont']);
}
