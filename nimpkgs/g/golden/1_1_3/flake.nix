{
  description = ''a benchmark tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-golden-1_1_3.flake = false;
  inputs.src-golden-1_1_3.owner = "disruptek";
  inputs.src-golden-1_1_3.ref   = "refs/tags/1.1.3";
  inputs.src-golden-1_1_3.repo  = "golden";
  inputs.src-golden-1_1_3.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach".dir   = "nimpkgs/f/foreach";
  inputs."foreach".owner = "riinr";
  inputs."foreach".ref   = "flake-pinning";
  inputs."foreach".repo  = "flake-nimble";
  inputs."foreach".type  = "github";
  inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."http://github.com/genotrance/nimgit2.git".dir   = "nimpkgs/h/http://github.com/genotrance/nimgit2.git";
  inputs."http://github.com/genotrance/nimgit2.git".owner = "riinr";
  inputs."http://github.com/genotrance/nimgit2.git".ref   = "flake-pinning";
  inputs."http://github.com/genotrance/nimgit2.git".repo  = "flake-nimble";
  inputs."http://github.com/genotrance/nimgit2.git".type  = "github";
  inputs."http://github.com/genotrance/nimgit2.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."http://github.com/genotrance/nimgit2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-golden-1_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-golden-1_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}