{
  description = ''Low level bindings for GTK3 related libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oldgtk3-master".dir   = "master";
  inputs."oldgtk3-master".owner = "nim-nix-pkgs";
  inputs."oldgtk3-master".ref   = "master";
  inputs."oldgtk3-master".repo  = "oldgtk3";
  inputs."oldgtk3-master".type  = "github";
  inputs."oldgtk3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldgtk3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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