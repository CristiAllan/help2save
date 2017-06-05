class InstitutionController < ApplicationController

  def index
      @institutions = Institution.all
  end

  def new
      @institution = Institution.new
  end

  def show
  end

  def edit
  end

  def create
    @institution = Institution.new(institution_params)
    respond_to do |format|
      if @institution.save
        format.html { redirect_to @institution, notice: 'Institution was successfully created.' }
        format.json { render :show, status: :created, location: @institution }
      else
        format.html { render :new }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @institution.update(institution_params)
        format.html { redirect_to @institution, notice: 'Institution was successfully updated.' }
        format.json { render :show, status: :ok, location: @institution }
      else
        format.html { render :edit }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to institution_url, notice: 'Institution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def institution_params
      params.require(:institution).permit(:name, :email, :cnpj, :avatar, :description, :encrypted_password)
    end
end
