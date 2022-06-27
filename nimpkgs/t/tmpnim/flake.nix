{
  description = ''Create and remove ramdisks easily'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tmpnim-main".dir   = "main";
  inputs."tmpnim-main".owner = "nim-nix-pkgs";
  inputs."tmpnim-main".ref   = "master";
  inputs."tmpnim-main".repo  = "tmpnim";
  inputs."tmpnim-main".type  = "github";
  inputs."tmpnim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmpnim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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