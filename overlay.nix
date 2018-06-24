# An overlay which adds the new attributes to the right places
self: super: {
  haskell =
    super.haskell // ({
      plugins = import ./plugins.nix;
      lib = super.haskell.lib //
              { addPlugin = super.callPackage ./add-plugin.nix {}; };
      packageOverrides =
        sel: sup:
          super.haskell.packageOverrides //
          { withPlugin = import ./with-plugin.nix {hp = sel; haskell = self.haskell; }; }; });
}
