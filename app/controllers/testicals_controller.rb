class TesticalsController < ApplicationController
  before_action :set_testical, only: [:show, :edit, :update, :destroy]

  # GET /testicals
  # GET /testicals.json
  def index
    @testicals = Testical.all
  end

  # GET /testicals/1
  # GET /testicals/1.json
  def show
  end

  # GET /testicals/new
  def new
    @testical = Testical.new
  end

  # GET /testicals/1/edit
  def edit
  end

  # POST /testicals
  # POST /testicals.json
  def create
    @testical = Testical.new(testical_params)

    respond_to do |format|
      if @testical.save
        format.html { redirect_to @testical, notice: 'Testical was successfully created.' }
        format.json { render :show, status: :created, location: @testical }
      else
        format.html { render :new }
        format.json { render json: @testical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testicals/1
  # PATCH/PUT /testicals/1.json
  def update
    respond_to do |format|
      if @testical.update(testical_params)
        format.html { redirect_to @testical, notice: 'Testical was successfully updated.' }
        format.json { render :show, status: :ok, location: @testical }
      else
        format.html { render :edit }
        format.json { render json: @testical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testicals/1
  # DELETE /testicals/1.json
  def destroy
    @testical.destroy
    respond_to do |format|
      format.html { redirect_to testicals_url, notice: 'Testical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testical
      @testical = Testical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testical_params
      params.require(:testical).permit(:make, :model, :year)
    end
end
