class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :years
      t.boolean :formal

      t.timestamps

    end
  end
end
