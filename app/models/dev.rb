class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

def received_one?(item_name)
self.freebies.any? do |item| 
    item.item_name == item_name
end
end

def give_away(freebie, dev)
  return unless received_one?(freebie.item_name)
  freebie.update(dev: dev_obj)
    #freebie.update(dev: dev) unless freebie.dev != self
  end
end
