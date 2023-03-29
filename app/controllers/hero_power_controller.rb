class HeroPowerController < ApplicationController
    def show 
        po = HeroPower.all
        render json: po
    end

    def create 
        hero = Hero.find_by(id: params[:hero_id])
        power = Power.find_by(id: params[:power_id])
        
        if hero.nil?
          render json: { error: "Hero with id #{params[:hero_id]} not found" }, status: :not_found
          return
        end
        
        if power.nil?
          render json: { error: "Power with id #{params[:power_id]} not found" }, status: :not_found
          return
        end
        
        hero_power = HeroPower.create(hero_power_params)
        if hero_power 
            render json: hero_power.hero, status: :created, include: :powers
        else 
            render json: {error: "Validation errors"}
        end
    end
    private 
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

end
