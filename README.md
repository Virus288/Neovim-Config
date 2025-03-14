# Neovim config

In order for all LSP to fully work, read error messages that stuff will throw ( I completly forgot to create this file... )


Required packages:

Github actions lsp:
```shell
npm install -g gh-actions-language-server
```

In order to install qmlls, install qt6-declarative and add this to path:
```
export PATH="/usr/lib/qt6/bin:$PATH"
```

Issues:
- Currently, splitted buffers are not transparent afte running `Transparent()` lua function

