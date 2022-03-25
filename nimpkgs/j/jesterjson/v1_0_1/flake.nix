{
  description = ''A plugin for Jester that creates a json object and embeds the request object information.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jesterjson-v1_0_1.flake = false;
  inputs.src-jesterjson-v1_0_1.ref   = "refs/tags/v1.0.1";
  inputs.src-jesterjson-v1_0_1.owner = "JohnAD";
  inputs.src-jesterjson-v1_0_1.repo  = "jesterjson";
  inputs.src-jesterjson-v1_0_1.type  = "github";
  
  inputs."jesterwithplugins".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins".ref   = "master";
  inputs."jesterwithplugins".repo  = "jesterwithplugins";
  inputs."jesterwithplugins".dir   = "v0_5_2";
  inputs."jesterwithplugins".type  = "github";
  inputs."jesterwithplugins".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jesterjson-v1_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-jesterjson-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}