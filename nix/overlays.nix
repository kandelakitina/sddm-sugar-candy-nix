{ }:
let props = builtins.fromJSON (builtins.readFile ../props.json);
in {
  sddm-sugar-candy-nix = final: prev: {
    sddm-sugar-candy-nix =
      final.kdePackages.callPackage ./default.nix { version = props.version; };
  };
}
