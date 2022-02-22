
require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  contacts.each do |person, data_hash|
    if person == "Freddy Mercury"
      data_hash.each do |attr, data|
        if attr == :favorite_ice_cream_flavors
          data.delete_if { |flavor| flavor == "strawberry" }
        end
      end
    end
  end
end


# print the output to the terminal for inspection
pp remove_strawberry(contacts)

#at this level, "person" is Jon Snow or Freddy and "data" is a hash of
#key/value pairs to iterate over the "data" hash

#at this level, "attribute" describes the key of :name, :email,
#:favorite_ice_cream_flavors, or :knows we need to first check and see if
#the key is :favorite_ice_cream_flavors, if it is, that means the VALUE is
#an array that we can iterate over to print out each element