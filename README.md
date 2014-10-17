# brew-desc.rb - Searchable descriptions for Homebrew formulas

## What is it?

It's an [external command][ec] for [Homebrew][h]. It provides short
descriptions for Homebrew packages. You can also search for packages by
description. So if you know you want to install a mail program, but you're
not sure which one, brew-desc is for you.

[ec]: https://github.com/mxcl/homebrew/wiki/External-Commands
[h]: https://github.com/mxcl/homebrew

## Usage

Although the script's name is `brew-desc.rb`, [Homebrew external
commands][ec] work in such a way that you invoke it as `brew desc`. (It
functions exactly like a sub-command built into Homebrew.)

If you already know the name of a package, and you want to see a bit about
it, that's easy:

    $ brew desc mutt
    mutt: Mongrel of Mail User Agents (part Elm, Pine, Mush, mh, etc)

If you know the kind of thing you're interested in, but not the name of
specific items, that's easy too:

    $ brew desc -s key-value
    redis: A persistent key-value database with built-in net interface
    kumofs: A scalable and highly available distributed key-value store
    cassandra: Highly scalable, eventually consistent, distributed key-value store

Both `-s` and `--search` are acceptable. Searches are always case
insensitive, and the argument you pass to `-s` or `--search` is interpreted
as a Ruby regular expression. So you can even do silly searches like this:

    $ brew desc -s 'm\b'
    abnfgen: Quickly generate random documents that match an ABFN grammar
    aescrypt: Program for encryption/decryption
    ...<way too much output>

## Installation

You can install `brew desc` in two ways.

1. Tap this repository and install via `brew` itself.
1. Install manually.

For the first method, do the following:

    brew tap telemachus/homebrew-desc && brew install brew-desc

For the second method clone or download this repository. Then simply put
the file `brew-desc.rb` anywhere in your `$PATH`. For example:

    mv brew-desc.rb ~/bin

Leave the name as is if you follow this method. Homebrew knows how to find
it.

Once you've installed via either method, you can use the command as
described above.

## Contributors

I started this project with the descriptions from the
[MacPorts](http://www.macports.org/) ports tree. I also used the
[Debian](http://www.debian.org/) package descriptions. In both cases,
I edited many items for consistency and length.

The following people have also contributed to the project:

+ [Ismail Badawi](https://github.com/isbadawi)
+ [coruus](https://github.com/coruus)
+ [Sietse de Kaper](https://github.com/targeter)
+ [Misty De Meo](https://github.com/mistydemeo)
+ [Magnus Holm](https://github.com/judofyr)
+ [Marek Hrusovsky](https://github.com/xhruso00)
+ [Gregory Igelmund](https://github.com/grekko)
+ [Jeroen](https://github.com/osscca)
+ [Steve Mayer](https://github.com/mayersj1)
+ [Max Nordlund](https://github.com/maxnordlund)
+ [Peter N. Steinmetz](https://github.com/PeterNSteinmetz)
+ [Christian Schwang](https://github.com/CSchwang)
+ [Soulshaker](https://github.com/soulshaker)
+ [Peter Souter](https://github.com/petems)
+ [Dominyk Tiller](https://github.com/DomT4)
+ [John Speno](https://github.com/JohnSpeno)
+ [Mike Warren](https://github.com/workmade)
+ [Nikolaus Wittenstein](https://github.com/adzenith)
+ [Humza Yaqoob](https://github.com/secondplanet)
+ [Zearin](https://github.com/Zearin)

## Contributing

All formulas now have descriptions. However, many could probably be
improved to be clearer or more precise. There are also probably typos and
[flat-out mistakes][oops]. If you want to help, please fork, edit one or
more descriptions and send a pull request.

[oops]: https://github.com/telemachus/homebrew-desc/issues/47

The most important style rule: Please keep descriptions &lt; 80 characters.
That will make the output neater in standard terminal windows.

A less important guideline: Please trim out boilerplate. For example,
nearly all commandline tools claim to be small, simple and fast. I learned
this by editing thousands of descriptions for this project. Let's just
agree that Homebrew installs small, simple and fast as the norm. But feel
free to mention if the package you're describing is large, complicated or
slow.

Thanks.
