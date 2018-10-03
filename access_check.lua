--
-- Created by IntelliJ IDEA.
-- User: caozhifei
-- Date: 2018/10/3
-- Time: 13:09
-- To change this template use File | Settings | File Templates.
--
local util= require("comm.util")
local cjson = require("cjson")
local args = ngx.req.get_uri_args()

if not args.a or not args.b or not util.is_number(args.a, args.b) then
    local result = {}
    result.code = 100
    result.msg = "非法参数"
    local json = cjson.encode(result)
    ngx.say(json)
    return
end

