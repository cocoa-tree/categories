#!/usr/bin/env rake

require 'bundler/setup'
Bundler.require

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

task :mapping do
  system 'curl https://cocoa-tree-seeds.herokuapp.com/cocoa_pods_categories.json > cocoa_pods_categories.json'
end

task :categories do
  data = File.read('cocoa_pods_categories.json')
  mapping = JSON.parse(data)
  categories = {}
  mapping.each do |pod, category|
    categories[category] ||= 0
    categories[category] += 1
  end
  File.open('cocoa_pod_categories.json', 'w') do |f|
    f.puts JSON.dump(categories)
  end
end
