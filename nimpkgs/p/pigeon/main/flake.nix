{
  description = ''🕊️ Define procedures on the server, call them from the browser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pigeon-main.flake = false;
  inputs.src-pigeon-main.ref   = "refs/heads/main";
  inputs.src-pigeon-main.owner = "dizzyliam";
  inputs.src-pigeon-main.repo  = "pigeon";
  inputs.src-pigeon-main.type  = "github";
  
  inputs."prologue".owner = "nim-nix-pkgs";
  inputs."prologue".ref   = "master";
  inputs."prologue".repo  = "prologue";
  inputs."prologue".dir   = "v0_6_4";
  inputs."prologue".type  = "github";
  inputs."prologue".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_20_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ajax".owner = "nim-nix-pkgs";
  inputs."ajax".ref   = "master";
  inputs."ajax".repo  = "ajax";
  inputs."ajax".dir   = "master";
  inputs."ajax".type  = "github";
  inputs."ajax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ajax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pigeon-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pigeon-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}