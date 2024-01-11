class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, :number_of_guests, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates :picture_url, presence: true

  def map_image_url
    "https://maps.googleapis.com/maps/api/staticmap?center=#{address}&zoom=13&scale=2&size=1000x1000&maptype=roadmap&markers=color:red%7C#{address}&key=YOUR_GOOGLE_MAPS_API_KEY"
  end
end
