local args = ngx.req.get_uri_args();

local loc = ipdb:find(args["ip"], "EN");
#ngx.say(cjson.encode(loc));

if loc.idc == "IDC" then
	ngx.log(ngx.ERR, args["ip"], loc.idc);
	#ngx.say("access");
	return ngx.exit(500);
end

-- ngx.say(args["ip"]);
-- ngx.say("hello\n");
