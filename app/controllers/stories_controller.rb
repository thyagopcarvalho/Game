class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @stories = Story.find(params[:id])
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)
    @story.save
    redirect_to stories_path
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    @story.update(story_params)
    redirect_to stories_path
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    print(@story.titulo)
    @story.destroy
    redirect_to stories_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:titulo,:introducao)
    end
end
