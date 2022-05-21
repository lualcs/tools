local function swap(t, a, b)
    t[a], t[b] = t[b], t[a]
end

---希尔排序
---@param arr   any[] @数组
---@param comp  fun(a:any,b:any):boolean @比较函数
return function(arr, comp)
    local len = #arr
    local gap = len // 2
    
    while gap > 0 do
        for i = gap + 1, len do
            local j = i
            
            while comp(arr[j], arr[j - gap]) do
                swap(arr, j, j - gap)
                j = j - gap
                
                if j <= gap then 
                    break 
                end
            end
        end
        
        gap = gap // 2
    end
end


