class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :bluetooth
      t.string :linkedinprofile

      t.timestamps
    end
  end
end
