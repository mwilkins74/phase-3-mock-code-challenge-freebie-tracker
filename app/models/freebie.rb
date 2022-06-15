class Freebie < ActiveRecord::Base
    belongs_to :Company
    belongs_to :dev

    def print_details
        "#{self.dev.name} owns a #{self.item.name} from #{self.company.name}"
    end
end
