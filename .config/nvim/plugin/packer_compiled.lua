-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jacobmatthews/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jacobmatthews/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jacobmatthews/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jacobmatthews/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jacobmatthews/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\fonenord\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n°\3\0\0\6\0\16\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\v\0004\4\5\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\4\0059\5\6\5>\5\2\0049\5\3\0009\5\a\0059\5\b\5>\5\3\0049\5\3\0009\5\t\0059\5\n\5>\5\4\4=\4\f\3B\1\2\0016\1\r\0009\1\14\1'\3\15\0B\1\2\1K\0\1\0Ã\1                augroup formatting\n                    autocmd! \n                    autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)\n                augroup END\n            \bcmd\bvim\fsources\1\0\0\nspell\15completion\reslint_d\17code_actions\vstylua\14prettierd\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim‘\3\1\0\n\0\25\00026\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0003\4\3\0=\4\5\0039\4\6\0009\4\a\0049\4\b\0045\6\n\0009\a\6\0009\a\t\a)\tüÿB\a\2\2=\a\v\0069\a\6\0009\a\t\a)\t\4\0B\a\2\2=\a\f\0069\a\6\0009\a\r\aB\a\1\2=\a\14\0069\a\6\0009\a\15\aB\a\1\2=\a\16\0069\a\6\0009\a\17\a5\t\18\0B\a\2\2=\a\19\6B\4\2\2=\4\6\0039\4\20\0009\4\21\0044\6\3\0005\a\22\0>\a\1\0065\a\23\0>\a\2\0064\a\3\0005\b\24\0>\b\1\aB\4\3\2=\4\21\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesà\6\1\0\n\0-\0H6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\3\4\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0A\1\0\0029\2\b\0009\2\t\0025\4\n\0=\1\v\0043\5\f\0=\5\r\4B\2\2\0019\2\14\0009\2\t\0025\4\15\0=\1\v\0043\5\16\0=\5\r\4B\2\2\0019\2\17\0009\2\t\0025\4\18\0=\1\v\0043\5\19\0=\5\r\4B\2\2\0019\2\20\0009\2\t\0025\4\21\0=\1\v\0043\5\22\0=\5\r\4B\2\2\0019\2\23\0009\2\t\0025\4\31\0005\5\29\0005\6\25\0005\a\24\0=\a\26\0065\a\27\0=\a\28\6=\6\30\5=\5 \4B\2\2\0019\2!\0009\2\t\0025\4\"\0=\1\v\0045\5#\0=\5$\0045\5%\0=\5&\0046\5\0\0'\a'\0B\5\2\0029\5(\5'\a)\0'\b*\0'\t+\0B\5\4\2=\5,\4B\2\2\1K\0\1\0\rroot_dir\t.git\vgo.mod\fgo.work\17root_pattern\19lspconfig/util\14filetypes\1\3\0\0\ago\ngomod\bcmd\1\3\0\0\ngopls\nserve\1\0\0\ngopls\rsettings\1\0\0\16tailwindCSS\1\0\0\tlint\1\0\a\29invalidTailwindDirective\nerror\18invalidScreen\nerror\22invalidConfigPath\nerror\17invalidApply\nerror\16cssConflict\fwarning\28recommendedVariantOrder\fwarning\19invalidVariant\nerror\20classAttributes\1\0\1\rvalidate\2\1\5\0\0\nclass\14className\14classList\fngClass\16tailwindcss\0\1\0\0\18cssmodules_ls\0\1\0\0\ncssls\0\1\0\0\rtsserver\14on_attach\0\17capabilities\1\0\0\nsetup\16sumneko_lua\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nê\1\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\b\0005\4\t\0=\4\n\0035\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\bgit\1\0\1\vignore\1\ffilters\fexclude\1\2\0\0\15.gitignore\vcustom\1\3\0\0\t.git\17node_modules\1\0\1\rdotfiles\1\rrenderer\1\0\0\nicons\1\0\0\1\0\1\18webdev_colors\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nš\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\20\0\0\15typescript\15javascript\njsonc\rmarkdown\btsx\tyaml\tbash\fcomment\bcss\15dockerfile\ago\fgraphql\thtml\njsdoc\blua\bphp\vpython\nregex\tscss\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onenord.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fonenord\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/onenord.nvim",
    url = "https://github.com/rmehri01/onenord.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n†\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\n.git/\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/jacobmatthews/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim‘\3\1\0\n\0\25\00026\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0003\4\3\0=\4\5\0039\4\6\0009\4\a\0049\4\b\0045\6\n\0009\a\6\0009\a\t\a)\tüÿB\a\2\2=\a\v\0069\a\6\0009\a\t\a)\t\4\0B\a\2\2=\a\f\0069\a\6\0009\a\r\aB\a\1\2=\a\14\0069\a\6\0009\a\15\aB\a\1\2=\a\16\0069\a\6\0009\a\17\a5\t\18\0B\a\2\2=\a\19\6B\4\2\2=\4\6\0039\4\20\0009\4\21\0044\6\3\0005\a\22\0>\a\1\0065\a\23\0>\a\2\0064\a\3\0005\b\24\0>\b\1\aB\4\3\2=\4\21\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilitiesà\6\1\0\n\0-\0H6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\3\4\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0A\1\0\0029\2\b\0009\2\t\0025\4\n\0=\1\v\0043\5\f\0=\5\r\4B\2\2\0019\2\14\0009\2\t\0025\4\15\0=\1\v\0043\5\16\0=\5\r\4B\2\2\0019\2\17\0009\2\t\0025\4\18\0=\1\v\0043\5\19\0=\5\r\4B\2\2\0019\2\20\0009\2\t\0025\4\21\0=\1\v\0043\5\22\0=\5\r\4B\2\2\0019\2\23\0009\2\t\0025\4\31\0005\5\29\0005\6\25\0005\a\24\0=\a\26\0065\a\27\0=\a\28\6=\6\30\5=\5 \4B\2\2\0019\2!\0009\2\t\0025\4\"\0=\1\v\0045\5#\0=\5$\0045\5%\0=\5&\0046\5\0\0'\a'\0B\5\2\0029\5(\5'\a)\0'\b*\0'\t+\0B\5\4\2=\5,\4B\2\2\1K\0\1\0\rroot_dir\t.git\vgo.mod\fgo.work\17root_pattern\19lspconfig/util\14filetypes\1\3\0\0\ago\ngomod\bcmd\1\3\0\0\ngopls\nserve\1\0\0\ngopls\rsettings\1\0\0\16tailwindCSS\1\0\0\tlint\1\0\a\29invalidTailwindDirective\nerror\18invalidScreen\nerror\22invalidConfigPath\nerror\17invalidApply\nerror\16cssConflict\fwarning\28recommendedVariantOrder\fwarning\19invalidVariant\nerror\20classAttributes\1\0\1\rvalidate\2\1\5\0\0\nclass\14className\14classList\fngClass\16tailwindcss\0\1\0\0\18cssmodules_ls\0\1\0\0\ncssls\0\1\0\0\rtsserver\14on_attach\0\17capabilities\1\0\0\nsetup\16sumneko_lua\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\fonenord\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nê\1\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\b\0005\4\t\0=\4\n\0035\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\bgit\1\0\1\vignore\1\ffilters\fexclude\1\2\0\0\15.gitignore\vcustom\1\3\0\0\t.git\17node_modules\1\0\1\rdotfiles\1\rrenderer\1\0\0\nicons\1\0\0\1\0\1\18webdev_colors\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n°\3\0\0\6\0\16\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\v\0004\4\5\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\4\0059\5\6\5>\5\2\0049\5\3\0009\5\a\0059\5\b\5>\5\3\0049\5\3\0009\5\t\0059\5\n\5>\5\4\4=\4\f\3B\1\2\0016\1\r\0009\1\14\1'\3\15\0B\1\2\1K\0\1\0Ã\1                augroup formatting\n                    autocmd! \n                    autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)\n                augroup END\n            \bcmd\bvim\fsources\1\0\0\nspell\15completion\reslint_d\17code_actions\vstylua\14prettierd\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n†\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\n.git/\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nš\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\20\0\0\15typescript\15javascript\njsonc\rmarkdown\btsx\tyaml\tbash\fcomment\bcss\15dockerfile\ago\fgraphql\thtml\njsdoc\blua\bphp\vpython\nregex\tscss\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: onenord.nvim
time([[Config for onenord.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fonenord\frequire\0", "config", "onenord.nvim")
time([[Config for onenord.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
