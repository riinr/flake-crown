{
  description = ''Obsolete - please use isense instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-isense-master".dir   = "master";
  inputs."io-isense-master".owner = "nim-nix-pkgs";
  inputs."io-isense-master".ref   = "master";
  inputs."io-isense-master".repo  = "io-isense";
  inputs."io-isense-master".type  = "github";
  inputs."io-isense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-isense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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