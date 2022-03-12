{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mcd-0_3_2.flake = false;
  inputs.src-mcd-0_3_2.owner = "malicious-commit-detector";
  inputs.src-mcd-0_3_2.ref   = "refs/tags/0.3.2";
  inputs.src-mcd-0_3_2.repo  = "mcd";
  inputs.src-mcd-0_3_2.type  = "gitlab";
  
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
  
  inputs."colorizeecho".dir   = "nimpkgs/c/colorizeecho";
  inputs."colorizeecho".owner = "riinr";
  inputs."colorizeecho".ref   = "flake-pinning";
  inputs."colorizeecho".repo  = "flake-nimble";
  inputs."colorizeecho".type  = "github";
  inputs."colorizeecho".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorizeecho".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mcd-0_3_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mcd-0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}