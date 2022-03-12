{
  description = ''Nim wrapper for PDCurses'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pdcurses-master.flake = false;
  inputs.src-pdcurses-master.owner = "lcrees";
  inputs.src-pdcurses-master.ref   = "refs/heads/master";
  inputs.src-pdcurses-master.repo  = "pdcurses";
  inputs.src-pdcurses-master.type  = "github";
  
  inputs."oldwinapi".dir   = "nimpkgs/o/oldwinapi";
  inputs."oldwinapi".owner = "riinr";
  inputs."oldwinapi".ref   = "flake-pinning";
  inputs."oldwinapi".repo  = "flake-nimble";
  inputs."oldwinapi".type  = "github";
  inputs."oldwinapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pdcurses-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pdcurses-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}