class CreateChangetypes < ActiveRecord::Migration
  def change
    create_table :changetypes do |t|
      t.string :random

      t.timestamps
    end
  end
end
