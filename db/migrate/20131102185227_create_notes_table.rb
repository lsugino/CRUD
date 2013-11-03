class CreateNotesTable < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :note
    end
  end
end
