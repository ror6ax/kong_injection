local injection = require "resty.injection"
local req_read_body = ngx.req.read_body
local req_get_body_data = ngx.req.get_body_data

function _M.execute(conf)
  if #conf.sqli == true then
  	scan_for_sqli(conf)
  end
  if #conf.xss == true then
	  scan_for_xss(conf)
  end
end

function scan_for_sqli(conf)
  req_read_body()
  local body_sqli = req_get_body_data()
  if injection.sql(body_sqli) == true then
  	if #conf.sqli_mode == "drop" then  
  		drop_request("SQL injection")
  	end
  end
end

function scan_for_xss(conf)
  req_read_body()
  local body_xss = req_get_body_data()
  if injection.xss(body_xss) == true then
  	if #conf.xss_mode == "drop" then  
  		drop_request("Cross Site scripting")
  	end
  end
end

function drop_request(method)
  return responses.send(400, "Request has been blocked due to" .. method .. "payload found  in the body")
end