# unipicker

Searches unicode characters by description and copies selected one to
clipboard.

# Dependencies

- [fzf](https://github.com/junegunn/fzf/) (installs automatically if cloned with `--recursive`)
- [xclip](http://linux.die.net/man/1/xclip)

## Installing xclip

- Ubuntu/Debian: `apt-get install xclip`
- Arch Linux: `pacman -S xclip`

# Installation

```bash
# omit `--recursive` if you plan on using something else than fzf
# or already have fzf installed
git clone --recursive https://github.com/jeremija/unipicker
cd unipicker

# install fzf (not necessary if you will use a different application.
fzf/install

unipicker
```

# Configuration

To use a different application, for example `dmenu` or `rofi` create a new
`unipickerrc` file:

```bash
echo 'COMMAND="rofi -dmenu"' > unipickerrc
```

# License

[MIT](LICENSE)
