# Dot Files

## Purpose

Configurations for:

- Neovim
- Julia
- Bash
- Git
- Alacritty

## Privacy

It may be useful to stop tracking files in working tree for privacy reasons.

Use the following command to stop tracking changes:

```shell
git update-index --assume-unchanged <filename>
```
Use the following command to resume tracking changes:

```shell
git update-index --no-assume-unchanged <filename>
```

## Style

### Fonts

After downloading the [Nerd Font](https://github.com/ryanoasis/nerd-fonts)
of you choosing,
to `~/.local/share/fonts` run the following commands
to install and retrieve the font family name.

```shell
# force reinstallation of fonts
sudo fc-cache -fv
# find font family name
fc-list | grep -i <your-font-name>
```

Once you have the font family name, you can change your terminal configuration,
as seen in my `alacritty/alacritty.yml`.

```yaml
font:
  normal:
    family: "Hasklug Nerd Font"
    style: Regular
  bold:
    family: "Hasklug Nerd Font"
    style: Bold
  italic:
    family: "Hasklug Nerd Font"
    style: Italic
  bold_italic:
    family: "Hasklug Nerd Font"
    style: Bold Italic
```

### Themes

If using Alacritty,
[alacritty-themes](https://github.com/rajasegar/alacritty-themes)
can be used to switch themes for the terminal.

Using the setup in this repo, changing Neovim themes is easy.
Just change the appropriate file in `init.vim`.
