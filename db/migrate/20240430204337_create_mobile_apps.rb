class CreateMobileApps < ActiveRecord::Migration[7.1]
  def change
    create_table :mobile_apps do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
