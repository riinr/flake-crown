{
  description = ''Nim wrapper for wyhash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wyhash-main".dir   = "main";
  inputs."wyhash-main".owner = "nim-nix-pkgs";
  inputs."wyhash-main".ref   = "master";
  inputs."wyhash-main".repo  = "wyhash";
  inputs."wyhash-main".type  = "github";
  inputs."wyhash-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wyhash-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wyhash-0_1_0".dir   = "0_1_0";
  inputs."wyhash-0_1_0".owner = "nim-nix-pkgs";
  inputs."wyhash-0_1_0".ref   = "master";
  inputs."wyhash-0_1_0".repo  = "wyhash";
  inputs."wyhash-0_1_0".type  = "github";
  inputs."wyhash-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wyhash-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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