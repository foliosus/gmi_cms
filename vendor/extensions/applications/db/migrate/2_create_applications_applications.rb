class CreateApplicationsApplications < ActiveRecord::Migration

  def up
    create_table :refinery_applications, :force => true do |t|
      t.integer :refinery_applicant_id
      
      ## Address
      t.string :address1, :limit => 50
      t.string :address2, :limit => 50
      t.string :city, :limit => 50
      t.string :province, :limit => 30
      t.string :postal_code, :limit => 10
      t.string :country, :limit => 50
      
      ## Personal statement
      t.text :statement
      t.text :answer
      t.text :state
      
      t.integer :position

      t.timestamps
    end
    
    add_foreign_key :refinery_applications, :refinery_applicants, column: 'refinery_applicant_id'
  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-applications"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/applications/applications"})
    end

    drop_table :refinery_applications

  end

end
