{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notcurses-v2_3_18.flake = false;
  inputs.src-notcurses-v2_3_18.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_3_18.ref   = "refs/tags/v2.3.18";
  inputs.src-notcurses-v2_3_18.repo  = "nim-notcurses";
  inputs.src-notcurses-v2_3_18.type  = "github";
  
  inputs."nimterop".dir   = "nimpkgs/n/nimterop";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".ref   = "flake-pinning";
  inputs."nimterop".repo  = "flake-nimble";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notcurses-v2_3_18"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notcurses-v2_3_18";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}