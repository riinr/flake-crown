{
  description = ''A fast, multithreaded miner for DuinoCoin'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ducominer-1_0_0.flake = false;
  inputs.src-ducominer-1_0_0.owner = "its5Q";
  inputs.src-ducominer-1_0_0.ref   = "refs/tags/1.0.0";
  inputs.src-ducominer-1_0_0.repo  = "ducominer";
  inputs.src-ducominer-1_0_0.type  = "github";
  
  inputs."hashlib".dir   = "nimpkgs/h/hashlib";
  inputs."hashlib".owner = "riinr";
  inputs."hashlib".ref   = "flake-pinning";
  inputs."hashlib".repo  = "flake-nimble";
  inputs."hashlib".type  = "github";
  inputs."hashlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ducominer-1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ducominer-1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}