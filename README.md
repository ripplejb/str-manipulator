# Str-Man: Neovim String Manipulation Plugin

Str-Man is a Neovim plugin designed to provide a collection of string manipulation commands for your workflow. The plugin is modular and can be easily extended to support new string operations.

## Features

- Run string manipulation commands directly on the current buffer
- Easily extensible for new string operations
- Written in pure Lua for Neovim

## Example Commands

### `:SentenceCase`

Converts the entire buffer to sentence case.

**Usage:**

```vim
:SentenceCase
```

This will replace the contents of the current buffer with the sentence-cased output.

### `:TitleCase`

Converts the entire buffer to title case.

**Usage:**

```vim
:TitleCase
```

This will replace the contents of the current buffer with the title-cased output.

## Extending

You can add more commands by editing `str-manipulator/lua/str-man/init.lua` and following the pattern used for `StrMan`.

---

Feel free to contribute new string manipulation commands!
