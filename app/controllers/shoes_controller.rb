class ShoesController < ApplicationController

    def index
        shoes = Shoe.all
        render json: shoes, except:[:created_at, :updated_at], status: :ok
    end

    def show
        shoe = Shoe.find_by(id: params[:id])
        render json: shoe, except:[:created_at, :updated_at], status: :ok
    end

end
