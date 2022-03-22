{
  description = ''a nim benchmark'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-golden-1_1_3.flake = false;
  inputs.src-golden-1_1_3.ref   = "refs/tags/1.1.3";
  inputs.src-golden-1_1_3.owner = "disruptek";
  inputs.src-golden-1_1_3.repo  = "golden";
  inputs.src-golden-1_1_3.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_22";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach".owner = "nim-nix-pkgs";
  inputs."foreach".ref   = "master";
  inputs."foreach".repo  = "foreach";
  inputs."foreach".dir   = "1_0_2";
  inputs."foreach".type  = "github";
  inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."http://github.com/genotrance/nimgit2.git".owner = "nim-nix-pkgs";
  inputs."http://github.com/genotrance/nimgit2.git".ref   = "master";
  inputs."http://github.com/genotrance/nimgit2.git".repo  = "http://github.com/genotrance/nimgit2.git";
  inputs."http://github.com/genotrance/nimgit2.git".dir   = "";
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