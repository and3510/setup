# Tmux: Configuracao e Documentacao

Configuracao personalizada do Tmux voltada para produtividade, divisao rapida de telas e monitoramento de sistema.

## Instalacao e Configuracao

1. Instalar pacotes necessarios:
   ```bash
   sudo apt update
   sudo apt install tmux git -y
   ```

2. Clonar o gerenciador de plugins (TPM):
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

3. Instalar os plugins:
   * Inicie o Tmux com o comando `tmux`.
   * Pressione o prefixo: `Alt + v`.
   * Pressione a tecla `I` (maiuscula) para baixar o tema Dracula e as ferramentas de persistencia.

## Atalhos e Comandos

O prefixo padrao (Ctrl + b) foi substituido por `Alt + v`.

* `<Prefixo> + _` : Divide a janela verticalmente.
* `<Prefixo> + -` : Divide a janela horizontalmente.
* `<Prefixo> + Ctrl + s` : Salva o estado atual das sessoes manualmente.
* `<Prefixo> + Ctrl + r` : Restaura o ultimo estado salvo manualmente.
* Mouse: Habilitado para rolagem de tela, selecao e redimensionamento de paineis. Copia integrada com a area de transferencia do sistema via tmux-yank.

## Registro de Aprendizados

* Data - Problema: Copia de texto para fora do terminal.
  * Solucao: Integrado o plugin tmux-yank em conjunto com os pacotes xclip e wl-clipboard.
