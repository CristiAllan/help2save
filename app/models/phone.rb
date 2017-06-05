class Phone < ApplicationRecord
  belongs_to :phonegable, polymorphic: true

  validates_presence_of :number
end
