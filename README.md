# unipicker

A CLI utility for searching unicode characeters by description and copying
them to clipboard.

# Screenshots

Running with `fzf`:

![Running with fzf](http://i.imgur.com/Q6bSd0S.png)

Running with `rofi -dmenu`:

![Running with rofi](http://i.imgur.com/q1eE3vA.png)

# Dependencies

- [fzf](https://github.com/junegunn/fzf/) (installs automatically if cloned with `--recursive`)
- [xclip](http://linux.die.net/man/1/xclip)

## Installing xclip

- Ubuntu/Debian: `apt-get install xclip`
- Arch Linux: `pacman -S xclip`

# Installation

```bash
# omit `--recursive` if you plan to use something else than fzf
# or already have fzf installed
git clone --recursive https://github.com/jeremija/unipicker
cd unipicker

# install fzf (not necessary if you will use a different application)
fzf/install

unipicker
```

# Configuration

There are two ways of using different application for searching:

Environment variable:

```bash
UNIPICKER_COMMAND="rofi -dmenu" unipicker
```

Unipickerrc file in project root:

```bash
echo 'COMMAND="rofi -dmenu"' > unipickerrc
unipicker
```

# License

[MIT](LICENSE)
