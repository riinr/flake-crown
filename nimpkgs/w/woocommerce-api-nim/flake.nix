{
  description = ''A Nim wrapper for the WooCommerce REST API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."woocommerce-master".dir   = "master";
  inputs."woocommerce-master".owner = "nim-nix-pkgs";
  inputs."woocommerce-master".ref   = "master";
  inputs."woocommerce-master".repo  = "woocommerce";
  inputs."woocommerce-master".type  = "github";
  inputs."woocommerce-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."woocommerce-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}