class PublicController < ApplicationController

  def listVoluntary
    @listVoluntary = Voluntary.all
  end

  def listInstitution
    @listInstitution = Institution.all
  end

  def voluntary

  end

  def institution

  end
end
