{
  description = ''Systemd service notification helper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sdnotify-master".dir   = "master";
  inputs."sdnotify-master".owner = "nim-nix-pkgs";
  inputs."sdnotify-master".ref   = "master";
  inputs."sdnotify-master".repo  = "sdnotify";
  inputs."sdnotify-master".type  = "github";
  inputs."sdnotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdnotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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