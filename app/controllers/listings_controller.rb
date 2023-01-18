class ListingsController < ApplicationController

    def index
        listings = Listing.all
        render json: listings, except: [:created_at, :updated_at],include: :user, status: :ok
    end
    
    def create
        listing = Listing.new( listing_params )
        if listing.valid?
            listing.save
            render json: listing, except: [:created_at, :updated_at],include: :user, status: :created
        else
            render json: { errors: listing.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        listing = Listing.find_by( id: params[:id])
        if listing
            listing.destroy
            head :no_content
        else
            render json: { errors: ['Listing not found.']}, status: :not_found
        end
    end
    
    private

    def listing_params
        params.require( :listing ).permit(:user_id, :title, :size, :condition, :price, :img) 
    end
end
