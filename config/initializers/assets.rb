# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( 'application.scss', 'application2.css', 'scaffolds.scss', 'toolkit-light.css', 'application.js' 'application2.js', 'chart.js', 'cable.js', 'jquery.min.js', 'popper.min.js', 'toolkit-entypo.eot', 'toolkit-entypo.ttf', 'toolkit-entypo.woff', 'toolkit-entypo.woff2' )
