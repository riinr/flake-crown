{
  description = ''Human friendly DateTime string representations, seconds to millenniums.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."datetime2human-master".dir   = "master";
  inputs."datetime2human-master".owner = "nim-nix-pkgs";
  inputs."datetime2human-master".ref   = "master";
  inputs."datetime2human-master".repo  = "datetime2human";
  inputs."datetime2human-master".type  = "github";
  inputs."datetime2human-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datetime2human-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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