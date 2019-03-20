class ScenesController < ApplicationController
  before_action :set_scene, only: [:show, :edit, :update, :destroy, :next]
  protect_from_forgery with: :null_session

  # GET /scenes
  # GET /scenes.json
  def index
    @scenes = Scene.all
  end

  # GET /scenes/1
  # GET /scenes/1.json
  def show
  end

  # GET /scenes/new
  def new
    @story = Story.find(params[:story_id])
    @scene = @story.scenes.build
  end

  # GET /scenes/1/edit
  def edit
  end

  # POST /scenes
  # POST /scenes.json
  def create
    @story = Story.find(params[:story_id])
    @scene = @story.scenes.build(scene_params)
    @scene.save
  end

  # PATCH/PUT /scenes/1
  # PATCH/PUT /scenes/1.json
  def update
    respond_to do |format|
      if @scene.update(scene_params)
        format.html { redirect_to @scene, notice: 'Scene was successfully updated.' }
        format.json { render :show, status: :ok, location: @scene }
      else
        format.html { render :edit }
        format.json { render json: @scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scenes/1
  # DELETE /scenes/1.json
  def destroy
    @scene.destroy
    respond_to do |format|
      format.html { redirect_to scenes_url, notice: 'Scene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def next
    @path = @scene.path

    redirect_to story_scene_path(2)
  end
  # def show_start_scene
  #   @story = Story.find(params[:story_id])
  #   @scena = @story.scenes.first
  #   redirect_to story_scene_path(@scena)
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_scene
    @scene = Scene.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def scene_params
    params.require(:scene).permit(:texto)
  end
end
