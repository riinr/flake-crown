{
  description = ''Basic tweening library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tweens-master".dir   = "master";
  inputs."tweens-master".owner = "nim-nix-pkgs";
  inputs."tweens-master".ref   = "master";
  inputs."tweens-master".repo  = "tweens";
  inputs."tweens-master".type  = "github";
  inputs."tweens-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tweens-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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