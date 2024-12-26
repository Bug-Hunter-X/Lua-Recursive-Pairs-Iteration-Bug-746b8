local function foo(t)
  local function traverse(tbl)
    for k, v in ipairs(tbl) do  -- Use ipairs for indexed tables.  Change this to pairs for associative tables if applicable.
      if type(v) == "table" then
        traverse(v)
      end
    end
  end
  traverse(t)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t) 