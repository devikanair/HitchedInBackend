class CreateRecruiterfilters < ActiveRecord::Migration
  def change
    create_table :recruiterfilters do |t|

      t.timestamps
    end
  end
end
