{
  description = ''Minimalistic libnotify wrapper for desktop notifications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libnotify-master".dir   = "master";
  inputs."libnotify-master".owner = "nim-nix-pkgs";
  inputs."libnotify-master".ref   = "master";
  inputs."libnotify-master".repo  = "libnotify";
  inputs."libnotify-master".type  = "github";
  inputs."libnotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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