{
  description = ''Nim wrappers for tree-sitter parser grammars'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-htsparse-0_1_5.flake = false;
  inputs.src-htsparse-0_1_5.owner = "haxscramper";
  inputs.src-htsparse-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-htsparse-0_1_5.repo  = "htsparse";
  inputs.src-htsparse-0_1_5.type  = "github";
  
  inputs."hmisc".dir   = "nimpkgs/h/hmisc";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".ref   = "flake-pinning";
  inputs."hmisc".repo  = "flake-nimble";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse".dir   = "nimpkgs/h/hparse";
  inputs."hparse".owner = "riinr";
  inputs."hparse".ref   = "flake-pinning";
  inputs."hparse".repo  = "flake-nimble";
  inputs."hparse".type  = "github";
  inputs."hparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-htsparse-0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-htsparse-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}