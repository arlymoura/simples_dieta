class DietariesController < ApplicationController
  before_action :set_dietary, only: [:show, :edit, :update, :destroy]

  # GET /dietaries
  def index
    @dietaries = current_user.dietaries
  end

  # GET /dietaries/1
  def show
  end

  # GET /dietaries/new
  def new
    @dietary = Dietary.new
  end

  # GET /dietaries/1/edit
  def edit
  end

  # POST /dietaries
  def create
    @dietary = Dietary.new(dietary_params)

    respond_to do |format|
      if @dietary.save
        format.html { redirect_to @dietary, notice: 'Dietary was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /dietaries/1
  def update
    respond_to do |format|
      if @dietary.update(dietary_params)
        format.html { redirect_to @dietary, notice: 'Dietary was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /dietaries/1
  def destroy
    @dietary.destroy
    respond_to do |format|
      format.html { redirect_to dietaries_url, notice: 'Dietary was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dietary
      @dietary = current_user.dietaries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dietary_params
      params.require(:dietary).permit(:start_date, :end_date, :ideal_weight,
                                      :height, :weight, meals_attributes: [
                                      :_destroy, :id, :description, :hour, :kind
                                      ] )
                              .merge(user_id: current_user.id)
    end
end
