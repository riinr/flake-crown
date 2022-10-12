{
  description = ''Bringer of property graphs to Nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-grim-devel.flake = false;
  inputs.src-grim-devel.ref   = "refs/heads/devel";
  inputs.src-grim-devel.owner = "ebran";
  inputs.src-grim-devel.repo  = "grim";
  inputs.src-grim-devel.type  = "github";
  
  inputs."yaml".owner = "nim-nix-pkgs";
  inputs."yaml".ref   = "master";
  inputs."yaml".repo  = "yaml";
  inputs."yaml".dir   = "v1_0_0";
  inputs."yaml".type  = "github";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional".owner = "nim-nix-pkgs";
  inputs."zero_functional".ref   = "master";
  inputs."zero_functional".repo  = "zero_functional";
  inputs."zero_functional".dir   = "v1_3_0";
  inputs."zero_functional".type  = "github";
  inputs."zero_functional".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-grim-devel"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-grim-devel";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}