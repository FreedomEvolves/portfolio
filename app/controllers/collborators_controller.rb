class CollboratorsController < ApplicationController
  before_action :set_collborator, only: [:show, :edit, :update, :destroy]

  # GET /collborators
  # GET /collborators.json
  def index
    @collborators = Collborator.all
  end

  # GET /collborators/1
  # GET /collborators/1.json
  def show
  end

  # GET /collborators/new
  def new
    @collborator = Collborator.new
  end

  # GET /collborators/1/edit
  def edit
  end

  # POST /collborators
  # POST /collborators.json
  def create
    @collborator = Collborator.new(collborator_params)

    respond_to do |format|
      if @collborator.save
        format.html { redirect_to @collborator, notice: 'Collborator was successfully created.' }
        format.json { render :show, status: :created, location: @collborator }
      else
        format.html { render :new }
        format.json { render json: @collborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collborators/1
  # PATCH/PUT /collborators/1.json
  def update
    respond_to do |format|
      if @collborator.update(collborator_params)
        format.html { redirect_to @collborator, notice: 'Collborator was successfully updated.' }
        format.json { render :show, status: :ok, location: @collborator }
      else
        format.html { render :edit }
        format.json { render json: @collborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collborators/1
  # DELETE /collborators/1.json
  def destroy
    @collborator.destroy
    respond_to do |format|
      format.html { redirect_to collborators_url, notice: 'Collborator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collborator
      @collborator = Collborator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collborator_params
      params.require(:collborator).permit(:last_name, :first_name, :year, :project_link, :comments)
    end
end
