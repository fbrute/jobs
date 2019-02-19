class CombattantsController < ApplicationController
  before_action :set_combattant, only: [:show, :edit, :update, :destroy]

  # GET /combattants
  # GET /combattants.json
  def index
    @combattants = Combattant.all
  end

  # GET /combattants/1
  # GET /combattants/1.json
  def show
  end

  # GET /combattants/new
  def new
    @combattant = Combattant.new
  end

  # GET /combattants/1/edit
  def edit
  end

  # POST /combattants
  # POST /combattants.json
  def create
    @combattant = Combattant.new(combattant_params)

    respond_to do |format|
      if @combattant.save
        format.html { redirect_to @combattant, notice: 'Un(e) Combattant(e) a été créé(e) avec succès.' }
        format.json { render :show, status: :created, location: @combattant }
      else
        format.html { render :new }
        format.json { render json: @combattant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combattants/1
  # PATCH/PUT /combattants/1.json
  def update
    respond_to do |format|
      if @combattant.update(combattant_params)
        format.html { redirect_to @combattant, notice: 'Combattant was successfully updated.' }
        format.json { render :show, status: :ok, location: @combattant }
      else
        format.html { render :edit }
        format.json { render json: @combattant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combattants/1
  # DELETE /combattants/1.json
  def destroy
    @combattant.destroy
    respond_to do |format|
      format.html { redirect_to combattants_url, notice: 'Combattant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

 
    # Use callbacks to share common setup or constraints between actions.
    def set_combattant
      @combattant = Combattant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combattant_params
      params.require(:combattant).permit(:nom, :points_de_vie, :points_d_attaque)
    end
end
