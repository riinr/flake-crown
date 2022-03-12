{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gtk2-master.flake = false;
  inputs.src-gtk2-master.owner = "nim-lang";
  inputs.src-gtk2-master.ref   = "refs/heads/master";
  inputs.src-gtk2-master.repo  = "gtk2";
  inputs.src-gtk2-master.type  = "github";
  
  inputs."cairo".dir   = "nimpkgs/c/cairo";
  inputs."cairo".owner = "riinr";
  inputs."cairo".ref   = "flake-pinning";
  inputs."cairo".repo  = "flake-nimble";
  inputs."cairo".type  = "github";
  inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gtk2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gtk2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}