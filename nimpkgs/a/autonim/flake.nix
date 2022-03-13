{
  description = ''Wrapper for AutoIt v3.3.14.2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."autonim-main".dir   = "main";
  inputs."autonim-main".owner = "nim-nix-pkgs";
  inputs."autonim-main".ref   = "master";
  inputs."autonim-main".repo  = "autonim";
  inputs."autonim-main".type  = "github";
  inputs."autonim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autonim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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