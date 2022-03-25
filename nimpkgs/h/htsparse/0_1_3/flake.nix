{
  description = ''Nim wrappers for tree-sitter parser grammars'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-htsparse-0_1_3.flake = false;
  inputs.src-htsparse-0_1_3.ref   = "refs/tags/0.1.3";
  inputs.src-htsparse-0_1_3.owner = "haxscramper";
  inputs.src-htsparse-0_1_3.repo  = "htsparse";
  inputs.src-htsparse-0_1_3.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-htsparse-0_1_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-htsparse-0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}