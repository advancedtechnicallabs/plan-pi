class OutlinesController < ApplicationController
  before_action :set_outline, only: %i[ show edit update destroy ]

  # GET /outlines or /outlines.json
  def index
    @outlines = Outline.all
  end

  # GET /outlines/1 or /outlines/1.json
  def show
  end

  # GET /outlines/new
  def new
    @outline = Outline.new
  end

  # GET /outlines/1/edit
  def edit
  end

  # POST /outlines or /outlines.json
  def create
    @outline = Outline.new(outline_params)

    respond_to do |format|
      if @outline.save
        format.html { redirect_to outline_url(@outline), notice: "Outline was successfully created." }
        format.json { render :show, status: :created, location: @outline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @outline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outlines/1 or /outlines/1.json
  def update
    respond_to do |format|
      if @outline.update(outline_params)
        format.html { redirect_to outline_url(@outline), notice: "Outline was successfully updated." }
        format.json { render :show, status: :ok, location: @outline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @outline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlines/1 or /outlines/1.json
  def destroy
    @outline.destroy!

    respond_to do |format|
      format.html { redirect_to outlines_url, notice: "Outline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outline
      @outline = Outline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def outline_params
      params.require(:outline).permit(:outline_desc, :outline_start, :outline_end, :project_num)
    end
end
