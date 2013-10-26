class CreateMaptolinkedins < ActiveRecord::Migration
  def change
    create_table :maptolinkedins do |t|
      t.string :bluetooth
      t.string :linkedinprofile
      t.string :name
      t.string :profiletitle
      t.string :picurl
      t.string :skills
      t.string :comment

      t.timestamps
    end
  end
end
