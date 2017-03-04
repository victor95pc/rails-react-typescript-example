task :before_assets_precompile do
  system('./node_modules/.bin/tsc')
end

Rake::Task['assets:precompile'].enhance ['before_assets_precompile']
