local args = ngx.req.get_uri_args();

local loc = ipdb:find(args["ip"], "EN");
if loc.idc == "IDC" then
	ngx.log(ngx.ERR, args["ip"], loc.idc);
	return ngx.exit(500);
end

#ngx.say(cjson.encode(loc));

-- ngx.say(args["ip"]);
-- ngx.say("hello\n");
