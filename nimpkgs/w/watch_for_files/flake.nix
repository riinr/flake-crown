{
  description = ''cross-platform file watcher with database'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."watch_for_files-main".dir   = "main";
  inputs."watch_for_files-main".owner = "nim-nix-pkgs";
  inputs."watch_for_files-main".ref   = "master";
  inputs."watch_for_files-main".repo  = "watch_for_files";
  inputs."watch_for_files-main".type  = "github";
  inputs."watch_for_files-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."watch_for_files-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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