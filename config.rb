# Require any additional compass plugins here.
# this seems to work as well as require - not sure which is best?
# add_import_path "bower_components/susy/sass/"
# require 'susy' # load susy css grid
add_import_path "bower_components/bourbon/app/assets/stylesheets"
add_import_path "bower_components/neat/app/assets/stylesheets"
add_import_path "bower_components/normalize-scss"
add_import_path "bower_components/scut/dist"
add_import_path "bower_components/Retina-sprites-for-Compass/src"
# add_import_path "bower_components/scss-tooltips/vendor/"
add_import_path "bower_components/select2/src/scss"


# Set this to the root of your project when deployed:
# http_path = ""
http_generated_images_path = "../img/" # path to generated spritemap image
css_dir = "build/css"
sass_dir = "src/scss"
images_dir = "src/img"
javascripts_dir = "src/js"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
