MK-VIMRC
========
    --------------------------------------------------------------
    |                                                            |
    |                                                            |
    --------------------------------------------------------------
    |   MM          MM   KK    KK   V           I M V        M   |
    |   MMM        MMM   KK   KK     V          I MV        MM   |
    |   MM M      M MM   KK  KK       V         I V M      M M   |
    |   MM  M    M  MM   KK KK         V        IVM  M    M  M   |
    |   MM   MMMM   MM   KKK            V       V M   MMMM   M   |
    |   MM    MM    MM   KK KK           V     VI M    MM    M   |
    |   MM          MM   KK  KK           V   V I M          M   |
    |   MM          MM   KK   KK           V V  I M          M   |
    |   MM          MM.  KK    KK.          V   I M          M   |
    --------------------------------------------------------------
    |                                                            |
    --------------------------------------------------------------



This is my beloved .vimrc. I am not an experienced programmer, 
but I fell in love with vim. 

In order to use it, you have to have [Vundle](https://github.com/gmarik/Vundle.vim) installed. 

This vimrc was *highly influenced* by [spf13-vim](https://github.com/spf13/spf13-vim):  
(https://github.com/spf13/spf13-vim).


I wanted to understand the vimrc I am using, so I used spf13-vimrc as a template.
Mine is not that sophisticated, but simpler and maybe easier to read. I also have 
some different keymappings, which I find pretty awesome =)


# Installation:

- Install [Vundle](https://github.com/gmarik/Vundle.vim)
- Download with `git clone https://github.com/AAAnsie/MK-VIMRC.git`
- take the .vimrc file and use it instead of yours (don't forget to backup!)

# Some plugins I am loading:

## [Easymotion](https://github.com/Lokaltog/vim-easymotion)
With `,,w` one can jump around very quickly. Another important binding is 
`,fo` which lets one jump to `o`'s pretty fast (or another letter ...). 

## [Airline](https://github.com/bling/vim-airline)
This gives nice status bars. 

## [Tabular](https://github.com/godlygeek/tabular)
This one is great for tables. With e.g. `,a&` you can align your test with 
respect to `&`. This also works for other characters (see tabular help and my plugin settings).

## [Tagbar](http://majutsushi.github.io/tagbar/)
With `,t` show a windows with tags for your file, awesome! 

## [Nerdtree](https://github.com/scrooloose/nerdtree)
Great UI for opening files. Binding is `<C-e>`. 

## [Nerdcommenter](https://github.com/scrooloose/nerdcommenter)
`,cc` for making a line a comment, `,cu` for uncommenting it. 

## [Latex-Suite](http://vim-latex.sourceforge.net/index.php?subject=download&title=Download)
Since I am writing a lot in LaTeX, this is a very important plugin for me.  
`,ll` compiles the document and `,lv` openes the viewer. 

I recomend *Skim* as viewer. There you can click in the pdf on the part you want 
in order to jump to the corresponding section in the .tex file. 




I would love to get some feedback =)


