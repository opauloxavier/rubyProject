class CreateMusicas < ActiveRecord::Migration
  def change
    create_table :musicas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
