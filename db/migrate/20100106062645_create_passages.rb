class CreatePassages < ActiveRecord::Migration
  def self.up
    create_content_table :passages do |t|
      t.string :p_source 
      t.string :p_title 
      t.text :p_passage, :size => (64.kilobytes + 1) 
      t.text :p_source_note, :size => (64.kilobytes + 1) 
      t.string :ecard 
      t.string :audio 
    end
    
    
    ContentType.create!(:name => "Passage", :group_name => "Passage")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Passage'])
    CategoryType.all(:conditions => ['name = ?', 'Passage']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :passage_versions
    drop_table :passages
  end
end
