# This migration comes from refinery_applications (originally 2)
class CreateApplicationsApplicants < ActiveRecord::Migration

  def up
    create_table :refinery_applicants, :force => true do |t|
      ## Name
      t.string :first_name, :limit => 50
      t.string :middle_name, :limit => 50
      t.string :last_name, :limit => 50
      
      ## Database authenticatable
      t.string :email,              :null => false, :limit => 50
      t.string :encrypted_password, :null => false, :limit => 255
      
      ## Recoverable
      t.string   :reset_password_token, :limit => 255
      t.datetime :reset_password_sent_at
      
      ## Rememberable
      t.datetime :remember_created_at
      
      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip, :limit => 24
      t.string   :last_sign_in_ip, :limit => 24
      
      ## Encryptable
      t.string :password_salt, :limit => 255
      
      ## Refinery
      t.integer :position
      
      t.timestamps
    end
    
    add_index :refinery_applicants, :email,                :unique => true
    add_index :refinery_applicants, :reset_password_token, :unique => true
  end
  
  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-applicants"})
    end
    
    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/applicants/applicants"})
    end
    
    drop_table :refinery_applicants
  end

end
