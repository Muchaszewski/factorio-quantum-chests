List = {
    count = 0, 
    array = {}
}
function List:new () 
    return setmetatable({}, self) 
end

function List:insert(item)
    table.insert(self.array, item)
    self.count = self.count + 1
end

function List:remove(i)
    self.count = self.count - 1
    table.remove(self.array, i)
end

function List:removeItem(item)
    for k, v in pairs(self.array) do
        if v == item then
            List.remove(self, k)
        end
    end
end