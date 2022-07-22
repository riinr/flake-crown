{
  description = ''Pure Nim asyncronous driver for Redis DB'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncredis-master.flake = false;
  inputs.src-asyncredis-master.ref   = "refs/heads/master";
  inputs.src-asyncredis-master.owner = "Q-Master";
  inputs.src-asyncredis-master.repo  = "redis.nim";
  inputs.src-asyncredis-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncredis-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-asyncredis-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}