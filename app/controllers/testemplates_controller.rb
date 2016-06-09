class TestemplatesController < ApplicationController
  before_action :set_testemplate, only: [:show, :edit, :update, :destroy]

  # GET /testemplates
  # GET /testemplates.json
  def index
    @testemplates = Testemplate.all
  end

  # GET /testemplates/1
  # GET /testemplates/1.json
  def show
  end

  # GET /testemplates/new
  def new
    @testemplate = Testemplate.new
  end

  # GET /testemplates/1/edit
  def edit
  end

  # POST /testemplates
  # POST /testemplates.json
  def create
    @testemplate = Testemplate.new(testemplate_params)

    respond_to do |format|
      if @testemplate.save
        format.html { redirect_to @testemplate, notice: 'Testemplate was successfully created.' }
        format.json { render :show, status: :created, location: @testemplate }
      else
        format.html { render :new }
        format.json { render json: @testemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testemplates/1
  # PATCH/PUT /testemplates/1.json
  def update
    respond_to do |format|
      if @testemplate.update(testemplate_params)
        format.html { redirect_to @testemplate, notice: 'Testemplate was successfully updated.' }
        format.json { render :show, status: :ok, location: @testemplate }
      else
        format.html { render :edit }
        format.json { render json: @testemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testemplates/1
  # DELETE /testemplates/1.json
  def destroy
    @testemplate.destroy
    respond_to do |format|
      format.html { redirect_to testemplates_url, notice: 'Testemplate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testemplate
      @testemplate = Testemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testemplate_params
      params.require(:testemplate).permit(:field1, :field2, :field3)
    end
end
