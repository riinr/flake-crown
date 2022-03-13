{
  description = ''A wrapper for the The Ethereum EVMC library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."evmc-master".dir   = "master";
  inputs."evmc-master".owner = "nim-nix-pkgs";
  inputs."evmc-master".ref   = "master";
  inputs."evmc-master".repo  = "evmc";
  inputs."evmc-master".type  = "github";
  inputs."evmc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."evmc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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