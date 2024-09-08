# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
Rails.application.load_tasks


namespace :import do 
  desc "import data from json to data_items"
  task json_data: :environment do 
    require 'json'

    file_path = Rails.root.join( 'public', 'population_data.json')
    File.exist?(file_path)
    file_content = File.read(file_path)
    data = JSON.parse(file_content)

    data.each do |item|
      DataItem.create!( 
        country_name: item['Country Name'],
        country_code: item['Country Code'],
        year: item['Year'],
        value: item['Value']
      )
    end
  end
end