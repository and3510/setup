-- ==========================================
-- 1. CONFIGURAÇÕES GERAIS (ESTILO VS CODE)
-- ==========================================
vim.g.mapleader = " "                 -- Define o 'Espaço' como tecla principal de atalhos
vim.opt.mouse = "a"                   -- Ativa o mouse perfeitamente (clique, scroll, selecionar)
vim.opt.number = true                 -- Mostra o número das linhas na esquerda
vim.opt.relativenumber = false        -- Mantém a numeração normal (igual VS Code)
vim.opt.clipboard = "unnamedplus"     -- Sincroniza a área de transferência com o sistema
vim.opt.tabstop = 2                   -- Tamanho do Tab igual a 2 espaços
vim.opt.shiftwidth = 2                -- Tamanho da indentação igual a 2 espaços
vim.opt.expandtab = true              -- Converte Tab em espaços

-- ==========================================
-- 2. ATALHOS DE TECLADO (ESTILO VS CODE)
-- ==========================================
-- Salvar arquivo com Ctrl + S
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<Esc>:w<CR>', { desc = 'Salvar arquivo' })

-- Selecionar tudo com Ctrl + A
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Selecionar tudo' })

-- Desfazer com Ctrl + Z
vim.keymap.set({'n', 'i'}, '<C-z>', '<Esc>u', { desc = 'Desfazer' })

-- Refazer com Ctrl + Y
vim.keymap.set({'n', 'i'}, '<C-y>', '<Esc><C-r>', { desc = 'Refazer' })

-- Fechar a aba/arquivo atual com Ctrl + W
vim.keymap.set('n', '<C-w>', ':bdelete<CR>', { desc = 'Fechar arquivo' })

-- Comentar com Ctrl + / (Funciona perfeitamente com a seleção do mouse)
vim.keymap.set('n', '<C-/>', '<Plug>(comment_toggle_linewise_current)', { desc = 'Comentar linha' })
vim.keymap.set('x', '<C-/>', '<Plug>(comment_toggle_linewise_visual)', { desc = 'Comentar bloco' })
-- Mapeamento extra para terminais que leem a barra como underline
vim.keymap.set('n', '<C-_>', '<Plug>(comment_toggle_linewise_current)', { desc = 'Comentar linha' })
vim.keymap.set('x', '<C-_>', '<Plug>(comment_toggle_linewise_visual)', { desc = 'Comentar bloco' })

-- Mover a linha atual para BAIXO (Alt + Seta para Baixo)
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { desc = 'Mover linha p/ baixo' })
vim.keymap.set('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', { desc = 'Mover linha p/ baixo' })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { desc = 'Mover bloco p/ baixo' })

-- Mover a linha atual para CIMA (Alt + Seta para Cima)
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { desc = 'Mover linha p/ cima' })
vim.keymap.set('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', { desc = 'Mover linha p/ cima' })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { desc = 'Mover bloco p/ cima' })

-- ==========================================
-- 3. INSTALADOR DE PLUGINS (LAZY.NVIM)
-- ==========================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ==========================================
-- 4. PLUGINS E FERRAMENTAS
-- ==========================================
require("lazy").setup({
  
  -- PLUGIN 1: Para comentar várias linhas de acordo com a linguagem
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  -- PLUGIN 2: Árvore de arquivos na lateral (NvimTree)
  {
    "nvim-tree/nvim-tree.lua",
    tag = "compat-nvim-0.9",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        filters = {
          -- Esconde a "sujeira" do LaTeX (Equivalente ao files.exclude do VS Code)
          custom = { 
            "%.aux$", "%.bbl$", "%.blg$", "%.bcf$", "%.run%.xml$", 
            "%.fdb_latexmk$", "%.fls$", "%.log$", "%.out$", 
            "%.synctex%.gz$", "%.toc$", "%.brf$", "%.idx$", 
            "%.ilg$", "%.ind$" 
          }
        }
      })
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = "Abrir explorador" })
    end
  },

  -- PLUGIN 3: Terminal Integrado (Janela Flutuante)
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<C-j>]],   -- Aperte Ctrl + j para abrir/fechar
        direction = 'float',        -- Abre como uma janela flutuante por cima do código
        float_opts = {
          border = 'curved',        -- Borda arredondada bonita
          width = 100,              -- Largura da janela
          height = 25,              -- Altura da janela
        },
      })
    end
  },

})


