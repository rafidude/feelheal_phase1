class CreateJournals < ActiveRecord::Migration
  def self.up
    create_content_table :journals do |t|
      t.string :j_year 
      t.string :season 
      t.string :linked_pdf 
      t.text :main_article, :size => (64.kilobytes + 1) 
      t.string :main_article_link 
      t.text :other_article, :size => (64.kilobytes + 1) 
    end
    
    
    ContentType.create!(:name => "Journal", :group_name => "Journal")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Journal'])
    CategoryType.all(:conditions => ['name = ?', 'Journal']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :journal_versions
    drop_table :journals
  end
end
