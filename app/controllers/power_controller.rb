class PowersController < ApplicationController
    def index 
        powers = Power.all 
        render json: powers
    end

    def show 
        powers = Power.find_by(id: params[:id])
        if powers 
            render json: powers
        else 
            render json: {error:"Power not found"}
        end
    end
    def update 
        power = Power.find_by(id: params[:id])
        if power 
            if power.update(power_params)
                render json: power
            else 
                render json: {error: "Validations error"}
            end
        else 
            render json: {error: "Power no found"}
        end
     
    end
    private 
    def power_params 
        params.permit(:name, :description)
    end

end