class NegbinomsController < ApplicationController
  before_action :set_negbinom, only: %i[ show edit update destroy ]

  # GET /negbinoms or /negbinoms.json
  def index
    @negbinoms = Negbinom.all
  end

  # GET /negbinoms/1 or /negbinoms/1.json
  def show
  end

  # GET /negbinoms/new
  def new
    @negbinom = Negbinom.new
  end

  # GET /negbinoms/1/edit
  def edit
  end

  # POST /negbinoms or /negbinoms.json
  def create
    @negbinom = Negbinom.new(negbinom_params)

    respond_to do |format|
      if @negbinom.save
        format.html { redirect_to negbinom_url(@negbinom), notice: "Negbinom was successfully created." }
        format.json { render :show, status: :created, location: @negbinom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @negbinom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negbinoms/1 or /negbinoms/1.json
  def update
    respond_to do |format|
      if @negbinom.update(negbinom_params)
        format.html { redirect_to negbinom_url(@negbinom), notice: "Negbinom was successfully updated." }
        format.json { render :show, status: :ok, location: @negbinom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @negbinom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negbinoms/1 or /negbinoms/1.json
  def destroy
    @negbinom.destroy

    respond_to do |format|
      format.html { redirect_to negbinoms_url, notice: "Negbinom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negbinom
      @negbinom = Negbinom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def negbinom_params
      params.require(:negbinom).permit(:rparam, :kparam, :p)
    end
end
