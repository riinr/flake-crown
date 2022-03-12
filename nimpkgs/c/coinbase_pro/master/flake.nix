{
  description = ''Coinbase pro client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-coinbase_pro-master.flake = false;
  inputs.src-coinbase_pro-master.owner = "inv2004";
  inputs.src-coinbase_pro-master.ref   = "refs/heads/master";
  inputs.src-coinbase_pro-master.repo  = "coinbase-pro-nim";
  inputs.src-coinbase_pro-master.type  = "github";
  
  inputs."ws".dir   = "nimpkgs/w/ws";
  inputs."ws".owner = "riinr";
  inputs."ws".ref   = "flake-pinning";
  inputs."ws".repo  = "flake-nimble";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."decimal".dir   = "nimpkgs/d/decimal";
  inputs."decimal".owner = "riinr";
  inputs."decimal".ref   = "flake-pinning";
  inputs."decimal".repo  = "flake-nimble";
  inputs."decimal".type  = "github";
  inputs."decimal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decimal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids".dir   = "nimpkgs/u/uuids";
  inputs."uuids".owner = "riinr";
  inputs."uuids".ref   = "flake-pinning";
  inputs."uuids".repo  = "flake-nimble";
  inputs."uuids".type  = "github";
  inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-coinbase_pro-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-coinbase_pro-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}