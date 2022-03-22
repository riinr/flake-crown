{
  description = ''Lightweight i3 status bar.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimi3status-0_2_0.flake = false;
  inputs.src-nimi3status-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-nimi3status-0_2_0.owner = "FedericoCeratto";
  inputs.src-nimi3status-0_2_0.repo  = "nimi3status";
  inputs.src-nimi3status-0_2_0.type  = "github";
  
  inputs."colorsys".owner = "nim-nix-pkgs";
  inputs."colorsys".ref   = "master";
  inputs."colorsys".repo  = "colorsys";
  inputs."colorsys".dir   = "";
  inputs."colorsys".type  = "github";
  inputs."colorsys".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorsys".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimi3status-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimi3status-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}