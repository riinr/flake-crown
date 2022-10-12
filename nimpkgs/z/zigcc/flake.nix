{
  description = ''wraps `zig cc` to be able to be called by the nim compiler'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zigcc-master".dir   = "master";
  inputs."zigcc-master".owner = "nim-nix-pkgs";
  inputs."zigcc-master".ref   = "master";
  inputs."zigcc-master".repo  = "zigcc";
  inputs."zigcc-master".type  = "github";
  inputs."zigcc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zigcc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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