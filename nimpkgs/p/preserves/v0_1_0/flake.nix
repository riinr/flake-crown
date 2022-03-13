{
  description = ''Preserves data model and serialization format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-preserves-v0_1_0.flake = false;
  inputs.src-preserves-v0_1_0.owner = "~ehmry";
  inputs.src-preserves-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-preserves-v0_1_0.repo  = "preserves-nim";
  inputs.src-preserves-v0_1_0.type  = "other";
  
  inputs."bigints".owner = "nim-nix-pkgs";
  inputs."bigints".ref   = "master";
  inputs."bigints".repo  = "bigints";
  inputs."bigints".type  = "github";
  inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-preserves-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-preserves-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}