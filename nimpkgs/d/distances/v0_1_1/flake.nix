{
  description = ''Distances is a high performance Nim library for calculating distances.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-distances-v0_1_1.flake = false;
  inputs.src-distances-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-distances-v0_1_1.owner = "ayman-albaz";
  inputs.src-distances-v0_1_1.repo  = "distances";
  inputs.src-distances-v0_1_1.type  = "github";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".dir   = "v0_7_15";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo".owner = "nim-nix-pkgs";
  inputs."neo".ref   = "master";
  inputs."neo".repo  = "neo";
  inputs."neo".dir   = "0_3_2";
  inputs."neo".type  = "github";
  inputs."neo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-distances-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-distances-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}