
```
       _           _
 _   _(_)_ __  ___(_) __ _  __ _ _ __
| | | | | '_ \/ __| |/ _` |/ _` | '_ \
| |_| | | | | \__ \ | (_| | (_| | | | |
 \__, |_|_| |_|___/_|\__, |\__,_|_| |_|
 |___/               |___/

```

# vimrc

my vim config


## install

  ```
  $ sudo bash ./install.sh
  ```

  or

  ```
  cd ~
  git clone git://github.com/hfpp2012/vimconf.git
  ln -s ~/vimconf/.vimrc ~/.vimrc
  ln -s ~/vimconf/.vimrc.map ~/.vimrc.map
  ln -s ~/vimconf/.vimrc.plugins ~/.vimrc.plugins
  ln -s ~/vimconf/.vimrc.bundle ~/.vimrc.bundle
  git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  vim +NeoBundleInstall! +NeoBundleClean +q
  ```

## plugins list

  * zencoding-vim
  * nerdtree
  * snipmate-snippets
  * ack
  * vim-rails
  * vim-surround
  * vim-fugitive
  * vim-endwise
  * vim-css-color
  * supertab
  * matchit
  * vim-easymotion
  * autoclose
  * vim-indent-guides
  * vim-airline
  * vim-nerdtree-tabs
  * vim-easy-align
  * tcomment_vim
  * vim-tomorrow-theme
  * unite.vim
  * vim-yankstack
  * lusty

## syntax higlight

  * jquery
  * go
  * coffee-script
  * haml
  * markdown
  * cucumber
  * less
  * json

## key binding

  * `<leader>b`                     buffers explorer
  * `<leader>v`                     unite file explorer
  * `<leader>e`                     nerdtree find
  * `<ctrl>e`                       nerdtree toggle
  * `<leader>gs`                    display git status
  * `gc<space>`                     comment toggle
  * `<leader>ig`                    indent guides toggle
  * `<leader>,/`                    highlight search
  * `<leader>ew`                    split windows
  * `<leader>ev`                    vsplit windows
  * `<ctrl>n`                       create a new tab
  * `<F2>`                          paste toggle
  * `<leader>mp`                    diplay matchpairs
  * `<leader>h`                     highlight word
  * `<leader>lb`                    Opens buffer explorer
  * `<leader>lg`                    Opens buffer grep
  * `<leader>lf`                    Open filesystem explorer

# license

MIT
