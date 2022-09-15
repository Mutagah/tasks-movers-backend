class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"
  # task :allow_methods, "GET, HEAD, POST, PUT, OPTIONS, DELETE"
  set :allow_origin, "http:/localhost:3000"
   set :bind, '0.0.0.0'
configure do
  enable :cross_origin
end
before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

# routes...
options "*" do
  response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow-Origin"] = "*"
  200
end


#get method

      get "/drivers/:id" do
          driver = Driver.find(params[:id])
          driver.to_json
      end

      get "/drivers" do
          drivers = Driver.all
          drivers.to_json
      end

      get "/tasks" do
         tasks = Task.all
         tasks.to_json(include: [:driver, :vehicle])
      end

      get "/tasks/:id" do
        task = Task.find(params[:id])
        task.to_json(include: [:driver, :vehicle])
      end

      get "/vehicles" do
        vehicles = Vehicle.all
        vehicles.to_json
      end

      get "/vehicles/:id" do
        vehicle = Vehicle.find(params[:id])
        vehicle.to_json
      end
      
# post methods

      post '/driver' do
          task = Driver.create(  
          name: params[:name], 
          age: params[:age],
          gender: params[:gender],
          license_number: params[:license_number],
          vehicle_type_licensed: params[:vehicle_type_licensed],
          driver_image: params[:driver_image]
          )
          task.to_json
      end

    post '/vehicle' do
      vehicle = Vehicle.create(
        registration_no: params[:registration_no],
        vehicle_type: params[:vehicle_type],
        vehicle_image_url: params[:vehicle_image_url],
        vehicle_condition: params[:vehicle_condition]
      )
      vehicle.to_json
    end

    post '/tasks' do
     task = Task.create(
        task_description: params[:task_description],
        departure_location: params[:departure_location],
        destination_location: params[:destination_location],
        estimated_distance_in_km: params[:estimated_distance_in_km],
        driver_id: params[:driver_id], 
        vehicle_id: params[:vehicle_id]
      )
      task.to_json
    end

# patch method

    patch '/driver/:id' do
      driver_fixing = Driver.find(params[:id])
      driver_fixing.update(
        name: params[:name],
        age: params[:age],
        gender: params[:gender],
        license_number: params[:license_number],
        vehicle_type_licensed: params[:vehicle_type_licensed],
        driver_image: params[:driver_image]
      )
      driver_fixing.to_json
    end


    patch '/vehicles/:id' do
      vehicle_fixing = Vehicle.find(params[:id])
      vehicle_fixing.update(
        registration_no: params[:registration_no],
        vehicle_type: params[:vehicle_type],
        vehicle_image_url: params[:vehicle_image_url],
        vehicle_condition: params[:vehicle_condition]
      )
      vehicle_fixing.to_json
    end

    patch '/tasks/:id' do
      task_fixing = Task.find(params[:id])
      task_fixing.update(
          task_description: params[:task_description], 
          departure_location: params[:departure_location],
          destination_location: params[:destination_location],
          estimated_distance_in_km: params[:estimated_distance_in_km],
          driver_id: params[:driver_id],
          vehicle_id: params[:vehicle_id]
      )
      task_fixing.to_json
    end


#delete method

    #delete method

    delete '/driver/:id' do
      delete_driver = Driver.find(params[:id])
      delete_driver.destroy
      delete_driver.to_json
  end
    delete '/vehicles/:id' do
      delete_vehicle = Vehicle.find(params[:id])
      delete_vehicle.destroy
      delete_vehicle.to_json
  end
    delete '/task/:id' do
      delete_task = Task.find(params[:id])
      delete_task.destroy
      delete_task.to_json
  end
end






