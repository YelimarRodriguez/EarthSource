class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
