class CreateHeroes < ActiveRecord::Migration[5.2]
    def change
      create_table :heroes do |t|
        t.string :name
        t.string :power
        t.text :bio
        t.integer :team_id
      end
    end
end