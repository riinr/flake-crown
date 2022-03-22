{
  description = ''Redis client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redisclient-master.flake = false;
  inputs.src-redisclient-master.ref   = "refs/heads/master";
  inputs.src-redisclient-master.owner = "xmonader";
  inputs.src-redisclient-master.repo  = "nim-redisclient";
  inputs.src-redisclient-master.type  = "github";
  
  inputs."redisparser".owner = "nim-nix-pkgs";
  inputs."redisparser".ref   = "master";
  inputs."redisparser".repo  = "redisparser";
  inputs."redisparser".dir   = "";
  inputs."redisparser".type  = "github";
  inputs."redisparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redisparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redisclient-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redisclient-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}