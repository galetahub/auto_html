require 'rake/testtask'

desc 'Default: run tests'
task :default => :test

desc 'Test AutoHtml'
Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/**/*_test.rb'
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "galetahub-auto_html"
    gem.summary = %{Automatically transforms urls (via domain) and includes the destination resource (Vimeo, YouTube movie, image, ...) in your document}
    gem.email = "galeta.igor@gmail.com"
    gem.homepage = "https://github.com/galetahub/auto_html"
    gem.description = "Automatically transforms urls (via domain) and includes the destination resource (Vimeo, YouTube movie, image, ...) in your document"
    gem.authors = ["Igor Galeta"]
    gem.files.exclude 'test.sqlite3'
    gem.has_rdoc = false
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

