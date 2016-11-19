class MunecosController < ApplicationController
  before_action :set_muneco, only: [:show, :edit, :update, :destroy]

  # GET /munecos
  # GET /munecos.json
  def index
    @munecos = Muneco.all
  end

  # GET /munecos/1
  # GET /munecos/1.json
  def show
  end

  # GET /munecos/new
  def new
    @muneco = Muneco.new
  end

  # GET /munecos/1/edit
  def edit
  end

  # POST /munecos
  # POST /munecos.json
  def create
    @muneco = Muneco.new(muneco_params)

    respond_to do |format|
      if @muneco.save
        format.html { redirect_to @muneco, notice: 'Muneco was successfully created.' }
        format.json { render :show, status: :created, location: @muneco }
      else
        format.html { render :new }
        format.json { render json: @muneco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /munecos/1
  # PATCH/PUT /munecos/1.json
  def update
    respond_to do |format|
      if @muneco.update(muneco_params)
        format.html { redirect_to @muneco, notice: 'Muneco was successfully updated.' }
        format.json { render :show, status: :ok, location: @muneco }
      else
        format.html { render :edit }
        format.json { render json: @muneco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /munecos/1
  # DELETE /munecos/1.json
  def destroy
    @muneco.destroy
    respond_to do |format|
      format.html { redirect_to munecos_url, notice: 'Muneco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muneco
      @muneco = Muneco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muneco_params
      params.require(:muneco).permit(:name, :description, :cost, :picture)
    end
end
