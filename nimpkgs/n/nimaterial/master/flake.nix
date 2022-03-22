{
  description = ''nimaterial is a CSS output library based on material design.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimaterial-master.flake = false;
  inputs.src-nimaterial-master.ref   = "refs/heads/master";
  inputs.src-nimaterial-master.owner = "momeemt";
  inputs.src-nimaterial-master.repo  = "nimaterial";
  inputs.src-nimaterial-master.type  = "github";
  
  inputs."palette".owner = "nim-nix-pkgs";
  inputs."palette".ref   = "master";
  inputs."palette".repo  = "palette";
  inputs."palette".dir   = "0_2_0";
  inputs."palette".type  = "github";
  inputs."palette".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimaterial-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimaterial-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}