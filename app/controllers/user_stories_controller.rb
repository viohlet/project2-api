class UserStoriesController < ProtectedController
  before_action :set_user_story, only: [:show, :update, :destroy]

  # GET /user_stories
  # GET /user_stories.json
  def index
    @user_stories = UserStory.all

    render json: @user_stories
  end

  # GET /user_stories/1
  # GET /user_stories/1.json
  def show
    render json: @user_story
  end

  # POST /user_stories
  # POST /user_stories.json
  def create
    @user_story = current_user.userstories.build(user_story_params)
    @user_story = UserStory.new(user_story_params)

    if @user_story.save
      render json: @user_story, status: :created, location: @user_story
    else
      render json: @user_story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_stories/1
  # PATCH/PUT /user_stories/1.json
  def update
    # @user_story = UserStory.find(params[:id])
    if @user_story.update(user_story_params)
      head :no_content
    else
      render json: @user_story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_stories/1
  # DELETE /user_stories/1.json
  def destroy
    @user_story.destroy

    head :no_content
  end

  private

  def set_user_story
    @user_story = current_user.userstories.find(params[:id])
  end

  def user_story_params
    params.require(:user_story).permit(:role, :action, :goal, :project_id)
  end
end
