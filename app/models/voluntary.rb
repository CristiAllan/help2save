class Voluntary < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :address, as: :addressable, :dependent => :destroy
  has_many :phones, as: :phonegable, :dependent => :destroy
  has_many :voluntary_jobs
  has_many :jobs, through: :voluntary_jobs

  validates_presence_of :first_name, :last_name, :birth_date, :gender, :description
end
