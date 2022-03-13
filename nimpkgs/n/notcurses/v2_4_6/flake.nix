{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notcurses-v2_4_6.flake = false;
  inputs.src-notcurses-v2_4_6.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_4_6.ref   = "refs/tags/v2.4.6";
  inputs.src-notcurses-v2_4_6.repo  = "nim-notcurses";
  inputs.src-notcurses-v2_4_6.type  = "github";
  
  inputs."nimterop".owner = "nim-nix-pkgs";
  inputs."nimterop".ref   = "master";
  inputs."nimterop".repo  = "nimterop";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notcurses-v2_4_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notcurses-v2_4_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}