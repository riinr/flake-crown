{
  description = ''Windowing library for Nim using OS native APIs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."windy-master".dir   = "master";
  inputs."windy-master".owner = "nim-nix-pkgs";
  inputs."windy-master".ref   = "master";
  inputs."windy-master".repo  = "windy";
  inputs."windy-master".type  = "github";
  inputs."windy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."windy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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