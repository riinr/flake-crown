{
  description = ''Pure Nim asyncronous driver for Redis DB'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncredis-v0_8.flake = false;
  inputs.src-asyncredis-v0_8.ref   = "refs/tags/v0.8";
  inputs.src-asyncredis-v0_8.owner = "Q-Master";
  inputs.src-asyncredis-v0_8.repo  = "redis.nim";
  inputs.src-asyncredis-v0_8.type  = "github";
  
  inputs."ptr_math".owner = "nim-nix-pkgs";
  inputs."ptr_math".ref   = "master";
  inputs."ptr_math".repo  = "ptr_math";
  inputs."ptr_math".dir   = "v0_3_0";
  inputs."ptr_math".type  = "github";
  inputs."ptr_math".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncredis-v0_8"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-asyncredis-v0_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}