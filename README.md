# My rad emacs setup

Emacs all the things!

**HEAVILY** inspired by emacs setup from [Clojure for the Brave and True](http://www.braveclojure.com/basic-emacs/)

## Setup
When emacs starts, you may get errors. This usually happens when you need to update the package archive. Hit emacs with some `M-x list-packages`

## Fonts

This super gnar setup requires some fonts be installed on your system:

* [all the icons](https://github.com/domtronn/all-the-icons.el)
* [fira code](https://github.com/tonsky/FiraCode)

## External Dependencies

This rad emacs setup relies on some npm deps for JavaScript development and Markdown previews. I am at peace with this,
and the functionality provided is worth it.

The latest version of node compatible with the following packages should be installed. NPM dependencies:

* [vmd](https://github.com/yoshuawuyts/vmd)
* [indium](https://www.npmjs.com/package/indium)
* [tern](https://www.npmjs.com/package/tern)

These should be installed globally - i.e `npm install -g {package}`
