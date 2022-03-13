{
  description = ''Redis connection pool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redpool-master".dir   = "master";
  inputs."redpool-master".owner = "nim-nix-pkgs";
  inputs."redpool-master".ref   = "master";
  inputs."redpool-master".repo  = "redpool";
  inputs."redpool-master".type  = "github";
  inputs."redpool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redpool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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