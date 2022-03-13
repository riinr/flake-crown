{
  description = ''A nimrod wrapper for libalpm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimalpm-master".dir   = "master";
  inputs."nimalpm-master".owner = "nim-nix-pkgs";
  inputs."nimalpm-master".ref   = "master";
  inputs."nimalpm-master".repo  = "nimalpm";
  inputs."nimalpm-master".type  = "github";
  inputs."nimalpm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimalpm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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