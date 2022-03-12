{
  description = ''Kombinator is a tool to generate commands line from parameters combination from a config file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kombinator-1_3_1.flake = false;
  inputs.src-kombinator-1_3_1.owner = "EchoPouet";
  inputs.src-kombinator-1_3_1.ref   = "refs/tags/1.3.1";
  inputs.src-kombinator-1_3_1.repo  = "kombinator";
  inputs.src-kombinator-1_3_1.type  = "gitlab";
  
  inputs."parsetoml".dir   = "nimpkgs/p/parsetoml";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".ref   = "flake-pinning";
  inputs."parsetoml".repo  = "flake-nimble";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suru".dir   = "nimpkgs/s/suru";
  inputs."suru".owner = "riinr";
  inputs."suru".ref   = "flake-pinning";
  inputs."suru".repo  = "flake-nimble";
  inputs."suru".type  = "github";
  inputs."suru".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kombinator-1_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kombinator-1_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}