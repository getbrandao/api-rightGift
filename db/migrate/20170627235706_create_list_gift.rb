class CreateListGift < ActiveRecord::Migration[5.1]
  def change
    create_table :list_gifts do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :contact, index: true
      t.string     :name, default: 'gift'
      t.string     :image, default: 'url'
      t.string     :celebration, default: 'birthday'
      t.timestamps null: false
    end
  end
end
