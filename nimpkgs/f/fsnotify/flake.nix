{
  description = ''A file system monitor in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fsnotify-master".dir   = "master";
  inputs."fsnotify-master".owner = "nim-nix-pkgs";
  inputs."fsnotify-master".ref   = "master";
  inputs."fsnotify-master".repo  = "fsnotify";
  inputs."fsnotify-master".type  = "github";
  inputs."fsnotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsnotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fsnotify-v0_1_2".dir   = "v0_1_2";
  inputs."fsnotify-v0_1_2".owner = "nim-nix-pkgs";
  inputs."fsnotify-v0_1_2".ref   = "master";
  inputs."fsnotify-v0_1_2".repo  = "fsnotify";
  inputs."fsnotify-v0_1_2".type  = "github";
  inputs."fsnotify-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsnotify-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fsnotify-v0_1_4".dir   = "v0_1_4";
  inputs."fsnotify-v0_1_4".owner = "nim-nix-pkgs";
  inputs."fsnotify-v0_1_4".ref   = "master";
  inputs."fsnotify-v0_1_4".repo  = "fsnotify";
  inputs."fsnotify-v0_1_4".type  = "github";
  inputs."fsnotify-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsnotify-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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