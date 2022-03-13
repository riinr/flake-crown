{
  description = ''A mod manager for TF2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tf2plug-master".dir   = "master";
  inputs."tf2plug-master".owner = "nim-nix-pkgs";
  inputs."tf2plug-master".ref   = "master";
  inputs."tf2plug-master".repo  = "tf2plug";
  inputs."tf2plug-master".type  = "github";
  inputs."tf2plug-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tf2plug-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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