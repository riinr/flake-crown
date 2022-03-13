{
  description = ''Spatial data structures for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spacy-0_0_2.flake = false;
  inputs.src-spacy-0_0_2.owner = "treeform";
  inputs.src-spacy-0_0_2.ref   = "refs/tags/0.0.2";
  inputs.src-spacy-0_0_2.repo  = "spacy";
  inputs.src-spacy-0_0_2.type  = "github";
  
  inputs."vmath".owner = "nim-nix-pkgs";
  inputs."vmath".ref   = "master";
  inputs."vmath".repo  = "vmath";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy".owner = "nim-nix-pkgs";
  inputs."bumpy".ref   = "master";
  inputs."bumpy".repo  = "bumpy";
  inputs."bumpy".type  = "github";
  inputs."bumpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spacy-0_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spacy-0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}