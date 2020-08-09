
sandbox: .cabal-sandbox

.cabal-sandbox:
	cabal sandbox init
	cabal update
	cabal install --only-dependencies
