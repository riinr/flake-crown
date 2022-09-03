{
  description = ''Kombinator is a tool to generate commands line from parameters combination from a config file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kombinator-master.flake = false;
  inputs.src-kombinator-master.ref   = "refs/heads/master";
  inputs.src-kombinator-master.owner = "EchoPouet";
  inputs.src-kombinator-master.repo  = "kombinator";
  inputs.src-kombinator-master.type  = "gitlab";
  
  inputs."parsetoml".owner = "nim-nix-pkgs";
  inputs."parsetoml".ref   = "master";
  inputs."parsetoml".repo  = "parsetoml";
  inputs."parsetoml".dir   = "v0_6_0";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_28";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suru".owner = "nim-nix-pkgs";
  inputs."suru".ref   = "master";
  inputs."suru".repo  = "suru";
  inputs."suru".dir   = "v0_3_1";
  inputs."suru".type  = "github";
  inputs."suru".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kombinator-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-kombinator-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}