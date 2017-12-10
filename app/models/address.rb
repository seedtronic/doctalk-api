class Address < ApplicationRecord
  include Geokit::Geocoders

  belongs_to :addressable, polymorphic: true
  validates :street, :number, :city, :state, :zipcode, :lat, :lng,
            presence: true

  acts_as_mappable default_units: :kms

  def update_coordenates_from_adress
    location = GoogleGeocoder.geocode(full_address)
    self.attributes = { lat: location.lat, lng: location.lng }
  end

  def update_address_from_coordinates
    location = Geokit::Geocoders::GoogleGeocoder
               .reverse_geocode("#{lat},#{lng}")
    self.attributes = attributes_from_location(location)
  end

  private

  def full_address
    [street, number, city, zipcode].join(', ')
  end

  def attributes_from_location(location)
    {
      street: location.street_name,
      number: location.street_number,
      city: location.city,
      state: location.state,
      zipcode: location.zip,
      lat: location.lat,
      lng: location.lng
    }
  end
end
