require "open-uri"

puts "Deleting appointments"
Appointment.destroy_all

puts "Deleting vaccinations"
Vaccination.destroy_all

puts "Deleting vaccines"
Vaccine.destroy_all

puts "Deleting studies"
Study.destroy_all

puts "Deleting clinical histories"
ClinicalHistory.destroy_all

puts "Deleting pets"
Pet.destroy_all

puts "Deleting species types"
SpeciesType.destroy_all

puts "Deleting messages"
Message.destroy_all

puts "Deleting chatrooms"
Chatroom.destroy_all

puts "Deleting reviews"
Review.destroy_all

puts "Deleting users"
User.destroy_all

puts "Creating users-veterinaries"
vet1 = User.new(email: "vetboris@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary Boris", doctors: "Dr.Boris, Dr.Sebastien", phone: "+54659856523", location: "Caballito", longitude: -58.45, latitude: -34.61667, speciality: "Clinic, Bath, Radiology, Lab")
vet2 = User.new(email: "vet2@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Dog Groomer and Bath Sebastien", doctors: "Dra. Carolina, Dra. Sofia", phone: "+65649856523", location: "Recoleta", longitude: 58.2326, latitude: 34.3526, speciality: "Bath")
vet3 = User.new(email: "vet3@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary PetLover", doctors: "Dra. Clara, Dr. Lucas", phone: "+54659858623", location: "Mendoza", longitude: -68.8472, latitude: -32.8903, speciality: "Clinic, Surgery, Radiology, Lab")
vet4 = User.new(email: "vet4@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Study and radiology center ScoobyDoo", doctors: "Dr. Juan Perez", phone: "+54659856523", location: "Santa Fe", longitude: 60.411680, latitude: 31.020240, speciality: "Clinic, Radiology, Nutrition, lab")
vet5 = User.new(email: "vet5@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Radiolody Center Little Horse", doctors: "Dr. Pedro Gomez, Dra. Carla Fernández", phone: "+54659855489", location: "Caballito", longitude: -58.43809, latitude: -34.5883, speciality: "Clinic, Radiology, Nutrition, lab")
vet6 = User.new(email: "vet6@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary Happy Dog", doctors: "Dr. Carlos Luis, Dra. Marta Sanchez", phone: "+5446855489", location: "Caballito", longitude: -58.4119, latitude: -34.63337, speciality: "Clinic, Radiology, Nutrition, lab")
vet7 = User.new(email: "vet7@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Dog Groomer Small Dog", doctors: "Dr. Eduardo Gonzalez", phone: "+54645685489", location: "Caballito", longitude: -58.402192, latitude: -34.6511, speciality: "Clinic, Radiology, Nutrition, lab")

vet1.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/borisclinic.png')), filename: 'borisclinic.png')
vet2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/sebastien.png')), filename: 'sebastien.png')
vet3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/petlover.png')), filename: 'petlover.png')
vet4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/scooby.png')), filename: 'scooby.png')
vet5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/horse.png')), filename: 'horse.png')
vet6.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/happydog.png')), filename: 'happydog.png')
vet7.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/smalldog.png')), filename: 'smalldog.png')

vet1.save!
vet2.save!
vet3.save!
vet4.save!
vet5.save!
vet6.save!
vet7.save!
puts "Done"

puts "Creating users-pet-owners"
sofi = URI.open("https://ca.slack-edge.com/T02NE0241-U03NNS0RVHV-f5e916a99167-512")
caro = URI.open("https://ca.slack-edge.com/T02NE0241-U03NS6EMXFY-e01b612d5e07-512")
clari = URI.open("https://ca.slack-edge.com/T02NE0241-U03PQPPGXUG-abbe6fa51dcc-512")
lu = URI.open("https://ca.slack-edge.com/T02NE0241-U03PBS9AV17-a13d8e7e6e83-512")

owner1 = User.create!(email: "sofi@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Sofi Larrea", phone: "+54 9 2615 98-3680")
owner2 = User.create!(email: "caro@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Caro Arlia", phone: "+34 691 34 58 23")
owner3 = User.create!(email: "clari@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Clari Ursini", phone: "+54 9 1149608212")
owner4 = User.create!(email: "lucas@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Lucas Cappa", phone: "+54 9 11 6371-5073")

owner1.photo.attach(io: sofi, filename: "Sofi.png", content_type: "image/png")
owner2.photo.attach(io: caro, filename: "Caro.png", content_type: "image/png")
owner3.photo.attach(io: clari, filename: "Clari.png", content_type: "image/png")
owner4.photo.attach(io: lu, filename: "Lu.png", content_type: "image/png")
puts "Done"

puts "Creating species types"
species1 = SpeciesType.create!(name: "Dog")
species2 = SpeciesType.create!(name: "Cat")
species3 = SpeciesType.create!(name: "Bird")
species4 = SpeciesType.create!(name: "Hamster")
puts "Done"

puts "Creating pets"
pet1 = Pet.new(user: owner1, name: "Aurelia", species_type: species1, birthday: Date.tomorrow)
pet2 = Pet.new(user: owner4, name: "Ramon", species_type: species2, birthday: Date.today)
pet3 = Pet.new(user: owner3, name: "Lisa", species_type: species1, birthday: Date.tomorrow)
pet4 = Pet.new(user: owner1, name: "Homero", species_type: species3, birthday: Date.today)
pet5 = Pet.new(user: owner2, name: "Pepe", species_type: species2, birthday: Date.tomorrow)
pet6 = Pet.new(user: owner3, name: "Lolo", species_type: species3, birthday: Date.today)
pet7 = Pet.new(user: owner1, name: "Matilda", species_type: species2, birthday: Date.tomorrow)
pet8 = Pet.new(user: owner4, name: "Kiki", species_type: species4, birthday: Date.today)
pet9 = Pet.new(user: owner3, name: "Nelly", species_type: species1, birthday: Date.tomorrow)

photo1 = URI.open("https://images.unsplash.com/photo-1587300003388-59208cc962cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
photo2 = URI.open("https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=843&q=80")
photo3 = URI.open("https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80")
photo4 = URI.open("https://images.unsplash.com/photo-1444464666168-49d633b86797?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80")
photo5 = URI.open("https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80")
photo6 = URI.open("https://images.unsplash.com/photo-1480044965905-02098d419e96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
photo7 = URI.open("https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
photo8 = URI.open("https://images.unsplash.com/photo-1588331086909-9861b6e15a30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")
photo9 = URI.open("https://images.unsplash.com/photo-1547569026-e7e7c51be6f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=433&q=80")

pet1.photo.attach(io: photo1, filename: "Aurelia.png", content_type: "image/png")
pet2.photo.attach(io: photo2, filename: "Ramon.png", content_type: "image/png")
pet3.photo.attach(io: photo3, filename: "Lisa.png", content_type: "image/png")
pet4.photo.attach(io: photo4, filename: "Homero.png", content_type: "image/png")
pet5.photo.attach(io: photo5, filename: "Pepe.png", content_type: "image/png")
pet6.photo.attach(io: photo6, filename: "Lolo.png", content_type: "image/png")
pet7.photo.attach(io: photo7, filename: "Matilda.png", content_type: "image/png")
pet8.photo.attach(io: photo8, filename: "Kiki.png", content_type: "image/png")
pet9.photo.attach(io: photo9, filename: "Nelly.png", content_type: "image/png")

pet1.save!
pet2.save!
pet3.save!
pet4.save!
pet5.save!
pet6.save!
pet7.save!
pet8.save!
pet9.save!

puts "Done"

puts "Creating clinical histories"

ch1pet1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Came for vaccination and control. Weight 5kg. Suggested a bland diet to treat a dog's upset stomach. Rice and chicken removes the irritating substances from food to help your dog’s digestive system rebalance itself.", date: DateTime.new(2022,9,8,11,0,6), name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Has ear pain. Asked for a radiology. Clean ears using a medicated ear cleanser. Prescribed an ear cleanser and a topical medication to use at home. Prescribed oral antibiotics and anti-inflammatory medications.", date: DateTime.new(2022,8,20,11,0,6), name: "Ear pain", type_of_history: "Consult")
ch3pet1 = ClinicalHistory.create!(user: vet1, pet: pet1, description: "Lab results. Everything is ok. Normal results", date: DateTime.new(2022,4,12,11,0,6), name: "General check", type_of_history: "Study")
ch4pet1 = ClinicalHistory.create!(user: vet2, pet: pet1, description: "Has a skin eruption. Sent for a lab result", date: DateTime.new(2021,12,5,11,0,6), name: "Eruption", type_of_history: "Consult")
ch5pet1 = ClinicalHistory.create!(user: vet2, pet: pet1, description: "Vaccines of the year", date: DateTime.new(2021,6,17,11,0,6), name: "Vaccines", type_of_history: "Vaccination")

ch1pet2 = ClinicalHistory.create!(user: vet3, pet: pet2, description: "Came for vaccination and control. Weight 10kg.", date: DateTime.new(2020,6,20,11,0,6), name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet2 = ClinicalHistory.create!(user: vet3, pet: pet2, description: "Has ear pain. Asked for a radiology.", date: Date.today, name: "Dolor oidos", type_of_history: "Consult")
ch3pet2 = ClinicalHistory.create!(user: vet1, pet: pet2, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet2 = ClinicalHistory.create!(user: vet2, pet: pet2, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Eruption", type_of_history: "Consult")
ch5pet2 = ClinicalHistory.create!(user: vet4, pet: pet2, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

ch1pet3 = ClinicalHistory.create!(user: vet3, pet: pet3, description: "Came for vaccination and control. Weight 20kg.", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet3 = ClinicalHistory.create!(user: vet3, pet: pet3, description: "Has ear pain. Asked for a radilogy.", date: Date.today, name: "Ear pain", type_of_history: "Consult")
ch3pet3 = ClinicalHistory.create!(user: vet1, pet: pet3, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet3 = ClinicalHistory.create!(user: vet4, pet: pet3, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Skin eruption", type_of_history: "Consult")
ch5pet3 = ClinicalHistory.create!(user: vet4, pet: pet3, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

ch1pet4 = ClinicalHistory.create!(user: vet3, pet: pet4, description: "Came for vaccination and control. Weight 20kg.", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet4 = ClinicalHistory.create!(user: vet3, pet: pet4, description: "Has ear pain. Asked for a radilogy.", date: Date.today, name: "Ear pain", type_of_history: "Consult")
ch3pet4 = ClinicalHistory.create!(user: vet1, pet: pet4, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet4 = ClinicalHistory.create!(user: vet4, pet: pet4, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Skin eruption", type_of_history: "Consult")
ch5pet4 = ClinicalHistory.create!(user: vet4, pet: pet4, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

ch1pet5 = ClinicalHistory.create!(user: vet1, pet: pet5, description: "Came for vaccination and control. Weight 5kg", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet5 = ClinicalHistory.create!(user: vet1, pet: pet5, description: "Has ear pain. Asked for a radilogy.", date: Date.today, name: "Ear pain", type_of_history: "Consult")
ch3pet5 = ClinicalHistory.create!(user: vet1, pet: pet5, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet5 = ClinicalHistory.create!(user: vet2, pet: pet5, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Eruption", type_of_history: "Consult")
ch5pet5 = ClinicalHistory.create!(user: vet2, pet: pet5, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

ch1pet6 = ClinicalHistory.create!(user: vet3, pet: pet6, description: "Came for vaccination and control. Weight 10kg.", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet6 = ClinicalHistory.create!(user: vet3, pet: pet6, description: "Has ear pain. Asked for a radilogy.", date: Date.today, name: "Dolor oidos", type_of_history: "Consult")
ch3pet6 = ClinicalHistory.create!(user: vet1, pet: pet6, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet6 = ClinicalHistory.create!(user: vet2, pet: pet6, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Eruption", type_of_history: "Consult")
ch5pet6 = ClinicalHistory.create!(user: vet4, pet: pet6, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

ch1pet7 = ClinicalHistory.create!(user: vet3, pet: pet7, description: "Came for vaccination and control. Weight 20kg.", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet7 = ClinicalHistory.create!(user: vet3, pet: pet7, description: "Has ear pain. Asked for a radilogy.", date: Date.today, name: "Ear pain", type_of_history: "Consult")
ch3pet7 = ClinicalHistory.create!(user: vet1, pet: pet7, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet7 = ClinicalHistory.create!(user: vet4, pet: pet7, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Skin eruption", type_of_history: "Consult")
ch5pet7 = ClinicalHistory.create!(user: vet4, pet: pet7, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

ch1pet8 = ClinicalHistory.create!(user: vet1, pet: pet8, description: "Came for vaccination and control. Weight 5kg", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet8 = ClinicalHistory.create!(user: vet1, pet: pet8, description: "Has ear pain. Asked for a radilogy.", date: Date.today, name: "Ear pain", type_of_history: "Consult")
ch3pet8 = ClinicalHistory.create!(user: vet1, pet: pet8, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet8 = ClinicalHistory.create!(user: vet2, pet: pet8, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Eruption", type_of_history: "Consult")
ch5pet8 = ClinicalHistory.create!(user: vet2, pet: pet8, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

ch1pet9 = ClinicalHistory.create!(user: vet1, pet: pet9, description: "Came for vaccination and control. Weight 5kg", date: Date.today, name: "Vaccine and Control", type_of_history: "Vaccination")
ch2pet9 = ClinicalHistory.create!(user: vet1, pet: pet9, description: "Has ear pain. Asked for a radilogy.", date: Date.today, name: "Ear pain", type_of_history: "Consult")
ch3pet9 = ClinicalHistory.create!(user: vet1, pet: pet9, description: "Lab results. Everything is ok. Normal results", date: Date.today, name: "General check", type_of_history: "Study")
ch4pet9 = ClinicalHistory.create!(user: vet2, pet: pet9, description: "Has a skin eruption. Sent for a lab result", date: Date.today, name: "Eruption", type_of_history: "Consult")
ch5pet9 = ClinicalHistory.create!(user: vet2, pet: pet9, description: "Vaccines of the year", date: Date.today, name: "Vaccines", type_of_history: "Vaccination")

puts "Done"
puts "Creating appointments"
app1 = Appointment.create!(user: vet1, pet: pet1, start_time: DateTime.new(2022,9,25,11,0,6))
app2 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,26,10,0,6))
app3 = Appointment.create!(user: vet2, pet: pet1, start_time: DateTime.new(2022,9,27,12,0,6))
app4 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,9,13,0,6))
app5 = Appointment.create!(user: vet3, pet: pet1, start_time: DateTime.new(2022,9,22,14,0,6))
app6 = Appointment.create!(user: vet2, pet: pet3, start_time: DateTime.new(2022,9,21,15,0,6))
app7 = Appointment.create!(user: vet1, pet: pet1, start_time: DateTime.new(2022,9,20,16,0,6))
app8 = Appointment.create!(user: vet4, pet: pet3, start_time: DateTime.new(2022,9,15,17,0,6))
app9 = Appointment.create!(user: vet3, pet: pet1, start_time: DateTime.new(2022,9,16,10,0,6))
app10 = Appointment.create!(user: vet1, pet: pet2, start_time: DateTime.new(2022,9,17,9,0,6))
app11 = Appointment.create!(user: vet2, pet: pet3, start_time: DateTime.new(2022,9,18,11,0,6))
app12 = Appointment.create!(user: vet4, pet: pet2, start_time: DateTime.new(2022,9,19,12,0,6))
app13 = Appointment.create!(user: vet2, pet: pet1, start_time: DateTime.new(2022,9,10,13,0,6))
app14 = Appointment.create!(user: vet3, pet: pet2, start_time: DateTime.new(2022,9,11,14,0,6))

app15 = Appointment.create!(user: vet1, pet: pet5, start_time: DateTime.new(2022,9,9,10,0,6))
app16 = Appointment.create!(user: vet2, pet: pet6, start_time: DateTime.new(2022,9,18,11,0,6))
app17 = Appointment.create!(user: vet4, pet: pet7, start_time: DateTime.new(2022,9,19,12,0,6))
app18 = Appointment.create!(user: vet2, pet: pet8, start_time: DateTime.new(2022,9,10,13,0,6))
app19 = Appointment.create!(user: vet3, pet: pet9, start_time: DateTime.new(2022,9,11,14,0,6))

app20 = Appointment.create!(user: vet2, pet: pet5, start_time: DateTime.new(2022,9,17,10,0,6))
app21 = Appointment.create!(user: vet3, pet: pet6, start_time: DateTime.new(2022,9,20,11,0,6))
app22 = Appointment.create!(user: vet2, pet: pet7, start_time: DateTime.new(2022,9,21,12,0,6))
app23 = Appointment.create!(user: vet4, pet: pet8, start_time: DateTime.new(2022,9,22,13,0,6))
app24 = Appointment.create!(user: vet4, pet: pet9, start_time: DateTime.new(2022,9,23,14,0,6))

puts "Done"

puts "Creating vaccines"
vaccine1 = Vaccine.create!(name: "Rabies")
vaccine2 = Vaccine.create!(name: "Parvovirus")
vaccine3 = Vaccine.create!(name: "Distemper")
vaccine4 = Vaccine.create!(name: "DHPP")
vaccine6 = Vaccine.create!(name: "Bordetella")
vaccine7 = Vaccine.create!(name: "Leptospirosis")
vaccine8 = Vaccine.create!(name: "Influenza")
vaccine9 = Vaccine.create!(name: "Lyme disease")

puts "Done"

puts "Creating vaccinations"
vaccination1 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet1, expiration_date: Date.new(2023,9,25))
vaccination2 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet2, expiration_date: Date.new(2023,8,25))
vaccination3 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet3, expiration_date: Date.new(2024,9,25))
vaccination4 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet4, expiration_date: Date.new(2023,7,22))
vaccination5 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet5, expiration_date: Date.new(2023,6,20))
vaccination6 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet6, expiration_date: Date.new(2024,9,11))
vaccination7 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet7, expiration_date: Date.new(2025,9,10))
vaccination8 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet8, expiration_date: Date.new(2023,5,22))
vaccination9 = Vaccination.new(vaccine: vaccine1, clinical_history: ch1pet9, expiration_date: Date.new(2023,9,23))

vaccination10 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet1, expiration_date: Date.new(2023,9,25))
vaccination11 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet2, expiration_date: Date.new(2023,8,25))
vaccination12 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet3, expiration_date: Date.new(2024,9,25))
vaccination13 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet4, expiration_date: Date.new(2023,7,22))
vaccination14 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet5, expiration_date: Date.new(2023,6,20))
vaccination15 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet6, expiration_date: Date.new(2024,9,11))
vaccination16 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet7, expiration_date: Date.new(2025,9,10))
vaccination17 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet8, expiration_date: Date.new(2023,5,22))
vaccination18 = Vaccination.new(vaccine: vaccine6, clinical_history: ch5pet9, expiration_date: Date.new(2023,9,23))

bordetella = URI.open("http://www.dogobedience.co.nz/wp-content/uploads/2018/07/Bordetella.png")
parvovirus= URI.open("https://s28489.pcdn.co/wp-content/uploads/2019/02/p1b4h6r5cjefs19eq12ppqbpibo9.jpg")
rabies = URI.open("https://pubs.extension.wsu.edu/images/thumbs/0000703_550.jpeg")

vaccination1.photo.attach(io: bordetella, filename: "Bordetella.png", content_type: "image/png")
vaccination2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination6.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination7.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination8.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')
vaccination9.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Bordetella.png')), filename: 'Bordetella.png')

vaccination10.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination11.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination12.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination13.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination14.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination15.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination16.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination17.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')
vaccination18.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rabies.png')), filename: 'rabies.png')

vaccination1.save!
vaccination2.save!
vaccination3.save!
vaccination4.save!
vaccination5.save!
vaccination6.save!
vaccination7.save!
vaccination8.save!
vaccination9.save!
vaccination10.save!
vaccination11.save!
vaccination12.save!
vaccination13.save!
vaccination14.save!
vaccination15.save!
vaccination16.save!
vaccination17.save!
vaccination18.save!
puts "Done"

puts "Creating studies"
study1 = Study.new(clinical_history: ch2pet1, name: "Radiology")
study2 = Study.new(clinical_history: ch2pet2, name: "Radiology")
study3 = Study.new(clinical_history: ch2pet3, name: "Radiology")
study4 = Study.new(clinical_history: ch2pet4, name: "Radiology")
study5 = Study.new(clinical_history: ch2pet5, name: "Radiology")
study6 = Study.new(clinical_history: ch2pet6, name: "Radiology")
study7 = Study.new(clinical_history: ch2pet7, name: "Radiology")
study8 = Study.new(clinical_history: ch2pet8, name: "Radiology")
study9 = Study.new(clinical_history: ch2pet9, name: "Radiology")
study10 = Study.new(clinical_history: ch3pet1, name: "Lab results")
study11 = Study.new(clinical_history: ch3pet2, name: "Lab results")
study12 = Study.new(clinical_history: ch3pet3, name: "Lab results")
study13 = Study.new(clinical_history: ch3pet4, name: "Lab results")
study14 = Study.new(clinical_history: ch3pet5, name: "Lab results")
study15 = Study.new(clinical_history: ch3pet6, name: "Lab results")
study16 = Study.new(clinical_history: ch3pet7, name: "Lab results")
study17 = Study.new(clinical_history: ch3pet8, name: "Lab results")
study18 = Study.new(clinical_history: ch3pet9, name: "Lab results")
radiology = URI.open("https://c8.alamy.com/zoomses/9/df223ade4a414db5ab83c4fc6c7034d3/2bx8hbx.jpg")
lab = URI.open("https://thumbs.dreamstime.com/z/resultado-del-an%C3%A1lisis-de-sangre-12613767.jpg")
study1.photo.attach(io: radiology, filename: "2bx8hbx.jpg", content_type: "image/jpg")
study2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study6.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study7.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study8.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study9.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/rx.jpg')), filename: 'rx.jpg')
study10.photo.attach(io: lab, filename: "resultado-del-análisis-de-sangre-12613767.jpg", content_type: "image/jpg")
study11.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study12.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study13.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study14.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study15.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study16.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study17.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study18.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/lab.png')), filename: 'lab.png')
study1.save!
study2.save!
study3.save!
study4.save!
study5.save!
study6.save!
study7.save!
study8.save!
study9.save!
study10.save!
study11.save!
study1.save!
study13.save!
study14.save!
study15.save!
study16.save!
study17.save!
study18.save!

puts "Done"

puts "Creating chatrooms"
chatroom = Chatroom.create!(name: "General")
puts "Done"

puts "Creating reviews"
review1 = Review.create!(content: "Great Vet", rating: 4, user: vet1)
review1 = Review.create!(content: "Good experience", rating: 3, user: vet1)
review1 = Review.create!(content: "Awsome", rating: 5, user: vet1)

review1 = Review.create!(content: "More or less", rating: 3, user: vet2)
review1 = Review.create!(content: "Could be better", rating: 2, user: vet2)
review1 = Review.create!(content: "All right", rating: 2, user: vet2)

review1 = Review.create!(content: "Great Vet", rating: 4, user: vet3)
review1 = Review.create!(content: "All right", rating: 3, user: vet3)
review1 = Review.create!(content: "Everything ok", rating: 4, user: vet3)

review1 = Review.create!(content: "Bad experience", rating: 2, user: vet4)
review1 = Review.create!(content: "Could be better", rating: 3, user: vet4)
review1 = Review.create!(content: "All right", rating: 3, user: vet4)

puts "Done"

chatroom = Chatroom.create!(name: "General")
