require 'csv'

class RiskAreasController < ApplicationController
  before_action :set_risk_area, only: [:show, :edit, :update, :destroy]

  # GET /risk_areas
  # GET /risk_areas.json
  def index
    @risk_areas = RiskArea.all
  end


  #Importar dados do CSV
  def csv_import
    file = File.open(params[:dump][:file].tempfile.path, 'r' )
    lines = file.readlines
    lines.each do |l|
      columns = l.split(';')    
      c=risk_area.new(:regional => columns[0],
                      :endereco => columns[1],
                      :bairro => columns[2],
                      :localidade => columns[3],
                      :descricao => columns[4],
                      :longitude => columns[5])
      c.save
    end
  end
  
  # GET /risk_areas/1
  # GET /risk_areas/1.json
  def show
  end

  # GET /risk_areas/new
  def new
    @risk_area = RiskArea.new
  end

  # GET /risk_areas/1/edit
  def edit
  end

  # POST /risk_areas
  # POST /risk_areas.json
  def create
    @risk_area = RiskArea.new(risk_area_params)

    respond_to do |format|
      if @risk_area.save
        format.html { redirect_to @risk_area, notice: 'Risk area was successfully created.' }
        format.json { render :show, status: :created, location: @risk_area }
      else
        format.html { render :new }
        format.json { render json: @risk_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /risk_areas/1
  # PATCH/PUT /risk_areas/1.json
  def update
    respond_to do |format|
      if @risk_area.update(risk_area_params)
        format.html { redirect_to @risk_area, notice: 'Risk area was successfully updated.' }
        format.json { render :show, status: :ok, location: @risk_area }
      else
        format.html { render :edit }
        format.json { render json: @risk_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risk_areas/1
  # DELETE /risk_areas/1.json
  def destroy
    @risk_area.destroy
    respond_to do |format|
      format.html { redirect_to risk_areas_url, notice: 'Risk area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_area
      @risk_area = RiskArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def risk_area_params
      params.require(:risk_area).permit(:regional, :endereco, :bairro, :localidade, :descricao, :longitude)
    end
end
