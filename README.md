[![Build Status](https://travis-ci.org/ror6ax/kong_injection.svg?branch=master)](https://travis-ci.org/ror6ax/kong_injection)

# Kong plugin for detection of SQL injections and XSS code

Set-up.

* `sqli = true | false` - enable SQL injection filter. Required.
* `xss = true | false` - enable Cross site scripting filter. Required.
* `sqli_mode = "drop" | "log"` - define what to do with request matching the SQL injection. Required.
* `xss_mode = "drop" | "log"` - define what to do with request matching the XSS code. Required.

TODO:
* limit the scanning to dynamically defined parts of the request