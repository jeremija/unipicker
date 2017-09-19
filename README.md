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

To copy to clipboard on Linux you need [xclip](http://linux.die.net/man/1/xclip)

xclip can be installed in various linux distros:

- Ubuntu/Debian: `apt-get install xclip`
- Arch Linux: `pacman -S xclip`

The `pbcopy` utility will be used on a Mac, which is installed by default.

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

Usage: unipicker [--command cmd] [--copy-command cmd ] [--copy] [--list]

Arguments:
  --command       Overrides default select command
  --copy-command  Override copy to clipboard command, implies --copy
  --copy          Copy to clipboard
  --list          Only list the symbols, do not select or copy

Variables:

  UNIPICKER_SELECT_COMMAND  Command to use for selecting (= fzf)
  UNIPICKER_COPY_COMMAND    Command to use for copying (= pbcopy)
  UNIPICKER_SYMBOLS_FILE    Location of symbols (= /usr/local/share/unipicker/symbols)
```
<!-- END-EVAL -->

## Configuration

You can configure both the selector command and the copy command. There are two
main configuration files which are sourced by unipicker:

- `/etc/unipickerrc`
- `${HOME}/.unipickerrc`

The default settings can be seen in the `unipickerrc` file. The default copy
command will be determined based on the OS, but it can be overridden.

The command line arguments can be used to override the variables set.

### Examples

Using `rofi` instead of `fzf`:

```bash
unipicker --command "rofi -dmenu"
```

Using a different clipboard command

```bash
unipicker --copy-command pbcopy
```

## License

[MIT](LICENSE)
