{
  description = ''data model and serialization format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-preserves-v0_2_0.flake = false;
  inputs.src-preserves-v0_2_0.ref   = "v0.2.0";
  inputs.src-preserves-v0_2_0.owner = "~ehmry";
  inputs.src-preserves-v0_2_0.repo  = "preserves-nim";
  inputs.src-preserves-v0_2_0.type  = "sourcehut";
  
  inputs."bigints".owner = "nim-nix-pkgs";
  inputs."bigints".ref   = "master";
  inputs."bigints".repo  = "bigints";
  inputs."bigints".dir   = "v1_0_0";
  inputs."bigints".type  = "github";
  inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-preserves-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-preserves-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}