{
  description = ''Encoding for Robust Immutable Storage'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eris-0_2_0.flake = false;
  inputs.src-eris-0_2_0.ref   = "0.2.0";
  inputs.src-eris-0_2_0.owner = "~ehmry";
  inputs.src-eris-0_2_0.repo  = "eris";
  inputs.src-eris-0_2_0.type  = "sourcehut";
  
  inputs."base32".owner = "nim-nix-pkgs";
  inputs."base32".ref   = "master";
  inputs."base32".repo  = "base32";
  inputs."base32".dir   = "0_1_3";
  inputs."base32".type  = "github";
  inputs."base32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps".owner = "nim-nix-pkgs";
  inputs."taps".ref   = "master";
  inputs."taps".repo  = "taps";
  inputs."taps".dir   = "0_2_2";
  inputs."taps".type  = "github";
  inputs."taps".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lmdb".owner = "nim-nix-pkgs";
  inputs."lmdb".ref   = "master";
  inputs."lmdb".repo  = "lmdb";
  inputs."lmdb".dir   = "0_1_2";
  inputs."lmdb".type  = "github";
  inputs."lmdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eris-0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-eris-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}