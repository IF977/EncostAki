class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end
  
  #Importar dados do CSV
  def csv_import
    #n = 0
    CSV.foreach(params[:dump][:file].tempfile,:col_sep => ';', :encoding => 'ISO-8859-1') do |row|
      c = Ticket.new( :ano                        => row[0],
                      :mes                        => row[1],
                      :processo_numero            => row[2],
                      :solicitacao_data           => row[3],
                      :solicitacao_hora           => row[4],
                      :solicitacao_descricao      => row[5],
                      :solicitacao_regional       => row[6],
                      :solicitacao_bairro         => row[7],
                      :solicitacao_localidade     => row[8],
                      :solicitacao_endereco       => row[9],
                      :solicitacao_roteiro        => row[10],
                      :rpa_codigo                 => row[11],
                      :rpa_nome                   => row[12],
                      :solicitacao_microrregiao   => row[13],
                      :solicitacao_plantao        => row[14],
                      :solicitacao_origem_chamado => row[15],
                      :latitude                   => row[16],
                      :longitude                  => row[17],
                      :solicitacao_vitimas        => row[18],
                      :solicitacao_vitimas_fatais => row[19],
                      :processo_tipo              => row[20],
                      :processo_origem            => row[21],
                      :processo_localizacao       => row[22],
                      :processo_status            => row[23],
                      :processo_data_conclusao    => row[24])
      c.save
    end
    redirect_to :action => "index" and return
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:ano, :mes, :processo_numero, :solicitacao_data, :solicitacao_hora, :solicitacao_descricao, :solicitacao_regional, :solicitacao_bairro, :solicitacao_localidade, :solicitacao_endereco, :solicitacao_roteiro, :rpa_codigo, :rpa_nome, :solicitacao_microrregiao, :solicitacao_plantao, :solicitacao_origem_chamado, :latitude, :longitude, :solicitacao_vitimas, :solicitacao_vitimas_fatais, :solicitacao_vitimas_fatais, :processo_tipo, :processo_origem, :processo_localizacao, :processo_status, :processo_data_conclusao)
    end
end
