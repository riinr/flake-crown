{
  description = ''Nim implementation of simhash algoritim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simhash-master".dir   = "master";
  inputs."simhash-master".owner = "nim-nix-pkgs";
  inputs."simhash-master".ref   = "master";
  inputs."simhash-master".repo  = "simhash";
  inputs."simhash-master".type  = "github";
  inputs."simhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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