{
  description = ''Raylib Nim wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-naylib-v1_1_0.flake = false;
  inputs.src-naylib-v1_1_0.ref   = "refs/tags/v1.1.0";
  inputs.src-naylib-v1_1_0.owner = "planetis-m";
  inputs.src-naylib-v1_1_0.repo  = "naylib";
  inputs.src-naylib-v1_1_0.type  = "github";
  
  inputs."eminim".owner = "nim-nix-pkgs";
  inputs."eminim".ref   = "master";
  inputs."eminim".repo  = "eminim";
  inputs."eminim".dir   = "v2_8_2";
  inputs."eminim".type  = "github";
  inputs."eminim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-naylib-v1_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-naylib-v1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}