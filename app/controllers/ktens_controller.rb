class KtensController < ApplicationController
  before_action :set_kten, only: %i[ show edit update destroy ]

  # GET /ktens or /ktens.json
  def index
    @ktens = Kten.all
  end

  # GET /ktens/1 or /ktens/1.json
  def show
  end

  # GET /ktens/new
  def new
    @kten = Kten.new
  end

  # GET /ktens/1/edit
  def edit
  end

  # POST /ktens or /ktens.json
  def create
    @kten = Kten.new(kten_params)

    respond_to do |format|
      if @kten.save
        format.html { redirect_to kten_url(@kten), notice: "Kten was successfully created." }
        format.json { render :show, status: :created, location: @kten }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ktens/1 or /ktens/1.json
  def update
    respond_to do |format|
      if @kten.update(kten_params)
        format.html { redirect_to kten_url(@kten), notice: "Kten was successfully updated." }
        format.json { render :show, status: :ok, location: @kten }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ktens/1 or /ktens/1.json
  def destroy
    @kten.destroy

    respond_to do |format|
      format.html { redirect_to ktens_url, notice: "Kten was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kten
      @kten = Kten.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kten_params
      params.require(:kten).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
