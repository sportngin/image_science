require 'bundler'
Bundler::GemHelper.install_tasks

task :build => [:compile, :chmod]

task :compile do
  `ruby ext/image_science/extconf.rb`
  `make`
  `mv extension.* lib/image_science/`
end

task :chmod do
  Dir['lib/image_science/extension.*'].each do |f|
    File.chmod(0775, f)
  end
end

