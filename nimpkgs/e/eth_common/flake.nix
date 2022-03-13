{
  description = ''Definitions of various data structures used in the Ethereum eco-system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eth_common-master".dir   = "master";
  inputs."eth_common-master".owner = "nim-nix-pkgs";
  inputs."eth_common-master".ref   = "master";
  inputs."eth_common-master".repo  = "eth_common";
  inputs."eth_common-master".type  = "github";
  inputs."eth_common-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_common-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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