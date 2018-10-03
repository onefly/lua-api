--
-- Created by IntelliJ IDEA.
-- User: caozhifei
-- Date: 2018/10/3
-- Time: 13:01
-- To change this template use File | Settings | File Templates.
--

local args = ngx.req.get_uri_args()
ngx.say(args.a - args.b)


