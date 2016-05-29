## Installation
`bash -c "$(curl -fSsL https://raw.githubusercontent.com/xuehung/vim/master/install.sh)"`

## Usage of Installed Plugins
- [The Nerd Tree](https://github.com/scrooloose/nerdtree): a tree explorer plugin for the filesystem
    
    Press `nt` to toggle the navigator.
- [Easymotion](https://github.com/easymotion/vim-easymotion): helps move your cursor in fancy way

    Press `s` to start searching and moving.
- [Tagbar](https://github.com/majutsushi/tagbar/wiki): provides an easy way to browse the tags such as names of functions and variables

    Note this plugin depends on `ctags` and you must have it installed to use tagbar. Press `tb` to toggle the tabbar window.
    
- [SnipMate](https://github.com/garbas/vim-snipmate): provides textual snippets

    * Example 1: Open a Java file named `Hello.java`. Insert "init" and press `tab`.
    * Example 2: Open a Python file named `test.py`. Insert "cla" and press `tab`.
    * Find more snippets under `snippets` folder and feel free to add your own.

## Other Usage
- Toggle comments
    * Press `,` twice to toggle one line
    * Press `<n>,` to toggle following n lines.

## Configuration
- Change key mapping: modify `after/plugin/keymapping.vim`
