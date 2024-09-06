namespace :data_import do 
  #run python and import data
  task import: :environment do 
    #run the python script
    python_path = "/Users/zackariasvalavanis/Desktop/Actualize/Project1/flask_app/my_env/bin/python"
    python_script = "/Users/zackariasvalavanis/Desktop/Actualize/Project1/flask_app/pyth.py"

    result = system("#{python_path} #{python_script}")

    
    file_path = "/Users/zackariasvalavanis/Desktop/Actualize/Project1/flask-app/data.json"

    if File.exists?(file_path)
      file = File.read(file_path)
      data = JSON.parse(file)
      puts 'data loaded'
    else 
      puts 'data file not found'

      data.each do |item|
        DataItem.create!(
          name: item[14],
          description: item[15])
      end 
    end 
  end 
end 

# I am currently working on fixing this python script so I can upload the json data onto rails database. I am having issues with getting the files to run properly. The python is working to save down the json file I am just not able to access it on rails. Once this is done, create a route and controller to access the data and print it out. Get this done sunday and then we can create more data with python and eventually the frontend with react / javascript. 