class CreateViews < ActiveRecord::Migration[7.0]
  def change
    create_table :views do |t|
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
