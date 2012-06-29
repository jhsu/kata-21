require 'bundler'
Bundler.require
require 'rake/testtask'

task :default => :test

desc "Run the unit tests in test/unit"
Rake::TestTask.new(:test) do |t|
  t.libs << "spec"
  t.pattern = 'spec/**/*_spec.rb'
  t.verbose = true
end
