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

# Aqui são especificados os arquivos da pasta app/assets/stylesheets
# Apesar dos arquivos serem de extensão sass (.scss), devem ser declarados como css, pois é a versão final que é executada no projeto.
Rails.application.config.assets.precompile += %w( coins.css
                                                  mining_types.css
                                                  scaffolds.css
                                                  welcome.css )

# Realizar o mesmo processo com arquivos .js da pasta app/assets/javascripts
Rails.application.config.assets.precompile += %w( cable.js
                                                  coins.js
                                                  mining_types.js
                                                  welcome.js )
