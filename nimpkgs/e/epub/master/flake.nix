{
  description = ''Module for working with EPUB e-book files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-epub-master.flake = false;
  inputs.src-epub-master.owner = "achesak";
  inputs.src-epub-master.ref   = "refs/heads/master";
  inputs.src-epub-master.repo  = "nim-epub";
  inputs.src-epub-master.type  = "github";
  
  inputs."nim>=".dir   = "nimpkgs/n/nim>=";
  inputs."nim>=".owner = "riinr";
  inputs."nim>=".ref   = "flake-pinning";
  inputs."nim>=".repo  = "flake-nimble";
  inputs."nim>=".type  = "github";
  inputs."nim>=".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim>=".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-epub-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-epub-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}