### Preparando o Ambiente Tmux

Siga estes passos para instalar e configurar o seu Tmux com o gerenciador de plugins e o tema Dracula:

**1. Instalar o Tmux e o Git (caso não tenha):**

```bash
sudo apt update
sudo apt install tmux git -y

```

**2. Instalar o Gerenciador de Plugins do Tmux (TPM):**
Clone o repositório do TPM para a pasta oculta do Tmux no seu usuário:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

**3. Ativar os Plugins (Tema Dracula e Utilidades):**

1. Abra o Tmux no terminal digitando `tmux`.
2. Pressione o seu novo atalho de prefixo: **`Alt + v`**.
3. Em seguida, pressione **`I`** (a letra "i" maiúscula).
4. Aguarde o download dos plugins e do tema. Quando finalizar, pressione `ESC` ou `Enter` para sair da tela de instalação.

---

### 📋 Lista de Comandos e Atalhos (Cheatsheet)

**⚠️ ATENÇÃO - O PREFIXO MUDOU:**
O atalho padrão do Tmux (`Ctrl + b`) foi desativado. Em sua configuração, o **Prefixo** agora é **`Alt + v`**. Você deve pressionar e soltar `Alt + v` antes de usar os atalhos abaixo.

**Gerenciamento de Painéis (Divisão de Tela):**

* **`<Prefixo>` + `|**` : Divide a tela atual verticalmente (lado a lado).
* **`<Prefixo>` + `-**` : Divide a tela atual horizontalmente (em cima e embaixo).

**Mouse e Navegação:**

* **Mouse 100% Ativo**: Você pode usar o mouse para clicar e alternar entre os painéis, redimensionar as divisões arrastando as bordas e rolar o histórico do terminal normalmente (scroll).
* Graças ao plugin `tmux-yank`, você pode selecionar textos no terminal com o mouse e eles serão copiados automaticamente para a sua área de transferência.

**Salvar e Restaurar Sessões (Resurrect & Continuum):**

* **Automático:** Sua configuração está com o `@continuum-restore 'on'`, o que significa que suas sessões e painéis serão salvos e restaurados automaticamente ao abrir o tmux.
* **`<Prefixo>` + `Ctrl + s**` : Salva o estado atual das sessões manualmente.
* **`<Prefixo>` + `Ctrl + r**` : Restaura o último estado salvo manualmente.

**Visual (Tema Dracula):**

* A barra inferior mostrará informações em tempo real, incluindo o uso de CPU, uso de RAM e a Hora do sistema.
