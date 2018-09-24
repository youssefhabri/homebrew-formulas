Currently installs flutter 0.9.2

# Installation:

```shell
$ brew tap eclewlow/formulas
$ brew install flutter
```

or

```shell
$ brew install eclewlow/formulas/flutter
```

# Installing other versions:

If you want to install a different version {new version},
just go to https://github.com/flutter/flutter and find the tag for the version you'd like to install and edit these lines in the formula:

```js
/* replace (version "0.9.2") with */
version "{new version}"

// ...and...

/* replace (system "git", "checkout", "tags/v0.9.2") with */
system "git", "checkout", "tags/{new version tag}"
```
