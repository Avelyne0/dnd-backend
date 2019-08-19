class Api::V1::CharactersController < ApplicationController

  def create
      character = Character.create character_params
      character.user = @current_user
      character.save
      if character.valid?
          render json: { character: FullCharacterSerializer.new(character) }, status: :created
      else
          render json: { errors: character.errors.full_messages }, status: :not_accepted
      end
  end

  def index
      render json: Character.all
  end

  def show
      character = Character.find(params[:id])
      render json: { character: FullCharacterSerializer.new(character) }
  end

  private

  def character_params
      params.require(:character).permit(
        :name,
:age,
:eyes,
:height,
:skin,
:weight,
:alignment,
:background,
:background_feature,
:bonds,
:deity,
:flaws,
:ideals,
:personality_traits,
:class,
:gender,
:race,
:strength,
:dexterity,
:constitution,
:intelligence,
:wisdom,
:charisma,
:user_id
      )
  end
end

