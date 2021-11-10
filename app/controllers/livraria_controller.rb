class LivrariaController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_livrarium, only: %i[ show edit update destroy ]

  # GET /livraria or /livraria.json
  def index
    @livraria = Livrarium.all
  end

  # GET /livraria/1 or /livraria/1.json
  def show
  end

  # GET /livraria/new
  def new
    @livrarium = Livrarium.new
  end

  # GET /livraria/1/edit
  def edit
  end

  # POST /livraria or /livraria.json
  def create
    @livrarium = Livrarium.new(livrarium_params)

    respond_to do |format|
      if @livrarium.save
        format.html { redirect_to @livrarium, notice: "Livrarium was successfully created." }
        format.json { render :show, status: :created, location: @livrarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @livrarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /livraria/1 or /livraria/1.json
  def update
    respond_to do |format|
      if @livrarium.update(livrarium_params)
        format.html { redirect_to @livrarium, notice: "Livrarium was successfully updated." }
        format.json { render :show, status: :ok, location: @livrarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @livrarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livraria/1 or /livraria/1.json
  def destroy
    @livrarium.destroy
    respond_to do |format|
      format.html { redirect_to livraria_url, notice: "Livrarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livrarium
      @livrarium = Livrarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def livrarium_params
      params.require(:livrarium).permit(:Titulo, :Autor, :Páginas, :Editora, :Avaliação)
    end
end
