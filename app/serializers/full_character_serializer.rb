class FullCharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :eyes, :height, :skin, :weight, :alignment, :background, :background_feature, :bonds, :deity, :flaws, :ideals, :personality_traits, :char_class, :gender, :race, :STR, :DEX, :CON, :INT, :WIS, :CHA, :img_url, :user_id, :created_at, :user

  def user
    UserSerializer.new(self.object.user)
  end

end