class FullCharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :eyes, :height, :skin, :weight, :alignment, :background, :background_feature, :bonds, :deity, :flaws, :ideals, :personality_traits, :char_class, :gender, :race, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :img_url, :user_id, :created_at, :user

  def user
    UserSerializer.new(self.object.user)
  end

end