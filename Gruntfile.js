module.exports = function (grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        webfont: {
            icons: {
                src: 'src/*.svg',
                dest: 'build/fonts',
                prefix: 'icon-',
                options: {
                    template: 'templates/icons.scss',
                    font: 'OIcons',
                    fontFilename: 'oicons-{hash}',
                    htmlDemo: false,
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
