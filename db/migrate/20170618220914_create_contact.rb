class CreateContact < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.belongs_to :user, index: true
      t.string     :name, default: 'contact'
      t.belongs_to :social_kind, index: true
      t.string     :profile, default: 'local'
      t.boolean    :active, default: true
      t.timestamps null: false
    end
  end
end
