class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :bluetooth
      t.string :linkedinprofile
      t.string :name
      t.string :profiletitle
      t.string :picurl
      t.string :skills
      t.timestamps
    end
  end
end
