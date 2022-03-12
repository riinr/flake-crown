{
  description = ''Lightweight i3 status bar.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimi3status-master.flake = false;
  inputs.src-nimi3status-master.owner = "FedericoCeratto";
  inputs.src-nimi3status-master.ref   = "refs/heads/master";
  inputs.src-nimi3status-master.repo  = "nimi3status";
  inputs.src-nimi3status-master.type  = "github";
  
  inputs."colorsys".dir   = "nimpkgs/c/colorsys";
  inputs."colorsys".owner = "riinr";
  inputs."colorsys".ref   = "flake-pinning";
  inputs."colorsys".repo  = "flake-nimble";
  inputs."colorsys".type  = "github";
  inputs."colorsys".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorsys".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimi3status-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimi3status-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}