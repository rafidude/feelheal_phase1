class CreateBooks < ActiveRecord::Migration
  def self.up
    create_content_table :books do |t|
      t.string :title 
      t.string :language_of_translation 
      t.string :title_in_language_of_translation 
      t.string :publishers_name 
      t.string :publishers_country 
      t.string :publishers_web_address 
      t.string :online_source 
    end
    
    
    ContentType.create!(:name => "Book", :group_name => "Book")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Book'])
    CategoryType.all(:conditions => ['name = ?', 'Book']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :book_versions
    drop_table :books
  end
end
