# Configuraciones que uso en mi wsl

Basados en el repositorio de [Gentleman.Dots](https://github.com/Gentleman-Programming/Gentleman.Dots). Este repositorio contine configuraciones para un entorno de desarrollo completo en wsl, incluyendo neovim, zsh, zellij y la terminal emulada de WezTerm. 

#### 1. Instalar WSL
WSL (Windows subsystem for Linux). Instalar la version 2


```powershell
wsl --install
wsl --set-default-version 2
```

#### 2. Instalar una distribución de Linux

Instalar una distribución de Linux (e.g., Ubuntu) en WSL:

```powershell
wsl --install -d Ubuntu
```
#### 3. Instalación de la fuente Iosevka

La fuente Iosevka Term Nerd es necesaria para los emuladores de terminal en esta configuración. En Windows, esta instalación debe hacerse manualmente.

1. **Descargue la fuente Iosevka** de su sitio oficial o de [Nerd Fonts GitHub](https://github.com/ryanoasis/nerd-fonts).
2. **Extrae el archivo** y localiza los archivos de la fuente (`.ttf` o `.otf`).
3. 3. **Instala las fuentes**:
   - Haz clic con el botón derecho en cada archivo de fuente y selecciona **"Instalar para todos los usuarios»** para instalar la fuente en todo el sistema.

#### 4. Instalación de WezTerm

- **WezTerm**: [Download and Install](https://wezfurlong.org/wezterm/installation.html)
  
- Crear un archivo `.wezterm.lua` en la carpeta `C:\Users\your-username\`
- Copear lo del archivo del repo y pegarlo dentro del archivo `.wezterm.lua`
- Reiniciar WezTerm


```powershell

# Descomentar las siguientes líneas en .wezterm.lua:

# config.default_domain = 'WSL:Ubuntu'
# config.front_end = "WebGpu"
# config.max_fps = 120
```

#### 5. lanza y configura la distribución

Open the installed distribution to complete setup. Update it with:
Abre la distribución instalada. actualiza con:

```bash
sudo apt-get update
sudo apt-get upgrade
```
#### 6. Instalar zsh

```bash
sudo apt install zsh -y
```
para establecerla por defecto:
```
chsh -s $(which zsh)
```

#### 7. Instalar OhMyZsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### 8. Instalar Homebrew 
Vamos a instalar homebrew debido a que es gestor de paquetes bastante facil de usar y nos trae la última versión de Neovim

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
al finalizar la instalación te dice que debes ejecutar un echo y un eval para guardar el path de brew

#### 9. Instalar Cargo para zellij
Instalamos cargo para zellij para mantenerlo en la última versión ya que con brew podría tardar en llegar las actualizaciones

con esto descargamos cargo:
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
```

```
cargo install zellij
```

#### 10. Instalaciones adicionales

```
brew install fzf fd ripgrep bat git gcc curl lazygit jq bash neovim
```

#### 11. Movemos los archivos del repo a config
Con esto ya nos quedara las configuraciones que están en este repo
```bash
cp -r fbonillaDots/* ~/.config/
```
#### 12. Movemos el archivo .zshrc 
```
cp -r fbonillaDots/.zshrc ./
```

### 13. Por último instala node
Puedes usar node con nvm o con brew, yo lo recomiendo con nvm ya que te permite gestionar versiones

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.zshrc
```
