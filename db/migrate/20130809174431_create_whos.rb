class CreateWhos < ActiveRecord::Migration
  def change
    create_table :whos do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
