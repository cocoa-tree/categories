#!/usr/bin/env rake

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

task :mapping do
  system 'curl https://cocoa-tree-seeds.herokuapp.com/cocoa_pods_categories.json > cocoa_pods_categories.json'
end
