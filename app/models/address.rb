class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  validates_presence_of :street, :city, :state, :country, :zip_code
end
