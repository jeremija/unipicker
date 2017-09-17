# unipicker

A CLI utility for searching unicode characeters by description and optionally
copying them to clipboard.

<!-- BEGIN-MARKDOWN-TOC -->
* [Screenshots](#screenshots)
* [Dependencies](#dependencies)
* [Installation](#installation)
* [Usage](#usage)
* [Configuration](#configuration)
	* [Example environment variable](#example-environment-variable)
	* [Examples unipickerrc](#examples-unipickerrc)
* [License](#license)

<!-- END-MARKDOWN-TOC -->

## Screenshots

Running with `fzf`:

![Running with fzf](http://i.imgur.com/Q6bSd0S.png)

Running with `rofi -dmenu`:

![Running with rofi](http://i.imgur.com/q1eE3vA.png)

## Dependencies

You need a selector command, default is [fzf](https://github.com/junegunn/fzf/)

To copy to clipboard you need [xclip](http://linux.die.net/man/1/xclip)

xclip can be installed in various linux distros:

- Ubuntu/Debian: `apt-get install xclip`
- Arch Linux: `pacman -S xclip`

## Installation

```bash
make install
```

To install to your home directory instead of `/usr/local`:

```bash
make install PREFIX=$HOME/.local
```

## Usage

<!-- BEGIN-EVAL ./unipicker --help | sed -e '1i ```sh' -e '$a ```' -->
```sh
Select unicode character by description

Usage: unipicker [--copy] [--list]

Options:
    --copy   Copy to clipboard
    --list   Only list the symbols, do not select or copy

Variables:

  UNIPICKER_SELECT_COMMAND Command to use for selecting (= 'fzf')
  UNIPICKER_COPY_COMMAND   Command to use for copying (= 'xclip -selection clipboard')
```

<!-- END-EVAL -->

## Configuration

You can configure both the selector command and the copy command.

To override the selector command, either set the `UNIPICKER_SELECT_COMMAND` globally or set the `SELECT_COMMAND` variable in `$HOME/.unipickerrc`.

To override the copy command, either set the `UNIPICKER_COPY_COMMAND` globally or set the `COPY_COMMAND` variable in `$HOME/.unipickerrc`.

### Example environment variable

```bash
UNIPICKER_COMMAND="rofi -dmenu" unipicker
```

### Examples unipickerrc

`.unipickerrc` file in `$HOME` folder:

```bash
COPY_COMMAND="rofi -dmenu"
```

## License

[MIT](LICENSE)
