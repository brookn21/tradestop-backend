class LikesController < ApplicationController
    
    # befor_action :authorize!, only: [:create]
    def index
        likes = Like.all
        render json: likes, except: [:created_at, :updated_at], status: :ok
    end
    
    def create
        like = Like.new( like_params)
        if like.valid?
            like.save
            render json: like, except: [:created_at, :updated_at], status: :created
        else
            render json: { errors: like.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        like = Like.find_by( id: params[:id])
        if like
            like.destroy
            head :no_content
        else
            render json: { errors: ['Like not found.']}, status: :not_found
        end
    end

    private

    def like_params
        params.require( :like ).permit(:user_id, :shoe_id, :listing_id) 
    end
end
