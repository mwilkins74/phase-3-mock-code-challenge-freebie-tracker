class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :comapnies, through: :freebies

    def received_one(item_name)
        if self.item_name == self.item_name 
            return true
        else
            return false
        end
    end

    def give_away(dev, freebie)
        binding.pry
        if freebie.dev_id == self.id
            freebie.update(dev: dev)
        else 
            nil
        end
    end
end
