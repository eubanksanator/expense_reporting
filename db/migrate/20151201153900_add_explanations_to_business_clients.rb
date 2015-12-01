class AddExplanationsToBusinessClients < ActiveRecord::Migration
  def self.up
    add_column :business_clients, :location, :string
    add_column :business_clients, :business_purpose, :string
    add_column :business_clients, :person_entertained, :string
  end
  def self.down
    remove_column :business_clients, :location, :string
    remove_column :business_clients, :business_purpose, :string
    remove_column :business_clients, :person_entertained, :string
  end
end
