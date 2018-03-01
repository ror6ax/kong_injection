local filter = require("kong.plugins.kong_injection.handler")
local lu = require("luaunit")

TestHandler = require("test.unit.base_case"):extend()

function TestHandler:setUp()
  TestHandler.super:setUp()
  _G.ngx = {
    var = {
      uri = ""
    }
  }
end

function TestHandler:tearDown()
  TestHandler.super:tearDown()
end


function TestHandler:basic()
  self.handler:access({})
end
