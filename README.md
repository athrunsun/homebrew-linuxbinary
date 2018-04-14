# Linuxbrew Binary Formulaes
**Please submit PR in [monorepo](https://github.com/athrunsun/homebrew_monorepo).**

These formulae provide binary installs of software that, for whatever reason, aren't available or outdated in the package manager of your linux distro.

## NOTE

* Because of a linuxbrew limitation, this repo is named `homebrew-linuxbinary`, not `linuxbrew-binary`.

> On GitHub, your repository must be named homebrew-something in order to use the one-argument form of brew tap. The prefix 'homebrew-' is not optional.

* Don't mess this up with homebrew's official [homebrew-binary](https://github.com/Homebrew/homebrew-binary).
* This tap is **ONLY** for linux.

## How do I install these formulae?
`brew install athrunsun/linuxbinary/<formula>`

Or `brew tap athrunsun/linuxbinary` and then `brew install <formula>`.

Or install via URL (which will not receive updates):

```
brew install https://raw.githubusercontent.com/athrunsun/homebrew-linuxbinary/master/Formula/<formula>.rb
```

## Tips
For jetbrans softwares (intellij-idea, pycharm, datagrip, etc.), if it's not a major upgrade, you don't need to download the newer version (which is much larger than downloading a patch) with `brew` from this tap, instead, just check update within the software then download and apply a patch.

And to make it even more convenient, install [jetbrains-toolbox](https://www.jetbrains.com/toolbox/) from this tap with `brew install athrunsun/linuxbinary/jetbrains-toolbox` to manage all of your jetbrains softwares. jetbrains-toolbox is also able to update itself. :thumbsup:

### Known issue
Jetbrains Toolbox is able to update itself, but once you do that, new executable will be installed as `~/.local/share/JetBrains/Toolbox/bin/jetbrains-toolbox`, with a desktop entry `/home/athrun/.local/share/applications/jetbrains-toolbox.desktop`.

So once you did the update, use the `*.desktop` entry (which is usually accessed in application menu of your desktop) to launch toolbox, instead of executing `jbtool` (which is still the old version).

## Documentation
`brew help`, `man brew` or check [Linuxbrew's documentation](https://github.com/Linuxbrew/brew/tree/master/docs#readme).
