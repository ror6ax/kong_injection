package = "kong_injection"
version = "1.0.0"


source = {
	  url = "git://github.com/ror6ax/kong_injection",
	  tag = "0.1.0"
}

description = {
	  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
	  homepage = "http://getkong.org",
	  license = "MIT"
}

dependencies = {
	  "lua >= 5.3.4",
	  "resty.injection >=  1.0-1"
}

build = {
    type = "builtin",
    modules = {
    ["kong.plugins.kong_injection.access"] = "kong/plugins/kong_injection/access.lua",
    ["kong.plugins.kong_injection.handler"] = "kong/plugins/kong_injection/handler.lua",
    ["kong.plugins.kong_injection.schema"] = "kong/plugins/kong_injection/schema.lua",
 }
