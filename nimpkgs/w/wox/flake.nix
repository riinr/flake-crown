{
  description = ''Helper library for writing Wox plugins in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wox-master".dir   = "master";
  inputs."wox-master".owner = "nim-nix-pkgs";
  inputs."wox-master".ref   = "master";
  inputs."wox-master".repo  = "wox";
  inputs."wox-master".type  = "github";
  inputs."wox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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