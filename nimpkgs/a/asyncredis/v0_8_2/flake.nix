{
  description = ''Pure Nim asyncronous driver for Redis DB'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncredis-v0_8_2.flake = false;
  inputs.src-asyncredis-v0_8_2.ref   = "refs/tags/v0.8.2";
  inputs.src-asyncredis-v0_8_2.owner = "Q-Master";
  inputs.src-asyncredis-v0_8_2.repo  = "redis.nim";
  inputs.src-asyncredis-v0_8_2.type  = "github";
  
  inputs."networkutils".owner = "nim-nix-pkgs";
  inputs."networkutils".ref   = "master";
  inputs."networkutils".repo  = "networkutils";
  inputs."networkutils".dir   = "v0_6_1";
  inputs."networkutils".type  = "github";
  inputs."networkutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncredis-v0_8_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-asyncredis-v0_8_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}