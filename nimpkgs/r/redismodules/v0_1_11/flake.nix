{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redismodules-v0_1_11.flake = false;
  inputs.src-redismodules-v0_1_11.ref   = "refs/tags/v0.1.11";
  inputs.src-redismodules-v0_1_11.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_11.repo  = "redismodules";
  inputs.src-redismodules-v0_1_11.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redismodules-v0_1_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redismodules-v0_1_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}