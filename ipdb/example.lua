function test_district()
    local dis = require("district")
    local db = dis:new("/srv/waf/ipv4_en.ipdb")
    local loc = db:find("129.226.148.218", "EN")
    for k, v in pairs(loc) do
        print(k, v)
    end
    print(loc.district_name)

    print(db:languages())

    local cj = require("cjson");
    print(cj.encode(loc));

    local min = 0
    local max = 100000

end

test_district()
