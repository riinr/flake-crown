{
  description = ''A Nim wrapper for the WooCommerce REST API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."woocommerce-api-nim-master".dir   = "master";
  inputs."woocommerce-api-nim-master".owner = "nim-nix-pkgs";
  inputs."woocommerce-api-nim-master".ref   = "master";
  inputs."woocommerce-api-nim-master".repo  = "woocommerce-api-nim";
  inputs."woocommerce-api-nim-master".type  = "github";
  inputs."woocommerce-api-nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."woocommerce-api-nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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