{
  description = ''Once provides a type that will enforce that a callback is invoked only once.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."once-master".dir   = "master";
  inputs."once-master".owner = "nim-nix-pkgs";
  inputs."once-master".ref   = "master";
  inputs."once-master".repo  = "once";
  inputs."once-master".type  = "github";
  inputs."once-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."once-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."once-1_0_0".dir   = "1_0_0";
  inputs."once-1_0_0".owner = "nim-nix-pkgs";
  inputs."once-1_0_0".ref   = "master";
  inputs."once-1_0_0".repo  = "once";
  inputs."once-1_0_0".type  = "github";
  inputs."once-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."once-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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