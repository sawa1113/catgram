class FavoritesController < ApplicationController
    def create
      @favorite = current_user.favorites.create(cat_id: params[:cat_id])
      redirect_back(fallback_location: root_path)
    end

    def destroy
      @cat = Cat.find(params[:cat_id])
      @favorite = current_user.favorites.find_by(cat_id: @cat.id)
      @favorite.destroy
      redirect_back(fallback_location: root_path)
    end 
end
