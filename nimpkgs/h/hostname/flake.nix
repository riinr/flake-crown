{
  description = ''Nim library to get/set a hostname'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hostname-main".dir   = "main";
  inputs."hostname-main".owner = "nim-nix-pkgs";
  inputs."hostname-main".ref   = "master";
  inputs."hostname-main".repo  = "hostname";
  inputs."hostname-main".type  = "github";
  inputs."hostname-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hostname-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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