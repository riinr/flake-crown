{
  description = ''Raylib Nim wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-naylib-v1_1_3.flake = false;
  inputs.src-naylib-v1_1_3.ref   = "refs/tags/v1.1.3";
  inputs.src-naylib-v1_1_3.owner = "planetis-m";
  inputs.src-naylib-v1_1_3.repo  = "naylib";
  inputs.src-naylib-v1_1_3.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-naylib-v1_1_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-naylib-v1_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}