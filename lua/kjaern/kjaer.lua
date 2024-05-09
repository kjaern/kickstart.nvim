return {
  vim.api.nvim_create_user_command('Dir', function()
    --    print("kjaer hello")
    local handle = io.popen 'dir'
    local result = handle:read '*a'
    print(result)
    handle:close()
  end, {}),

  vim.api.nvim_create_user_command('Conda', function()
    --    print("kjaer hello")
    local handle = io.popen 'C:/Users/kknielsen/AppData/Local/miniconda3/Scripts/activate'
    local result = handle:read '*a'
    print(result)
    handle:close()
  end, {}),
}
