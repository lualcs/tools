---是否同日
---@param aTime number @时间
---@param bTime number @时间
---@return boolean
return function(aTime, bTime)
    return os.date("%Y%m%d%H", aTime) == os.date("%Y%m%d%H", bTime)
end


