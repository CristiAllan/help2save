class Institution < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :address, as: :addressable, :dependent => :destroy
  has_many :phones, as: :phonegable, :dependent => :destroy
  has_many :jobs

  validates_presence_of :name, :cnpj, :description
end
