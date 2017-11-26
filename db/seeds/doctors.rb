doctors = [
  { name: 'Afonso Pablo', lat: -22.946491, lng: -43.185800, specialty: 'Acupuntura', image_url: 'https://bestdoctors.com/wp-content/uploads/2016/11/Doctor-with-Tablet.jpg' },
  { name: 'Bruno Pedro', lat: -22.938364, lng: -43.176344, specialty: 'Anestesiologia', image_url: 'http://www.chapelhillfamilydoctors.com.au/images/doctor-img2.png' },
  { name: 'Maria Julia', lat: -22.956085, lng: -43.177345, specialty: 'Cardiologia', image_url: 'http://www.slate.com/content/dam/slate/blogs/xx_factor/2016/10/14/black_doctor_says_airline_staff_didn_t_believe_she_was_a_doctor/thinkstockphotos86519649.jpg.CROP.promovar-mediumlarge.jpg' },
  { name: 'Carlos Lemos', lat: -22.377483, lng: -41.778139, specialty: 'Angiologia', image_url: 'http://www.800doctor.com/wp-content/uploads/2015/11/Doctor-Consultation.png' },
  { name: 'Luisa Santos', lat: -22.377189, lng: -41.775639, specialty: 'Cirurgia Cardiovascular', image_url: 'http://medirecruitdoctor.com/wp-content/uploads/2014/04/doctor-contour.png' },
  { name: 'Tony Andre', lat: -22.382649, lng: -41.773638, specialty: 'Cirurgia da Mão', image_url: 'https://www.resolvingdiscoverydisputes.com/wp-content/uploads/sites/95/2015/01/Doctor.jpg' },
  { name: 'Sandra Marques', lat: -22.395295, lng: -41.783365, specialty: 'Cirurgia de cabeça e pescoço', image_url: 'https://drparivar.com/images/doctor-profile-pic.png' },
  { name: 'Roberto Carlos', lat: -22.377588, lng: -41.782882, specialty: 'Cirurgia do Aparelho Digestivo', image_url: 'http://umuaramanews.com.br/wp-content/uploads/2016/10/medico-maringa-02-facebook.jpg' },
  { name: 'André Tadeu', lat: -22.369592, lng: -41.785897, specialty: 'Cirurgia Geral', image_url: 'https://farm5.staticflickr.com/4242/35584928041_533695b186_z.jpg' },
  { name: 'Lúcia Regina', lat: -22.383867, lng: -41.784900, specialty: 'Cirurgia Pediátrica', image_url: 'http://www.realclinicamedica.com/images/team/clinica-andrea-cardoso.jpg' },
  { name: 'Carlos Villanueva', lat: -22.337335, lng: -41.755220, specialty: 'Cirurgia Plástica', image_url: 'https://vascular.pro/sites/vascular.pro/files/styles/large/public/excelencia_em_cirurgia_-_cirurgiao.jpg?itok=O_ym9Vui' },
  { name: 'Patrícia Monteiro', lat: -22.343617, lng: -41.758685, specialty: 'Cirurgia Torácica', image_url: 'http://glaucialima.com/wp-content/uploads/2015/06/V-u4rJb_IqlDBasDT_OKbse9r5TQh12XyD7hjynD8LobOiFFPYE2J8CjJsLv0M8pCvTXN6UN0DUuhkGhzKnh9Y.jpg' },
  { name: 'Thalles Mello', lat: -22.338427, lng: -41.758420, specialty: 'Cirurgia Vascular', image_url: 'http://gerenciamentodeclinicas.com.br/wp-content/uploads/2016/12/img-medico-pessoa-juridica-img-destacada.jpg' },
  { name: 'Júlio Rizec', lat: -22.508961, lng: -41.929290, specialty: 'Coloproctologia', image_url: 'http://www.midiamax.com.br/sites/default/files/arquivos/noticias/2016/out/medico.jpg' },
  { name: 'André Reoli', lat: -22.521938, lng: -41.935727, specialty: 'Dermatologia', image_url: 'http://s2.glbimg.com/GGZ4X0WZfcMhSBl2RB-rogybbc4=/560x430/e.glbimg.com/og/ed/f/original/2016/06/28/henry_marsh_author_photo__simon_clark.jpg' },
  { name: 'Maria Clara Antunes', lat: -22.523127, lng: -41.933066, specialty: 'Endocrinologia e Metabologia', image_url: 'http://viverclinicamedica.com.br/wp-content/uploads/2015/09/maria-cecilia.jpg' },
  { name: 'Paula Castilho', lat: -22.493925, lng: -41.909443, specialty: 'Endoscopia', image_url: 'https://conteudo.imguol.com.br/c/noticias/04/2017/09/16/a-medica-milena-gottardi-tonini-frasson-foi-morta-com-tiro-na-cabeca-na-saida-de-hospital-em-vitoria-es-1505578802300_300x420.png' }
]

doctors.each_with_index do |doctor_data, index|
  doctor = Doctor.find_or_initialize_by(name: doctor_data[:name])
  doctor.address || doctor.build_address
  doctor.address.attributes = { lat: doctor_data[:lat], lng: doctor_data[:lng] }
  doctor.address.update_address_from_coordinates
  doctor.attributes = {
    name: doctor_data[:name],
    specialty: Specialty.find_by(title: doctor_data[:specialty]),
    image_url: doctor_data[:image_url],
    crm: "SP 123#{index}"
  }
  doctor.save!
  doctor.address.save!
end
