class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.float :current
      t.float :min
      t.float :max
      t.string :description
      t.float :pressure
      t.float :humidity
      t.belongs_to :city, foreign_key: true, index: true

      t.timestamps
    end
  end
end
