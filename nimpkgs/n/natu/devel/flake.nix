{
  description = ''Game Boy Advance development library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-natu-devel.flake = false;
  inputs.src-natu-devel.ref   = "refs/heads/devel";
  inputs.src-natu-devel.owner = "exelotl";
  inputs.src-natu-devel.repo  = "natu";
  inputs.src-natu-devel.type  = "github";
  
  inputs."trick".owner = "nim-nix-pkgs";
  inputs."trick".ref   = "master";
  inputs."trick".repo  = "trick";
  inputs."trick".dir   = "0_1_2";
  inputs."trick".type  = "github";
  inputs."trick".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-natu-devel"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-natu-devel";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}