{
  description = ''Monocypher'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-monocypher-v0_2_0.flake = false;
  inputs.src-monocypher-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-monocypher-v0_2_0.owner = "markspanbroek";
  inputs.src-monocypher-v0_2_0.repo  = "monocypher.nim";
  inputs.src-monocypher-v0_2_0.type  = "github";
  
  inputs."nimterop".owner = "nim-nix-pkgs";
  inputs."nimterop".ref   = "master";
  inputs."nimterop".repo  = "nimterop";
  inputs."nimterop".dir   = "v0_5_9";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysrandom".owner = "nim-nix-pkgs";
  inputs."sysrandom".ref   = "master";
  inputs."sysrandom".repo  = "sysrandom";
  inputs."sysrandom".dir   = "v1_1_0";
  inputs."sysrandom".type  = "github";
  inputs."sysrandom".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-monocypher-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-monocypher-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}