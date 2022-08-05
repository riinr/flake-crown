{
  description = ''A fast Hyper Server & Web Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."supranim-main".dir   = "main";
  inputs."supranim-main".owner = "nim-nix-pkgs";
  inputs."supranim-main".ref   = "master";
  inputs."supranim-main".repo  = "supranim";
  inputs."supranim-main".type  = "github";
  inputs."supranim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supranim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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