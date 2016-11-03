class PokemonsController < ApplicationController
	def capture
    	@pokemon = Pokemon.find(params[:id])
    	@pokemon.trainer = current_trainer
    	@pokemon.hidden = false
    	@pokemon.save
    	redirect_to root_path
	end

	def damage
    	@pokemon = Pokemon.find(params[:id])
    	if @pokemon.health != 0
        	@pokemon.health -= 10
    	end
    	if @pokemon.health <= 0
      		@pokemon.hidden = true
    	end
    	@pokemon.save
    	redirect_to trainer_path(id: @pokemon.trainer)
  	end

  	def heal
    	@pokemon = Pokemon.find(params[:id])
    	if @pokemon.health != 100
        	@pokemon.health += 10
    	end
    	@pokemon.save
    	redirect_to trainer_path(id: @pokemon.trainer)
  	end

  	def new
    	@pokemon = Pokemon.new
  	end


  	def make
    	@pokemon = Pokemon.new(name: params[:pokemon][:name], trainer: current_trainer, health: 100, level: 1)
    	if @pokemon.save
          redirect_to trainer_path(id: @pokemon.trainer)
    	else
      		flash[:error] = @pokemon.errors.full_messages.to_sentence
      		redirect_to new_path
    	end
	end
end
