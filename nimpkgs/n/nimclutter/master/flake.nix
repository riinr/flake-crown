{
  description = ''Nim bindings for Clutter toolkit.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimclutter-master.flake = false;
  inputs.src-nimclutter-master.ref   = "refs/heads/master";
  inputs.src-nimclutter-master.owner = "KeepCoolWithCoolidge";
  inputs.src-nimclutter-master.repo  = "nimclutter";
  inputs.src-nimclutter-master.type  = "github";
  
  inputs."oldgtk3".owner = "nim-nix-pkgs";
  inputs."oldgtk3".ref   = "master";
  inputs."oldgtk3".repo  = "oldgtk3";
  inputs."oldgtk3".dir   = "master";
  inputs."oldgtk3".type  = "github";
  inputs."oldgtk3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldgtk3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimclutter-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimclutter-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}