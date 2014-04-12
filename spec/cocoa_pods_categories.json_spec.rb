require 'spec_helper'

describe 'cocoa_pods_categories.json' do
  it 'is parseable' do
    data = File.read('cocoa_pods_categories.json')
    JSON.parse(data)
  end
end
