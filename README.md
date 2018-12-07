Currently installs flutter 1.0.0

# Installation:

```shell
$ brew tap youssefhabri/formulas
$ brew install flutter
```

or

```shell
$ brew install youssefhabri/formulas/flutter
```

# Installing other versions:

If you want to install a different version {new version},
just go to https://github.com/flutter/flutter and find the tag for the version you'd like to install and edit these lines in the formula:

```js
/* replace (version "1.0.0") with */
version "{new version}"

// ...and...

/* replace (system "git", "checkout", "tags/v1.0.0") with */
system "git", "checkout", "tags/{new version tag}"
```

Original project by: [eclewlow](https://github.com/eclewlow)
