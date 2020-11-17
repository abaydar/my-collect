require 'pry'

def my_collect(array)
    i = 0
    collection = []
    while i < array.length do
        collection << yield(array[i])
        i += 1
    end
    collection
    
end

array = ["Tim Jones", "Tom Smith", "Jim Camp"]
my_collect(array) do |name|
    name.split(" ").first
end
