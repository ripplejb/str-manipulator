```markdown
# Str-Man: Neovim String Manipulation Plugin

Str-Man is a Neovim plugin designed to provide a collection of string manipulation commands for your workflow. The plugin is modular and can be easily extended to support new string operations.

## Features

- Run string manipulation commands directly on the current buffer
- Easily extensible for new string operations
- Written in pure Lua for Neovim

## Example Command

### `:JSF`

Formats the current buffer as pretty-printed JSON using [`jq`](https://stedolan.github.io/jq/).

**Usage:**
```

:JSF

````
This will replace the contents of the current buffer with the formatted JSON output.

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "str-manipulator/str-man",
  dir = vim.fn.expand("$HOME/str-manipulator"),
  dev = true,
  opts = {},
}
````

## Requirements

- [jq](https://stedolan.github.io/jq/) installed and available in your `$PATH`
- Neovim 0.10 or newer

## Extending

You can add more commands by editing `str-manipulator/lua/str-man/init.lua` and following the pattern used for `StrMan`.

---

Feel free to contribute new string manipulation commands!
