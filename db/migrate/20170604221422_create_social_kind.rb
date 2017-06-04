class CreateSocialKind < ActiveRecord::Migration[5.1]
  def change
    create_table :social_kinds do |t|
      t.string :name, null: false, default: 'example'
    end
  end
end
