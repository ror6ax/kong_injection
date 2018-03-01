return {
  fields = {
    sqli = { type = "bool", required = true },
    xss = { type = "bool", required = true }
    sqli_mode = { type = "array", enum = { "drop", "log" }, required = true },
    xss_mode = { type = "array", enum = { "drop", "log" }, required = true}
  }
}