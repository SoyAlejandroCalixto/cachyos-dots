# cachyos-dots

* ### 📁 - Clone dots
    ```zsh
    git clone https://github.com/SoyAlejandroCalixto/cachyos-dots /tmp/cachyos-dots
    cp -r /tmp/cachyos-dots/. ~/
    ```

* ### 📦 - Packages
    ```zsh
    sudo pacman -Syu && sudo pacman -S --noconfirm --needed github-cli neovim ttf-cascadia-code-nerd inter-font zoxide atuin bat lsd discord obs-studio davinci-resolve audacity spotify-launcher zed bitwarden qbittorrent umu-launcher cloudflare-warp-bin
    paru -S --noconfirm --needed pamac-aur fnm wezterm-nightly-bin
    ```

* ### 📦 - Other things
    ```zsh
    # Start the Cloudflare Warp daemon
    sudo systemctl enable warp-svc && sudo systemctl start warp-svc && warp-cli registration new
    ```

* ### 🎨 - KDE theme
  **```Kvantum theme 👉```** vimix doder

  **```Colors 👉```** kvantum

  **```Application style 👉```** kvantum dar

  **```Plasma style 👉```** fluent-round-dark

  **```Icons 👉```** papirus

  **```Cursors 👉```** bibata modern classic

  **```Welcome screen 👉```** minecraft world loading
