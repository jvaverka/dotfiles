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
of you choosing, run the following command to switch Alacritty's config.

```shell
# force reinstallation of fonts
sudo fc-cache -fv
# find font family name
fc-list | grep -i <your-font-name>
```

Once you have the font family name, you can change the `alacritty.yml`.
