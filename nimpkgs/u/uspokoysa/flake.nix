{
  description = ''Dead simple Nim app for making timebreaks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uspokoysa-main".dir   = "main";
  inputs."uspokoysa-main".owner = "nim-nix-pkgs";
  inputs."uspokoysa-main".ref   = "master";
  inputs."uspokoysa-main".repo  = "uspokoysa";
  inputs."uspokoysa-main".type  = "github";
  inputs."uspokoysa-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uspokoysa-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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