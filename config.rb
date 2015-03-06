# Require any additional compass plugins here.
# OLD PATH FROM NEWER VERSION OF BOURBON which doesnt work with compass
# add_import_path "bower_components/bourbon/dist"
add_import_path "bower_components/bourbon/app/assets/stylesheets"
add_import_path "bower_components/neat/app/assets/stylesheets"
add_import_path "bower_components/normalize-scss"
add_import_path "bower_components/scut/dist"
add_import_path "bower_components/Retina-sprites-for-Compass/src"


# Set this to the root of your project when deployed:
# http_path = ""
http_generated_images_path = "../img/"
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
