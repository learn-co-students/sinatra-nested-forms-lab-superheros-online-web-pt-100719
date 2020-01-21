class ChangeHeroesTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :heroes, :heros
  end
end