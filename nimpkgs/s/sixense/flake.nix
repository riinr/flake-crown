{
  description = ''Bindings for the Sixense Core API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sixense-master".dir   = "master";
  inputs."sixense-master".owner = "nim-nix-pkgs";
  inputs."sixense-master".ref   = "master";
  inputs."sixense-master".repo  = "sixense";
  inputs."sixense-master".type  = "github";
  inputs."sixense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sixense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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