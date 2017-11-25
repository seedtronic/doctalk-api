class FillDoctorsAddresses < ActiveRecord::Migration[5.1]
  def up
    Doctor.find_each do |doctor|
      location = Geokit::Geocoders::GoogleGeocoder.reverse_geocode("#{doctor.lat},#{doctor.lng}")
      if (location.street_name)
        doctor.create_address!(
          street: location.street_name,
          number: location.street_number,
          city: location.city,
          state: location.state,
          zipcode: location.zip,
          lat: doctor.lat,
          lng: doctor.lng
        )
      else
        raise "Could not find location for #{doctor.inspect}!"
      end
    end
  end

  def down
  end
end
