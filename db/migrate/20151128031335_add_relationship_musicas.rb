class AddRelationshipMusicas < ActiveRecord::Migration
  def change
    add_reference :musicas, :artists,index: true
  end
end
