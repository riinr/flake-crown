{
  description = ''Cross-platform sound mixer library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sound-master".dir   = "master";
  inputs."sound-master".owner = "nim-nix-pkgs";
  inputs."sound-master".ref   = "master";
  inputs."sound-master".repo  = "sound";
  inputs."sound-master".type  = "github";
  inputs."sound-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sound-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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