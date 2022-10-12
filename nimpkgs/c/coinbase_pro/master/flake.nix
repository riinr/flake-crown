{
  description = ''Coinbase pro client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-coinbase_pro-master.flake = false;
  inputs.src-coinbase_pro-master.ref   = "refs/heads/master";
  inputs.src-coinbase_pro-master.owner = "inv2004";
  inputs.src-coinbase_pro-master.repo  = "coinbase-pro-nim";
  inputs.src-coinbase_pro-master.type  = "github";
  
  inputs."ws".owner = "nim-nix-pkgs";
  inputs."ws".ref   = "master";
  inputs."ws".repo  = "ws";
  inputs."ws".dir   = "0_5_0";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."decimal".owner = "nim-nix-pkgs";
  inputs."decimal".ref   = "master";
  inputs."decimal".repo  = "decimal";
  inputs."decimal".dir   = "master";
  inputs."decimal".type  = "github";
  inputs."decimal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decimal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids".owner = "nim-nix-pkgs";
  inputs."uuids".ref   = "master";
  inputs."uuids".repo  = "uuids";
  inputs."uuids".dir   = "v0_1_11";
  inputs."uuids".type  = "github";
  inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-coinbase_pro-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-coinbase_pro-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}