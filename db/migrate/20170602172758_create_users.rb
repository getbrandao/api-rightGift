class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ''
      t.string :passwd, null: false, default: ''

      t.timestamps
    end
  end
end
