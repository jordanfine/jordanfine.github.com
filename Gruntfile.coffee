module.exports = (grunt) ->
	grunt.initConfig
		pkg: grunt.file.readJSON('package.json')
		coffee: 
			site:
				src:	['assets/scripts/portfolio.coffee']
				dest: 	'public/js/portfolio.js'

		stylus:
			site:
				src: ['assets/styles/portfolio.styl']
				dest: 'public/css/<%= pkg.name %>.css'

		jade: 
			compile:
				files:
					"index.html" : ["index.jade"]

		watch:
			site: 
				files: ['assets/scripts/portfolio.coffee', 'assets/styles/portfolio.styl', 'index.jade']
				tasks: ['build_site']

	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.loadNpmTasks('grunt-contrib-stylus')
	grunt.loadNpmTasks('grunt-contrib-jade')

	grunt.registerTask('default', ['coffee', 'stylus', 'jade'])
	grunt.registerTask('build_site', ['coffee:site', 'stylus:site', 'jade:compile'])
