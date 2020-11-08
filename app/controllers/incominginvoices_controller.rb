class IncominginvoicesController < ApplicationController
  before_action :set_incominginvoice, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:index]
  # GET /incominginvoices
  # GET /incominginvoices.json
  def index
    @incominginvoices = Incominginvoice.all
  end

  # GET /incominginvoices/1
  # GET /incominginvoices/1.json
  def show; end

  # GET /incominginvoices/new
  def new
    @incominginvoice = Incominginvoice.new
  end

  # GET /incominginvoices/1/edit
  def edit; end

  # POST /incominginvoices
  # POST /incominginvoices.json
  def create
    @incominginvoice = Incominginvoice.new(incominginvoice_params)
    @incominginvoice.user = current_user
    respond_to do |format|
      if @incominginvoice.save
        format.html { redirect_to @incominginvoice, notice: 'Incominginvoice was successfully created.' }
        format.json { render :show, status: :created, location: @incominginvoice }
      else
        format.html { render :new }
        format.json { render json: @incominginvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incominginvoices/1
  # PATCH/PUT /incominginvoices/1.json
  def update
    respond_to do |format|
      @incominginvoice.user = current_user
      if @incominginvoice.update(incominginvoice_params)
        format.html { redirect_to @incominginvoice, notice: 'Incominginvoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @incominginvoice }
      else
        format.html { render :edit }
        format.json { render json: @incominginvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incominginvoices/1
  # DELETE /incominginvoices/1.json
  def destroy
    @incominginvoice.destroy
    respond_to do |format|
      format.html { redirect_to incominginvoices_url, notice: 'Incominginvoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_incominginvoice
    @incominginvoice = Incominginvoice.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def incominginvoice_params
    params.require(:incominginvoice).permit(:number, :date, :supplier_id, :amount)
  end
end
