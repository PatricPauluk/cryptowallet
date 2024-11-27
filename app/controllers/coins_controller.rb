class CoinsController < ApplicationController

  # O layout de exemplo é acessado dessa forma abaixo.
  # layout "layoutexemplo"

  # Executa a function set_coin antes de executar as funções show, edit, update e destroy.
  before_action :set_coin, only: %i[ show edit update destroy ]

  # GET /coins or /coins.json
  def index
    @coins = Coin.all
  end

  # GET /coins/1 or /coins/1.json
  def show
  end

  # GET /coins/new
  def new
    @coin = Coin.new
  end

  # GET /coins/1/edit
  def edit
  end

  # POST /coins or /coins.json
  def create
    @coin = Coin.new(coin_params)

    respond_to do |format|
      if @coin.save
        format.html { redirect_to @coin, notice: "Coin was successfully created." }
        format.json { render :show, status: :created, location: @coin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coins/1 or /coins/1.json
  def update
    respond_to do |format|
      if @coin.update(coin_params)
        format.html { redirect_to @coin, notice: "Coin was successfully updated." }
        format.json { render :show, status: :ok, location: @coin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coins/1 or /coins/1.json
  def destroy
    @coin.destroy

    respond_to do |format|
      format.html { redirect_to coins_path, status: :see_other, notice: "Coin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # Métodos privados só o próprio controller tem acesso.
  private
    # Use callbacks to share common setup or constraints between actions.
    # Seleciona a moeda correspondente antes de executar a ação do CRUD
    def set_coin
      @coin = Coin.find(params[:id])
    end

    # Verifica se os parâmetros a serem enviados estão corretos e não foram adulterados no navegador.
    # Only allow a list of trusted parameters through.
    def coin_params
      params.require(:coin).permit(:description, :acronym, :url_image, :mining_type_id) # mining_type_id adicionado manualmente
    end
end
