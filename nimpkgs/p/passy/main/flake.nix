{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-passy-main.flake = false;
  inputs.src-passy-main.ref   = "refs/heads/main";
  inputs.src-passy-main.owner = "infinitybeond1";
  inputs.src-passy-main.repo  = "passy";
  inputs.src-passy-main.type  = "github";
  
  inputs."termui".owner = "nim-nix-pkgs";
  inputs."termui".ref   = "master";
  inputs."termui".repo  = "termui";
  inputs."termui".dir   = "master";
  inputs."termui".type  = "github";
  inputs."termui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-passy-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-passy-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}