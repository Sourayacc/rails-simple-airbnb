class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  # GET /flats/1
  def show
    @flat = Flat.find(params[:id])
  end

  # GET /flats/new
  def new
    @flat = Flat.new
  end

  # GET /flats/1/edit
  def edit
    @flat = Flat.find(params[:id])
  end

  # POST /flats
  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /flats/1
  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'flat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /flats/1
  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_url, notice: 'flat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flat_params
      params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
    end
end
