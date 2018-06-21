let
  nixpkgs = import <nixpkgs> {} ;
  addPlugin = nixpkgs.callPackage ./add-plugin.nix {};
  hp = nixpkgs.haskellPackages;
  plugins = import ./plugins.nix hp;
  dump-core-plugin = plugins.dump-core;


in
  (addPlugin dump-core-plugin hp.either).DumpCore

