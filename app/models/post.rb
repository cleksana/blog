class Post < ActiveRecord::Base
    attr_accessible :text, :title, :expec, :notes
    
    #validates :title, presence: true,
    #length: { minimum: 5 }
    #^ validates that the title is at least five characters long
    
    
end
