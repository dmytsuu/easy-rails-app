class DropMobileApps < ActiveRecord::Migration[7.1]
  def change
    drop_table :mobile_apps
  end
end
