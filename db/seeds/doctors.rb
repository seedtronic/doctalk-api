Doctor.find_or_initialize_by(name: 'Afonso Pablo').update!(lat: -22.946491, lng: -43.185800, specialty: Specialty.find_by(title: 'Acupuntura'), image_url: 'https://bestdoctors.com/wp-content/uploads/2016/11/Doctor-with-Tablet.jpg')
Doctor.find_or_initialize_by(name: 'Bruno Pedro').update!(lat: 22.938364, lng: -43.176344, specialty: Specialty.find_by(title: 'Anestesiologia'), image_url: 'http://www.chapelhillfamilydoctors.com.au/images/doctor-img2.png')
Doctor.find_or_initialize_by(name: 'Maria Julia').update!(lat: -22.956085, lng: -43.177345, specialty: Specialty.find_by(title: 'Cardiologia'), image_url: 'http://www.slate.com/content/dam/slate/blogs/xx_factor/2016/10/14/black_doctor_says_airline_staff_didn_t_believe_she_was_a_doctor/thinkstockphotos86519649.jpg.CROP.promovar-mediumlarge.jpg')
