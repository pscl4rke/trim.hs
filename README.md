
trim-hs
=======

Unix pipeline tool for trimming long lines.

This is an implementation in Haskell,
and is licensed under the GNU GPL version 3.

Usage
-----

For example:

    $ cat widefile | trim-hs | less
    $ cat widefile | trim 130 | less

The optional first argument specifies a width.

Development
-----------

Prepare a cabal sandbox with:

    $ make sandbox

Then build:

    $ cabal build

You will find the binary hiding under `dist/`.

You can run the test suite by installing Cram and running:

    $ make test
