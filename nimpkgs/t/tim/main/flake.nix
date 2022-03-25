{
  description = ''High-performance, compiled template engine inspired by Emmet syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tim-main.flake = false;
  inputs.src-tim-main.ref   = "refs/heads/main";
  inputs.src-tim-main.owner = "openpeep";
  inputs.src-tim-main.repo  = "tim";
  inputs.src-tim-main.type  = "github";
  
  inputs."watchout".owner = "nim-nix-pkgs";
  inputs."watchout".ref   = "master";
  inputs."watchout".repo  = "watchout";
  inputs."watchout".dir   = "main";
  inputs."watchout".type  = "github";
  inputs."watchout".inputs.nixpkgs.follows = "nixpkgs";
  inputs."watchout".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson".owner = "nim-nix-pkgs";
  inputs."bson".ref   = "master";
  inputs."bson".repo  = "bson";
  inputs."bson".dir   = "v1_1_2";
  inputs."bson".type  = "github";
  inputs."bson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tim-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-tim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}