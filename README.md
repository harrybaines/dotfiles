<div align="center">
  <h1>🚀 My Dotfiles</h1>
  <p>A collection of my personal development environment configurations</p>
  <img src="./images/setup-latest.png" alt="My Setup - Latest (18/02/2025)" width="800"/>
</div>

## 🚀 Installation

These dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/), a symlink farm manager that makes it easy to maintain dotfiles. If you'd like to try my setup for yourself, follow the steps below.

1. First, clone this repository:

   ```bash
   git clone https://github.com/harrybaines/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Install GNU Stow:

   ```bash
   # On Ubuntu/Debian
   sudo apt install stow

   # On macOS
   brew install stow

   # On Arch Linux
   sudo pacman -S stow
   ```

3. Use Stow to symlink configurations:

   ```bash
   # Link all configurations
   stow */

   # Or link specific configurations
   stow aerospace
   stow nvim
   ```

## 📝 Notes

- Backup your existing configurations before installing these dotfiles
- Some configurations might need additional software to be installed
- Feel free to cherry-pick the configurations you want to use

---

<div align="center">
  <i>⭐ Star this repository if you find it helpful!</i>
</div>
