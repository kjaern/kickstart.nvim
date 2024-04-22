return {
  vim.api.nvim_create_user_command('Dir', 
  function ( )   
--    print("kjaer hello")
    local handle = io.popen("dir")
    local result = handle:read("*a")
    print(result)
    handle:close()
  end, {})
}
