class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.topic_id = params[:topic_id]

    if favorite.save
      redirect_to topics_path, success: 'お気に入り登録しました'
    else
      redirect_to topics_path, danger: 'お気に入り登録に失敗しました'
    end
  end

  def destroy
    @favorite_topic = Favorite.find_by(user_id: current_user.id, topic_id: params[:topic_id])
    @favorite_topic.destroy
    redirect_to topics_path, success:'お気に入りを削除しました'
  end




end
