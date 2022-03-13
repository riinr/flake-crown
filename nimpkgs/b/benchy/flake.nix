{
  description = ''Simple benchmarking to time your code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."benchy-master".dir   = "master";
  inputs."benchy-master".owner = "nim-nix-pkgs";
  inputs."benchy-master".ref   = "master";
  inputs."benchy-master".repo  = "benchy";
  inputs."benchy-master".type  = "github";
  inputs."benchy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."benchy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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