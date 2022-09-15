puts "Seeding begin"

puts "Seeding drivers"

driver1 = Driver.create(name:"Mwangi Mathu",age:28,gender:"male",license_number:"CDN100",vehicle_type_licensed:"Truck",driver_image:"https://www.ttnews.com/sites/default/files/images/articles/trucker.jpg")

driver2 = Driver.create(name:"Agnes Nyambane",age:26,gender:"female",license_number:"CDN101",vehicle_type_licensed:"Pick_up",driver_image:"https://media.istockphoto.com/photos/food-delivering-looking-for-right-address-picture-id1218429256?k=20&m=1218429256&s=612x612&w=0&h=AmEG4G-cTxDjbvIElTxuqnz5250gMiOA2pseqqYYu14=")

driver3 = Driver.create(name:"John Oketch",age:30,gender:"male",license_number:"CDN102",vehicle_type_licensed:"Van",driver_image:"https://media.istockphoto.com/photos/transportation-services-young-male-driver-in-blue-uniform-driving-a-picture-id1272996865?k=20&m=1272996865&s=612x612&w=0&h=Uom70dDIoKFvJRXkDgRnSw_sPQjFbo0eji-SpMII1xk=")

driver4 = Driver.create(name:"Tasha Chali",age:32,gender:"female",license_number:"CDN103",vehicle_type_licensed:"Truck",driver_image:"https://www.trucks.com/wp-content/uploads/2016/09/Female-Truck-Driver-Cab-Sterring.jpg")

driver5 = Driver.create(name:"Waithaka Peter",age:34,gender:"male",license_number:"CDN104",vehicle_type_licensed:"Van",driver_image:"https://media.istockphoto.com/photos/truck-driver-job-middle-aged-trucker-driving-truck-picture-id1214344751?k=20&m=1214344751&s=612x612&w=0&h=YgNjyykdOKBVf6yz_F91hvnykjrHJfLlk6DU7K2OHbQ=")

puts "Seeding vehicles"

vehicle1 = Vehicle.create(registration_no:"KBA100A",vehicle_type:"Truck",vehicle_image_url:"https://previews.123rf.com/images/glougass/glougass0807/glougass080700011/3311543-white-truck-and-trailer.jpg?fj=1",vehicle_condition:"Good") 

vehicle2 = Vehicle.create(registration_no:"KBD606C",vehicle_type:"Van",vehicle_image_url:"https://thumbs.dreamstime.com/b/modern-white-van-isolated-background-102258884.jpg",vehicle_condition:"Good")

vehicle3 = Vehicle.create(registration_no:"KBG908F",vehicle_type:"Pick-up",vehicle_image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Ford_F-150_crew_cab_--_05-28-2011.jpg/1200px-Ford_F-150_crew_cab_--_05-28-2011.jpg",vehicle_condition:"Good")

vehicle4 = Vehicle.create(registration_no:"KBH354G",vehicle_type:"Truck",vehicle_image_url:"https://upload.wikimedia.org/wikipedia/commons/1/11/Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg",vehicle_condition:"Good")

vehicle5 = Vehicle.create(registration_no:"KBJ130K",vehicle_type:"Van",vehicle_image_url:"https://www.insauga.com/wp-content/uploads/2021/08/similarimage-620x256.jpg",vehicle_condition:"Good")

vehicle6 = Vehicle.create(registration_no:"KBM545L",vehicle_type:"Pick-up",vehicle_image_url:"https://www.onelap.in/news/wp-content/uploads/2020/04/Bolero-pickup-featured-image.png",vehicle_condition:"Good")

vehicle7 = Vehicle.create(registration_no:"KBP452O",vehicle_type:"Truck",vehicle_image_url:"https://image.shutterstock.com/image-vector/vector-truck-template-isolated-on-260nw-623892344.jpg",vehicle_condition:"Good")

vehicle8 = Vehicle.create(registration_no:"KBT090S",vehicle_type:"Van",vehicle_image_url:"https://st2.depositphotos.com/1063296/11578/i/950/depositphotos_115780782-stock-photo-modern-white-van-side-tail.jpg",vehicle_condition:"Good")

vehicle9 = Vehicle.create(registration_no:"KBW057V",vehicle_type:"Pick-up",vehicle_image_url:"https://professionalpickup.com/wp-content/uploads/2022/03/Audi-Pickup-Truck-Concept-by-Kleber-Silva-2022-Professional-Pickup-01.jpg",vehicle_condition:"Good")

vehicle10 = Vehicle.create(registration_no:"KBZ001A",vehicle_type:"Truck",vehicle_image_url:"https://imageio.forbes.com/specials-images/imageserve/62214a00c67ee86dc7f458d1/0x0.jpg?format=jpg&crop=1763,1173,x153,y226,safe&width=1200",vehicle_condition:"Good")


puts "Seeding tasks"

task1 = Task.create(task_description:"Transporting 100,000 cartons of milk",departure_location:"Headquarters",destination_location:"Mombasa distributor",estimated_distance_in_km:"488km",driver_id:driver4.id,vehicle_id:vehicle10.id)

task2 = Task.create(task_description:"Transporting 10,000 cartons of milk",departure_location:"Machakos distributor",destination_location:"Nyeri distributor",estimated_distance_in_km:"205km",driver_id:driver5.id,vehicle_id:vehicle5.id)

task3 = Task.create(task_description:"Transporting 100,000 cartons of yoghurt",departure_location:"Thika distributor",destination_location:"Mombasa distributor",estimated_distance_in_km:"525km",driver_id:driver1.id,vehicle_id:vehicle7.id)

task4 = Task.create(task_description:"Transporting 50,000kg of cheese",departure_location:"Nyeri distributor",destination_location:"Nakuru distributor",estimated_distance_in_km:"170km",driver_id:driver3.id,vehicle_id:vehicle8.id)

task5 = Task.create(task_description:"Transporting 10,000 cartons of milk",departure_location:"Machakos distributor",destination_location:"Headquarters",estimated_distance_in_km:"65km",driver_id:driver2.id,vehicle_id:vehicle6.id)

task6 = Task.create(task_description:"Transporting 10,000 cartons of yoghurt",departure_location:"Mombasa distributor",destination_location:"Headquarters",estimated_distance_in_km:"488km",driver_id:driver2.id,vehicle_id:vehicle9.id)

task7 = Task.create(task_description:"Transporting 1000kg cartons of yoghurt",departure_location:"Headquarters",destination_location:"Thika distributor",estimated_distance_in_km:"48km",driver_id:driver5.id,vehicle_id:vehicle2.id)

task8 = Task.create(task_description:"Transporting 1000kg of cheese",departure_location:"Headquarters",destination_location:"Nyeri distributor",estimated_distance_in_km:"143km",driver_id:driver3.id,vehicle_id:vehicle8.id)

task9 = Task.create(task_description:"Transporting 1000 cartons of milk",departure_location:"Headquarters",destination_location:"Machakos distributor",estimated_distance_in_km:"65km",driver_id:driver5.id,vehicle_id:vehicle5.id)

task10 = Task.create(task_description:"Moving 5000 cartons of yoghurt",departure_location:"Headquarters",destination_location:"Thika distributor",estimated_distance_in_km:"48km",driver_id:driver2.id,vehicle_id:vehicle3.id)

task11 = Task.create(task_description:"Transporting 100,000kg of cheese",departure_location:"Headquarters",destination_location:"Nakuru distributor",estimated_distance_in_km:"161km",driver_id:driver1.id,vehicle_id:vehicle7.id)

task12 = Task.create(task_description:"Transporting 100,000 cartons of milk",departure_location:"Headquarters",destination_location:"Mombasa distributor",estimated_distance_in_km:"488km",driver_id:driver4.id,vehicle_id:vehicle10.id)












puts "Seeding end"