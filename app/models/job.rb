class Job < ApplicationRecord
  belongs_to :institution
  has_many :voluntary_jobs
  has_many :voluntaries, through: :voluntary_jobs

  validates_presence_of :title, :description, :start_date, :end_date
end
