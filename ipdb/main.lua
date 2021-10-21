-- local cip = ngx.var.remote_addr
-- local cip = ngx.var.http_x_forwarded_for

local args = ngx.req.get_uri_args();
local cip = args["ip"]
-- ngx.say(cip);
-- local loc = ipdb:find(args["ip"], "EN");

local loc = ipdb:find(cip, "EN");
ngx.say(cjson.encode(loc));

if loc.idc == "IDC" then
	ngx.log(ngx.ERR, cip, loc.idc);
	-- ngx.say("access");
	return ngx.exit(500);
end

-- ngx.say(args["ip"]);
-- ngx.say("hello\n");
