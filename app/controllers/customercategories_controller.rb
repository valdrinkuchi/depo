class CustomercategoriesController < ApplicationController
  before_action :set_customercategory, only: %i[show edit update destroy]

  # GET /customercategories
  # GET /customercategories.json
  def index
    @customercategories = Customercategory.all
  end

  # GET /customercategories/1
  # GET /customercategories/1.json
  def show; end

  # GET /customercategories/new
  def new
    @customercategory = Customercategory.new
  end

  # GET /customercategories/1/edit
  def edit; end

  # POST /customercategories
  # POST /customercategories.json
  def create
    @customercategory = Customercategory.new(customercategory_params)

    respond_to do |format|
      if @customercategory.save
        format.html { redirect_to @customercategory, notice: 'Customercategory was successfully created.' }
        format.json { render :show, status: :created, location: @customercategory }
      else
        format.html { render :new }
        format.json { render json: @customercategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customercategories/1
  # PATCH/PUT /customercategories/1.json
  def update
    respond_to do |format|
      if @customercategory.update(customercategory_params)
        format.html { redirect_to @customercategory, notice: 'Customercategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @customercategory }
      else
        format.html { render :edit }
        format.json { render json: @customercategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customercategories/1
  # DELETE /customercategories/1.json
  def destroy
    @customercategory.destroy
    respond_to do |format|
      format.html { redirect_to customercategories_url, notice: 'Customercategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_customercategory
    @customercategory = Customercategory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def customercategory_params
    params.require(:customercategory).permit(:type)
  end
end
