

vim:ft=txt:et:sw=2:

This is a cram-formatted test suite.

  $ TRIM=${TESTDIR}/dist/build/trim-hs/trim-hs

  $ echo hello | $TRIM 10
  hello

  $ echo hello there | $TRIM 10
  hello ther

  $ echo -n hi | $TRIM 5
  hi (no-eol)

  $ $TRIM 20 <<EOF
  > 1234567890123456789012345
  > This is some
  > text that should be
  > trimmed to 20 columns
  > wide.
  > EOF
  12345678901234567890
  This is some
  text that should be
  trimmed to 20 column
  wide.


