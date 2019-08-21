class ChangeSkillColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :strength, :STR
    rename_column :characters, :dexterity, :DEX
    rename_column :characters, :constitution, :CON
    rename_column :characters, :intelligence, :INT
    rename_column :characters, :wisdom, :WIS
    rename_column :characters, :charisma, :CHA
  end
end
