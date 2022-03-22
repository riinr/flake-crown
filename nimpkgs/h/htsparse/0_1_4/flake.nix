{
  description = ''Nim wrappers for tree-sitter parser grammars'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-htsparse-0_1_4.flake = false;
  inputs.src-htsparse-0_1_4.owner = "haxscramper";
  inputs.src-htsparse-0_1_4.ref   = "0_1_4";
  inputs.src-htsparse-0_1_4.repo  = "htsparse";
  inputs.src-htsparse-0_1_4.type  = "github";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".dir   = "v0_14_6";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse".owner = "nim-nix-pkgs";
  inputs."hparse".ref   = "master";
  inputs."hparse".repo  = "hparse";
  inputs."hparse".dir   = "v0_2_6";
  inputs."hparse".type  = "github";
  inputs."hparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-htsparse-0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-htsparse-0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}