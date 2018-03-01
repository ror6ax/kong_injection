local access = require "kong.plugins.kong_injection.access"

local KongInjection = BasePlugin:extend()

function KongInjection:new()
  KongInjection.super.new(self, "injection")
end


function KongInjection:access(conf)
  KongInjection.super.access(self)
  access.execute(conf)
end