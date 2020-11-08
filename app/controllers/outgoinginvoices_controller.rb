class OutgoinginvoicesController < ApplicationController
  before_action :set_outgoinginvoice, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:index]
  # GET /outgoinginvoices
  # GET /outgoinginvoices.json
  def index
    @outgoinginvoices = Outgoinginvoice.all
  end

  # GET /outgoinginvoices/1
  # GET /outgoinginvoices/1.json
  def show; end

  # GET /outgoinginvoices/new
  def new
    @outgoinginvoice = Outgoinginvoice.new
  end

  # GET /outgoinginvoices/1/edit
  def edit; end

  # POST /outgoinginvoices
  # POST /outgoinginvoices.json
  def create
    @outgoinginvoice = Outgoinginvoice.new(outgoinginvoice_params)
    @outgoinginvoice.user = current_user
    respond_to do |format|
      if @outgoinginvoice.save
        format.html { redirect_to @outgoinginvoice, notice: 'Outgoinginvoice was successfully created.' }
        format.json { render :show, status: :created, location: @outgoinginvoice }
      else
        format.html { render :new }
        format.json { render json: @outgoinginvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outgoinginvoices/1
  # PATCH/PUT /outgoinginvoices/1.json
  def update
    respond_to do |format|
      @outgoinginvoice.user = current_user
      if @outgoinginvoice.update(outgoinginvoice_params)
        format.html { redirect_to @outgoinginvoice, notice: 'Outgoinginvoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @outgoinginvoice }
      else
        format.html { render :edit }
        format.json { render json: @outgoinginvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outgoinginvoices/1
  # DELETE /outgoinginvoices/1.json
  def destroy
    @outgoinginvoice.destroy
    respond_to do |format|
      format.html { redirect_to outgoinginvoices_url, notice: 'Outgoinginvoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_outgoinginvoice
    @outgoinginvoice = Outgoinginvoice.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def outgoinginvoice_params
    params.require(:outgoinginvoice).permit(:number, :date, :customer_id)
  end
end
