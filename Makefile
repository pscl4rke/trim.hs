
sandbox: .cabal-sandbox

.cabal-sandbox:
	cabal sandbox init
	cabal update
	cabal install --only-dependencies

test:
	cram3 -v tests.t
