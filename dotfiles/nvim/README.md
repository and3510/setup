# Neovim: Configuracao e Documentacao

Configuracao do Neovim desenvolvida em Lua, adaptada para fornecer uma experiencia de navegacao e atalhos similar ao VS Code no terminal.

## Instalacao e Configuracao

1. Instalar o Neovim e dependencias:
   ```bash
   sudo apt update
   sudo apt install git curl xclip wl-clipboard -y
   sudo snap install nvim --classic
   ```

2. Aplicar a configuracao:
   * Posicione o arquivo `init.lua` no diretorio `~/.config/nvim/init.lua`.
   * Abra o editor executando `nvim`.
   * O lazy.nvim fara o download automatico dos plugins (NvimTree, ToggleTerm, Comment). Pressione `q` para fechar a interface do instalador ao terminar.

## Atalhos e Comandos

* `Ctrl + S` : Salva o arquivo.
* `Ctrl + W` : Fecha o buffer atual.
* `Ctrl + A` : Seleciona todo o conteudo do arquivo.
* `Ctrl + Z` : Desfaz a ultima alteracao.
* `Ctrl + Y` : Refaz a ultima alteracao.
* `Ctrl + /` : Comenta ou descomenta a linha ou bloco selecionado.
* `Alt + Seta para Cima / Baixo` : Move a linha ou bloco selecionado verticalmente.
* `Espaco + e` : Abre ou fecha o explorador de arquivos lateral (NvimTree).
* `Ctrl + J` : Abre ou fecha a janela do terminal integrado flutuante (ToggleTerm).

## Registro de Aprendizados

* Data - Problema: Falha no atalho de comentarios dependendo do emulador de terminal.
  * Solucao: Mapeadas as combinacoes `<C-/>` e `<C-_>` no init.lua para compatibilidade ampla do plugin Comment.nvim.
