class Site::HomeController < ApplicationController
  def index
    @jobs = Job.all
  end
end
