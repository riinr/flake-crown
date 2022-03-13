{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notificatcher-master".dir   = "master";
  inputs."notificatcher-master".owner = "nim-nix-pkgs";
  inputs."notificatcher-master".ref   = "master";
  inputs."notificatcher-master".repo  = "notificatcher";
  inputs."notificatcher-master".type  = "github";
  inputs."notificatcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notificatcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notificatcher-v0_2_0".dir   = "v0_2_0";
  inputs."notificatcher-v0_2_0".owner = "nim-nix-pkgs";
  inputs."notificatcher-v0_2_0".ref   = "master";
  inputs."notificatcher-v0_2_0".repo  = "notificatcher";
  inputs."notificatcher-v0_2_0".type  = "github";
  inputs."notificatcher-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notificatcher-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notificatcher-v0_3_0".dir   = "v0_3_0";
  inputs."notificatcher-v0_3_0".owner = "nim-nix-pkgs";
  inputs."notificatcher-v0_3_0".ref   = "master";
  inputs."notificatcher-v0_3_0".repo  = "notificatcher";
  inputs."notificatcher-v0_3_0".type  = "github";
  inputs."notificatcher-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notificatcher-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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