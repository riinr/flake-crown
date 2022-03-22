{
  description = ''A multithreaded miner for DuinoCoin written in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ducominer-1_0_1.flake = false;
  inputs.src-ducominer-1_0_1.ref   = "refs/tags/1.0.1";
  inputs.src-ducominer-1_0_1.owner = "its5Q";
  inputs.src-ducominer-1_0_1.repo  = "ducominer";
  inputs.src-ducominer-1_0_1.type  = "github";
  
  inputs."hashlib".owner = "nim-nix-pkgs";
  inputs."hashlib".ref   = "master";
  inputs."hashlib".repo  = "hashlib";
  inputs."hashlib".dir   = "";
  inputs."hashlib".type  = "github";
  inputs."hashlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ducominer-1_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ducominer-1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}