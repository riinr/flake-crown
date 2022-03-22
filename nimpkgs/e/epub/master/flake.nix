{
  description = ''Module for working with EPUB e-book files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-epub-master.flake = false;
  inputs.src-epub-master.ref   = "refs/heads/master";
  inputs.src-epub-master.owner = "achesak";
  inputs.src-epub-master.repo  = "nim-epub";
  inputs.src-epub-master.type  = "github";
  
  inputs."nim>=".owner = "nim-nix-pkgs";
  inputs."nim>=".ref   = "master";
  inputs."nim>=".repo  = "nim>=";
  inputs."nim>=".dir   = "";
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