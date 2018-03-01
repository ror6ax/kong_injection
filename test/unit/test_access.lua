local lu = require("luaunit")

function TestAccess:setUp()
  TestAccess.super:setUp()
  _G.ngx = {
    var = {
      uri = ""
    }
  }
end

function TestAccess:tearDown()
  TestAccess.super:tearDown()
end


function TestAccess:drop()
  local name = "test"
  local result = self.access:drop_request(name)
  lu.assertEquals("Request has been blocked due to" .. name .. "payload found  in the body", result)
end
