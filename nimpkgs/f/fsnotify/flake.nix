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