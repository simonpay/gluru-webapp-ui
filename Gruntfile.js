module.exports = function(grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        // Concatanation of JS
        concat: {
            options: {
                separator: ';'
            },
            dist: {
                src: [
                    '<%= pkg.project_paths.bower_folder %>jquery/dist/jquery.js',
                    '<%= pkg.project_paths.bower_folder %>vendor/foundation/jquery.joyride-2.1.js',
                    '<%= pkg.project_paths.bower_folder %>vendor/foundation/jquery.cookie.js',
                    '<%= pkg.project_paths.bower_folder %>jquery-ui/jquery-ui.js',
                    // '<%= pkg.project_paths.bower_folder %>jquery-ui/ui/core.js',
                    // '<%= pkg.project_paths.bower_folder %>jquery-ui/ui/widget.js',
                    // '<%= pkg.project_paths.bower_folder %>jquery-ui/ui/button.js',
                    '<%= pkg.project_paths.bower_folder %>select2/select2.js', // v3.4.5
                    ['<%= pkg.src_paths.js %>**/*.js', '!<%= pkg.src_paths.js %>pages/**']
                ],
                dest: '<%= pkg.dest_paths.js %>app.js'
            },
            home: {
                src: [
                    '<%= pkg.src_paths.js %>pages/home.js',
                ],
                dest: '<%= pkg.dest_paths.js %>pages/home.js',
            },
            files: {
                src: [
                    '<%= pkg.src_paths.js %>pages/files.js',
                ],
                dest: '<%= pkg.dest_paths.js %>pages/files.js',
            },
            moments: {
                src: [
                    '<%= pkg.src_paths.js %>pages/moments.js',
                ],
                dest: '<%= pkg.dest_paths.js %>pages/moments.js',
            },
            timeline: {
                src: [
                    '<%= pkg.src_paths.js %>pages/timeline.js',
                ],
                dest: '<%= pkg.dest_paths.js %>pages/timeline.js',
            },
            setup: {
                src: [
                    '<%= pkg.src_paths.js %>pages/setup.js',
                ],
                dest: '<%= pkg.dest_paths.js %>pages/setup.js',
            },
            settings: {
                src: [
                    '<%= pkg.src_paths.js %>pages/settings.js',
                ],
                dest: '<%= pkg.dest_paths.js %>pages/settings.js',
            },
        },
        // Minification of JS
        uglify: {
            options: {
                banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
            },
            dist: {
                files: {
                    '<%= pkg.dest_paths.js %>app.js': ['<%= concat.dist.dest %>'],
                    // '<%= pkg.dest_paths.js %>page*.js': ['<%= pkg.dest_paths.js %>page*.js'],
                }
            },
            dev: {
                files: {
                    '<%= pkg.dest_paths.js %>modernizr.min.js': ['<%= pkg.project_paths.bower_folder %>modernizr/modernizr.js']
                }
            }
        },
        // CSSmin to minify CSS on production
        cssmin: {
            minify: {
                expand: true,
                cwd: '<%= pkg.dest_paths.css %>',
                src: ['*.css', ],
                dest: '<%= pkg.dest_paths.css %>',
                ext: '.css'
            }
        },
        // JSHint to review JS code before build
        jshint: {
            files: [
                ['<%= pkg.src_paths.js %>**/*.js', '!<%= pkg.src_paths.js %>vendor/**/*.js']
            ],
            options: {
                // options here to override JSHint defaults
                globals: {
                    jQuery: true,
                    console: true,
                    module: true,
                    alert: true,
                    document: true,
                    window: true
                }
            }
        },
        // Compass to handle CSS compilation and concatanation
        compass: {
            dist: {
                options: {
                    config: "config.rb"
                }
            }
        },
        // Copy fonts and images to build output directory
        copy: {
            dist: {
                files: [
                    // Fonts
                    {
                        expand: true,
                        cwd: '<%= pkg.src_paths.fonts %>',
                        src: ['**/*', '!**/*.json'],
                        dest: '<%= pkg.dest_paths.fonts %>'
                    },
                    // Images
                    {
                        expand: true,
                        cwd: '<%= pkg.src_paths.images %>',
                        src: ['**/*', '!**/icons*/**'],
                        dest: '<%= pkg.dest_paths.images %>'
                    },
                    // favicon
                    {
                        expand: true,
                        cwd: 'src/',
                        src: 'favicon.ico',
                        dest: 'build/'
                    },
                    // jquery-ui theme css
                    {
                        expand: true,
                        cwd: '<%= pkg.project_paths.bower_folder %>jquery-ui/themes/smoothness',
                        src: ['**/*'],
                        dest: '<%= pkg.dest_paths.css %>'
                    }
                    // // select2 v3.4.5 css (no sass for this version)
                    // {
                    //     expand: true,
                    //     cwd: '<%= pkg.project_paths.bower_folder %>select2',
                    //     // src: ['select2.css', 'select2.png', 'select2x2.png', 'select2-spinner.gif'],
                    //     src: ['select2.css'],
                    //     dest: '<%= pkg.dest_paths.css %>'
                    // }
                ]
            }
        },
        // Watch task to compile files live
        watch: {
            js: {
                files: ['<%= jshint.files %>'],
                tasks: ['jshint', 'concat']
            },
            scss: {
                files: ['<%= pkg.src_paths.scss %>**/**/*.scss'],
                tasks: ['compass']
            },
            images: {
                files: [
                    '<%= pkg.src_paths.images %>**/*.jpg',
                    '<%= pkg.src_paths.images %>**/*.gif',
                    '<%= pkg.src_paths.images %>**/*.png'
                ],
                tasks: ['copy']
            },
            fonts: {
                files: [
                    '<%= pkg.src_paths.fonts %>**/*.eot',
                    '<%= pkg.src_paths.fonts %>**/*.woff',
                    '<%= pkg.src_paths.fonts %>**/*.svg',
                    '<%= pkg.src_paths.fonts %>**/*.ttf'
                ],
                tasks: ['copy']
            },
            templates: {
                files: [
                    '<%= pkg.template_paths.templates %>**/*.swig',
                    '<%= pkg.template_paths.data %>**/*.{json,yml}'
                ],
                tasks: ['assemble']
            }
        },
        // Run local server
        connect: {
            server: {
                options: {
                    keepalive: true,
                    base: '<%= pkg.dest_paths.assets %>'
                }
            }
        },
        // Generate Javascript documentation
        docco: {
            debug: {
                src: ['<%= pkg.src_paths.js %>**/*.js'],
                options: {
                    output: 'docs/js/'
                }
            }
        },
        // Clean delivery folder on distribution build
        clean: ["<%= pkg.dest_paths.assets %>",],
        // Assemble Swig templates
        assemble : {
            options: {
                engine: 'swig',
                data: ['<%= pkg.template_paths.data %>*.{json,yml}'],
                assets: '<%= pkg.dest_paths.assets %>',
                partials: '<%= pkg.template_paths.partials %>**/*.swig',
                layoutdir: '<%= pkg.template_paths.layouts %>',
                layoutext: '.swig',
                // layout: 'base',
                layout: false,
                flatten: true
            },
            pages: {
                src: ['<%= pkg.template_paths.pages %>*.swig'],
                dest: '<%= pkg.dest_paths.assets %>'
            }
        },
        // HTML Prettify after distribution build
        prettify: {
            files: {
                expand: true,
                cwd: '<%= pkg.dest_paths.assets %>',
                ext: '.html',
                src: ['*.html'],
                dest: '<%= pkg.dest_paths.assets %>'
            }
        },

        uncss: {
            dist: {
                src: ['src/emails/daily-digest-code.html', 'src/emails/join-team-code.html', 'src/emails/sources-indexed-code.html', 'src/emails/activation-code.html'],
                dest: 'build/emails/css/tidy.css',
                options: {
                    report: 'min' // optional: include to report savings
                }
            }
        },

        processhtml: {
            dist: {
                files: {
                    'build/emails/daily-digest-code.html': ['src/emails/daily-digest-code.html'],
                    'build/emails/join-team-code.html': ['src/emails/join-team-code.html'],
                    'build/emails/sources-indexed-code.html': ['src/emails/sources-indexed-code.html'],
                    'build/emails/activation-code.html': ['src/emails/activation-code.html']
                }
            }
        },

        premailer: {
            main: {
                options: {
                    verbose: true,
                    // removeClasses: true,
                    baseUrl: 'https://s3-eu-west-1.amazonaws.com/gloo-emails/'
                },
                files: {
                    'build/emails/daily-digest-inline.html': ['build/emails/daily-digest-code.html'],
                    'build/emails/join-team-inline.html': ['build/emails/join-team-code.html'],
                    'build/emails/sources-indexed-inline.html': ['build/emails/sources-indexed-code.html'],
                    'build/emails/activation-inline.html': ['build/emails/activation-code.html']
                }
            }
        },

        replace: {
            example: {
                src: ['build/emails/daily-digest-inline.html', 'build/emails/join-team-inline.html', 'build/emails/sources-indexed-inline.html', 'build/emails/activation-inline.html'], // source files array (supports minimatch) 
                dest: 'build/emails/', // destination directory or file 
                replacements: [{
                    from: '<!-- &nbsp; -->', // string replacement 
                    to: '&nbsp;'
                }, {
                    from: '%7B%7B',
                    to: '{{'
                },{
                    from: '%7D%7D',
                    to: '}}'
                },{
                    from: 'UNSUBLINK',
                    to: "<a href='{{unsub \"https://gluru.co/app/unsubscribe\"}}' style='color:white!important;text-decoration:underline'><span style=\"color:white;\">unsubscribe</span></a>"


                // }, {
                //     from: /(f|F)(o{2,100})/g, // regex replacement ('Fooo' to 'Mooo') 
                //     to: 'M$2'
                // }, {
                //     from: 'Foo',
                //     to: function(matchedWord) { // callback replacement 
                //         return matchedWord + ' Bar';
                //     }
                }]
            }
        }

    });

    grunt.loadNpmTasks('grunt-uncss');
    grunt.loadNpmTasks('grunt-processhtml');
    grunt.loadNpmTasks('grunt-premailer');
    grunt.loadNpmTasks('grunt-text-replace');

    grunt.loadNpmTasks('assemble');
    grunt.loadNpmTasks('grunt-prettify');
    grunt.loadNpmTasks('grunt-contrib-clean');

    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    
    grunt.loadNpmTasks('grunt-contrib-compass');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    
    grunt.loadNpmTasks('grunt-contrib-watch');
    
    grunt.loadNpmTasks('grunt-contrib-copy');
    
    grunt.loadNpmTasks('grunt-docco');
    grunt.loadNpmTasks('grunt-contrib-connect');

    grunt.registerTask('build', ['assemble', 'jshint', 'concat', 'uglify:dev', 'compass', 'copy']);
    grunt.registerTask('dist', ['clean', 'assemble', 'prettify', 'jshint', 'concat', 'uglify', 'compass', 'cssmin', 'copy']);
    grunt.registerTask('serve', 'connect');
    grunt.registerTask('email', ['uncss', 'processhtml', 'premailer', 'replace']);

};
