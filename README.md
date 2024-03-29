# dotfiles

## Whats in here?
Most of my dotfiles, at least those in regular use. Since they change pretty regular (configuration is, at
least for me, a loooong process) I really cannot guarantee that any of the files in here are up to date.

I do try to keep all configs in here at least remotely functional, but I won't guarantee anything. It works
for me, with my exact setup, it may not work for you with your (at least slightly) different setup.

## Why is this interesting?
Short answer: **it's not**.
Mostly this is a collection for my personal use, if I accidently delete stuff, mess up my configs or
want to reinstall something (for example on another machine).
In case you also want to have wonky configs that may just break unexpectedly (and you like vim-style key
bindings), feel free to copy, modify, republish and/or use my configs like you want.

## Help, something doesn't work
Please don't expect any help from me, but feel free to open an issue, so that I know how to solve a problem
if I run into it myself :)

## Are there any external dependencies?
Yep. There may be some undocumented ones too (in the future, not at the time of writing), but currently,
there are the following:

- `oh-my-zsh`: A plugin manager for the Z-Shell (BIG recommendation, makes things way easier, use this! Also,
  read their README and wiki pages on GitHub, they explain almost everything.)
  [GitHub-Repo](https://github.com/ohmyzsh/ohmyzsh/) 
- `powerlevel10k`: A prompt theme for zsh, looks a bit like the powerline theme for windows. Has a lot of
  nice and powerful features. [GitHub-Repo](https://github.com/romkatv/powerlevel10k)
- `Meslo LGS NF`: The font that I use in my terminal. It is patched with all the NerdFonts stuff to support
  all the glyphs used by the `powerlevel10k` theme. The `*.ttf` files are linked in the `powerlevel10k`
  README. (Read that too, it's also really well written.)
