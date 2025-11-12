config.public_file_server.enabled = true if config.respond_to?(:public_file_server)
config.serve_static_files = true if config.respond_to?(:serve_static_files)
config.assets.compile = true
config.assets.initialize_on_precompile = false if config.assets.respond_to?(:initialize_on_precompile)
