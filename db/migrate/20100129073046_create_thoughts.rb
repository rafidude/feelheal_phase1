class CreateThoughts < ActiveRecord::Migration
  def self.up
    create_content_table :thoughts do |t|
      t.string :language 
      t.string :month 
      t.string :day 
      t.text :quote, :size => (64.kilobytes + 1) 
      t.string :quote_by 
      t.text :thought_matter, :size => (64.kilobytes + 1) 
    end
    
    
    ContentType.create!(:name => "Thought", :group_name => "Thought")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Thought'])
    CategoryType.all(:conditions => ['name = ?', 'Thought']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :thought_versions
    drop_table :thoughts
  end
end
