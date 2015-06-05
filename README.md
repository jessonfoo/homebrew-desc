# brew-desc.rb - Searchable descriptions for Homebrew formulas

## NOTICE

Big news: `brew desc` [has been merged into `brew` itself][merge]. This is
great news! A very big thanks to all the [contributors][contribs] for providing
descriptions and code over the years. In particular, thank you to [Nikolaus
Wittenstein][adzenith]. He created the script that spliced descriptions from
`brew desc` and placed them into their respective formulas, and he also made
the pull request that eventually brought `brew desc` into `brew`.

The big question now is what's next for `brew desc`. To be honest, I'm not
sure. I will likely sunset it, but not immediately. For the moment, I will
continue to maintain it: adding new descriptions and removing deleted programs.
If anyone has suggestions—or would like to do anything with this code—please
let me know.

Again, thanks for help over the years.

[merge]: https://github.com/Homebrew/homebrew/pull/39911#issuecomment-109298515
[contribs]: https://github.com/telemachus/homebrew-desc#contributors
[adzenith]: https://github.com/adzenith

## What is it?

It's an [external command][ec] for [Homebrew][h]. It provides short
descriptions for Homebrew packages. You can also search for packages by
description. So if you know you want to install a mail program, but you're not
sure which one, brew-desc is for you.

[ec]: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/External-Commands.md
[h]: https://github.com/Homebrew/homebrew

## Usage

Although the script's name is `brew-desc.rb`, [Homebrew external commands][ec]
work in such a way that you invoke it as `brew desc`. (It functions exactly
like any other Homebrew sub-command.)

### Get a Package Description

If you know the name of a package and want to a short description about it,
that's easy:

    $ brew desc mutt
    mutt: Mongrel of Mail User Agents (part Elm, Pine, Mush, mh, etc)

### Search Package Descriptions

If you don't know the package name, but are looking for packages with names or
descriptions that contain a certain phrase, you can do that, too:

    $ brew desc -s key-value
    redis: A persistent key-value database with built-in net interface
    kumofs: A scalable and highly available distributed key-value store
    cassandra: Highly scalable, eventually consistent, distributed key-value store

Both `-s` and `--search` are acceptable. Searches are always case insensitive,
and searches with `-s` or `--search` look at the names and the descriptions of
packages.

The argument passed to `-s` or `--search` is interpreted as a Ruby regular
expression. So you can even do silly searches like this:

    $ brew desc -s 'm\b'
    abnfgen: Quickly generate random documents that match an ABFN grammar
    aescrypt: Program for encryption/decryption
    ...<way too much output>

If you want to search only names or only descriptions, `brew desc` has you
covered. Use the `-n` or `--names` flag to search only names. Use `-d` or
`--desc` to search only descriptions.

## Installation

You can install `brew desc` in two ways.

1. Tap this repository.
1. Install manually.

### Method 1: Install with `brew tap`

For the first method, do the following:

    brew tap telemachus/homebrew-desc

That's it! In addition to being easy, this method has an advantage over the
manual method described below: once this repo has been tapped, you will
automatically receive updates to `brew desc` whenever you run `brew update`.
I highly recommend that you follow this method.

### Method 2: Manual Installation

However, if you don't want to tap the repo, there is another option. Clone or
download this repository, and then put the file `brew-desc.rb` anywhere in your
`$PATH`. For example:

    mv brew-desc.rb ~/bin

Leave the name as is if you follow this method. Homebrew knows how to find it.

The major downside to this installation method is that you get no automatic
upgrades; you'll have to handle them manually.

Once you've installed via either method, you can use the command as
described above.

## Contributors

I started this project with the descriptions from the
[MacPorts](http://www.macports.org) ports tree. I also used the
[Debian](http://www.debian.org) package descriptions. In both cases,
I edited many items for consistency and length.

The following people have also contributed to the project:

+ [Ismail Badawi](https://github.com/isbadawi)
+ [Xu Cheng](https://github.com/xu-cheng)
+ [coruus](https://github.com/coruus)
+ [Sietse de Kaper](https://github.com/targeter)
+ [Misty De Meo](https://github.com/mistydemeo)
+ [Alexandre Espinosa Menor](https://github.com/alexandregz)
+ [Baptiste Fontaine](https://github.com/bfontaine)
+ [Magnus Holm](https://github.com/judofyr)
+ [Marek Hrusovsky](https://github.com/xhruso00)
+ [Gregory Igelmund](https://github.com/grekko)
+ [Jeroen](https://github.com/osscca)
+ [Dan Martinez](https://github.com/hivehand)
+ [Steve Mayer](https://github.com/mayersj1)
+ [Max Nordlund](https://github.com/maxnordlund)
+ [David Powell](https://github.com/drpowell)
+ [Hamid Rohani](https://github.com/hamid914)
+ [Christian Schwang](https://github.com/CSchwang)
+ [Soulshaker](https://github.com/soulshaker)
+ [Peter Souter](https://github.com/petems)
+ [John Speno](https://github.com/JohnSpeno)
+ [Peter N. Steinmetz](https://github.com/PeterNSteinmetz)
+ [Dominyk Tiller](https://github.com/DomT4)
+ [Mike Warren](https://github.com/workmade)
+ [Nikolaus Wittenstein](https://github.com/adzenith)
+ [Yann-R](https://github.com/Yann-R)
+ [Humza Yaqoob](https://github.com/secondplanet)
+ [Zearin](https://github.com/Zearin)

## Contributing

All formulas now have descriptions. However, many could be improved for better
clarity or precision. There are probably also typos and
[flat-out mistakes][oops].

[oops]: https://github.com/telemachus/homebrew-desc/issues/47

If you want to help, please fork, edit one or more descriptions, and send
a Pull Request. (However, [Homebrew][h] constantly adds new packages. So, at
any given time, I might be behind on a handful of new items. Please feel free
to write those up as well.)

I only three rules for description contents:

+ Be brief.
+ Remove all advertising or boilerplate.
+ It's 'command-line'.

Here's what I mean...

**Be brief.** Ideally all descriptions should fit into one average-size
terminal window (including the name of the piece of software).

That means that `"name: description goes here"` should never be longer than
around 80 characters. Trim relentlessly!

**Remove all advertising or boilerplate.**  As an example, nearly all command
line tools claim to be small, simple, and fast. (I learned this by editing
thousands of descriptions for this project.) Please remove such claims from
whatever you submit. That leaves more room for substantive description.

Often, if you go to the project's one-line synopsis, you will find this kind of
boilerplate or advertising. If so, please read further about the project until
you find a more specific description it.

**It's 'command-line'.** This is just a question of consistency. All
descriptions should use this form rather than 'command line' or 'commandline'.
If somebody makes a good argument for a different convention, then we can
switch them all easily enough.

Thanks.
