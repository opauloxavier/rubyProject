class AddIndexToGenero < ActiveRecord::Migration
  def change
    add_index :generos, :name, unique:true
  end
end
