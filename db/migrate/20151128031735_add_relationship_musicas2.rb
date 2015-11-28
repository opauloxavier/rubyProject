class AddRelationshipMusicas2 < ActiveRecord::Migration
  def change
    add_reference :musicas, :albums,index: true
  end
end
