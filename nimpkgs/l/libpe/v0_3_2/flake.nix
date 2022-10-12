{
  description = ''Nim rewrite for libpe library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libpe-v0_3_2.flake = false;
  inputs.src-libpe-v0_3_2.ref   = "refs/tags/v0.3.2";
  inputs.src-libpe-v0_3_2.owner = "srozb";
  inputs.src-libpe-v0_3_2.repo  = "nim-libpe";
  inputs.src-libpe-v0_3_2.type  = "github";
  
  inputs."hashlib".owner = "nim-nix-pkgs";
  inputs."hashlib".ref   = "master";
  inputs."hashlib".repo  = "hashlib";
  inputs."hashlib".dir   = "master";
  inputs."hashlib".type  = "github";
  inputs."hashlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libfuzzy".owner = "nim-nix-pkgs";
  inputs."libfuzzy".ref   = "master";
  inputs."libfuzzy".repo  = "libfuzzy";
  inputs."libfuzzy".dir   = "v0_1_0";
  inputs."libfuzzy".type  = "github";
  inputs."libfuzzy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libpe-v0_3_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libpe-v0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}