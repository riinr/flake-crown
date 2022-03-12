{
  description = ''Nim wrappers for tree-sitter parser grammars'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-htsparse-0_1_10.flake = false;
  inputs.src-htsparse-0_1_10.owner = "haxscramper";
  inputs.src-htsparse-0_1_10.ref   = "refs/tags/0.1.10";
  inputs.src-htsparse-0_1_10.repo  = "htsparse";
  inputs.src-htsparse-0_1_10.type  = "github";
  
  inputs."hmisc".dir   = "nimpkgs/h/hmisc";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".ref   = "flake-pinning";
  inputs."hmisc".repo  = "flake-nimble";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-htsparse-0_1_10"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-htsparse-0_1_10";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}