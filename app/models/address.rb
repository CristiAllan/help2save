class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  validates_presence_of :street, :city, :state, :zip_code, :country_code
end
