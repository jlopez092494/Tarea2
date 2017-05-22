class PokemonController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(name: params[:pokemon][:name], attack: params[:pokemon][:attack], defense: params[:pokemon][:defense], avatar_url: params[:pokemon][:avatar_url])
    if @pokemon.save
      redirect_to @pokemon
    else
      render :new
    end
  end

end
