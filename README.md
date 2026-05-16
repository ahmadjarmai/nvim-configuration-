# nvim-configuration-
## Font Installation (Optional but Recommended)

For proper display of icons and special characters in the statusline, install a Nerd Font:

```bash
# Create a fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Download Hack Nerd Font (complete version)
cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip

# Unzip and install
unzip Hack.zip -d ~/.local/share/fonts/

# Refresh the font cache
fc-cache -fv
