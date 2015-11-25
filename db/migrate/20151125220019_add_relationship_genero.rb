class AddRelationshipGenero < ActiveRecord::Migration
  def change
    add_reference :artists, :generos,index: true
  end
end