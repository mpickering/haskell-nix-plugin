let
  nixpkgs = import <nixpkgs> {};
  hl = nixpkgs.haskell.lib;
  hp = nixpkgs.haskellPackages;
in
  hp.ghcWithPlugins(plugs: ps: [hl.addPlugin plugs.dump-core ps.either])

