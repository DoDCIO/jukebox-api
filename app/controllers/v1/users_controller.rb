class V1::UsersController < V1::BaseController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def current
    @user = current_user
    render :show
  end

  def playlists
    user = User.find(params[:id])
    @playlists = user.playlists
    render 'v1/playlists/index'
  end
end
