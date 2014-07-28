class MuziksController < ApplicationController
  before_action :set_muzik, only: [:show, :edit, :update, :destroy]

  # GET /muziks
  # GET /muziks.json
  def index
    @muziks = Muzik.all
  end

  # GET /muziks/1
  # GET /muziks/1.json
  def show
  end

  # GET /muziks/new
  def new
    @muzik = Muzik.new
  end

  # GET /muziks/1/edit
  def edit
  end

  # POST /muziks
  # POST /muziks.json
  def create
    @muzik = Muzik.new(muzik_params)

    respond_to do |format|
      if @muzik.save
        format.html { redirect_to @muzik, notice: 'Muzik was successfully created.' }
        format.json { render :show, status: :created, location: @muzik }
      else
        format.html { render :new }
        format.json { render json: @muzik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muziks/1
  # PATCH/PUT /muziks/1.json
  def update
    respond_to do |format|
      if @muzik.update(muzik_params)
        format.html { redirect_to @muzik, notice: 'Muzik was successfully updated.' }
        format.json { render :show, status: :ok, location: @muzik }
      else
        format.html { render :edit }
        format.json { render json: @muzik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muziks/1
  # DELETE /muziks/1.json
  def destroy
    @muzik.destroy
    respond_to do |format|
      format.html { redirect_to muziks_url, notice: 'Muzik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muzik
      @muzik = Muzik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muzik_params
      params.require(:muzik).permit(:name, :format, :length_min, :length_sec, :size)
    end
end
