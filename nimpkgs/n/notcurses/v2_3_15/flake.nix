{
  description = ''A wrapper for Notcurses'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notcurses-v2_3_15.flake = false;
  inputs.src-notcurses-v2_3_15.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_3_15.ref   = "v2_3_15";
  inputs.src-notcurses-v2_3_15.repo  = "nim-notcurses";
  inputs.src-notcurses-v2_3_15.type  = "github";
  
  inputs."nimterop".owner = "nim-nix-pkgs";
  inputs."nimterop".ref   = "master";
  inputs."nimterop".repo  = "nimterop";
  inputs."nimterop".dir   = "v0_6_13";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notcurses-v2_3_15"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notcurses-v2_3_15";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}