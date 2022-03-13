{
  description = ''Sampling profiler that finds hot paths in your code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hottie-master".dir   = "master";
  inputs."hottie-master".owner = "nim-nix-pkgs";
  inputs."hottie-master".ref   = "master";
  inputs."hottie-master".repo  = "hottie";
  inputs."hottie-master".type  = "github";
  inputs."hottie-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottie-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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