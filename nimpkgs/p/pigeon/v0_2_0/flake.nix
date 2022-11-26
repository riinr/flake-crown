{
  description = ''🕊️ Define procedures on the server, call them from the browser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pigeon-v0_2_0.flake = false;
  inputs.src-pigeon-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-pigeon-v0_2_0.owner = "dizzyliam";
  inputs.src-pigeon-v0_2_0.repo  = "pigeon";
  inputs.src-pigeon-v0_2_0.type  = "github";
  
  inputs."prologue".owner = "nim-nix-pkgs";
  inputs."prologue".ref   = "master";
  inputs."prologue".repo  = "prologue";
  inputs."prologue".dir   = "v0_6_4";
  inputs."prologue".type  = "github";
  inputs."prologue".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rejex".owner = "nim-nix-pkgs";
  inputs."rejex".ref   = "master";
  inputs."rejex".repo  = "rejex";
  inputs."rejex".dir   = "";
  inputs."rejex".type  = "github";
  inputs."rejex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rejex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pigeon-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pigeon-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}