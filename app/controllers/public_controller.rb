class PublicController < ApplicationController

  def listVoluntary
    @listVoluntary = Voluntary.all
  end

  def listInstitution
    @listInstitution = Institution.all
  end

  def voluntary
    @voluntary = Voluntary.find(params[:id])
    @jobs = @voluntary.jobs
    #@reviews = @voluntary.reviews
  end

  def institution
    @institution = Institution.find(params[:id])
    @jobs = @institution.jobs
  end
end
