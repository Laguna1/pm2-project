class RekordsController < ApplicationController
  before_action :set_rekord, only: %i[ show edit update destroy ]

  # GET /rekords or /rekords.json
  def index
    @rekords = Rekord.all
  end

  # GET /rekords/1 or /rekords/1.json
  def show
  end

  # GET /rekords/new
  def new
    @rekord = Rekord.new
  end

  # GET /rekords/1/edit
  def edit
  end

  # POST /rekords or /rekords.json
  def create
    @rekord = Rekord.new(rekord_params)

    respond_to do |format|
      if @rekord.save
        format.html { redirect_to @rekord, notice: "Rekord was successfully created." }
        format.json { render :show, status: :created, location: @rekord }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rekord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rekords/1 or /rekords/1.json
  def update
    respond_to do |format|
      if @rekord.update(rekord_params)
        format.html { redirect_to @rekord, notice: "Rekord was successfully updated." }
        format.json { render :show, status: :ok, location: @rekord }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rekord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rekords/1 or /rekords/1.json
  def destroy
    @rekord.destroy
    respond_to do |format|
      format.html { redirect_to rekords_url, notice: "Rekord was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rekord
      @rekord = Rekord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rekord_params
      params.require(:rekord).permit(:name, :description, :user_id)
    end
end
