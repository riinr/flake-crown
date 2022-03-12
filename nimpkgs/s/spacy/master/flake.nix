{
  description = ''Spatial data structures for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spacy-master.flake = false;
  inputs.src-spacy-master.owner = "treeform";
  inputs.src-spacy-master.ref   = "refs/heads/master";
  inputs.src-spacy-master.repo  = "spacy";
  inputs.src-spacy-master.type  = "github";
  
  inputs."vmath".dir   = "nimpkgs/v/vmath";
  inputs."vmath".owner = "riinr";
  inputs."vmath".ref   = "flake-pinning";
  inputs."vmath".repo  = "flake-nimble";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy".dir   = "nimpkgs/b/bumpy";
  inputs."bumpy".owner = "riinr";
  inputs."bumpy".ref   = "flake-pinning";
  inputs."bumpy".repo  = "flake-nimble";
  inputs."bumpy".type  = "github";
  inputs."bumpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spacy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spacy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}