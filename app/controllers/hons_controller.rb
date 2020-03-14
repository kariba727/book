class HonsController < ApplicationController
  before_action :set_hon, only: [:show, :edit, :update, :destroy]

  PER =10

  # GET /hons
  # GET /hons.json
  def index
    @hons = Hon.page(params[:page]).per(PER)
  end

  # GET /hons/1
  # GET /hons/1.json
  def show
  end

  # GET /hons/new
  def new
    @hon = Hon.new
  end

  # GET /hons/1/edit
  def edit
  end

  # POST /hons
  # POST /hons.json
  def create
    @hon = Hon.new(hon_params)

    respond_to do |format|
      if @hon.save
        format.html { redirect_to @hon, notice: 'Hon was successfully created.' }
        format.json { render :show, status: :created, location: @hon }
      else
        format.html { render :new }
        format.json { render json: @hon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hons/1
  # PATCH/PUT /hons/1.json
  def update
    respond_to do |format|
      if @hon.update(hon_params)
        format.html { redirect_to @hon, notice: 'Hon was successfully updated.' }
        format.json { render :show, status: :ok, location: @hon }
      else
        format.html { render :edit }
        format.json { render json: @hon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hons/1
  # DELETE /hons/1.json
  def destroy
    @hon.destroy
    respond_to do |format|
      format.html { redirect_to hons_url, notice: 'Hon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hon
      @hon = Hon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hon_params
      params.require(:hon).permit(:title, :author)
    end
end
