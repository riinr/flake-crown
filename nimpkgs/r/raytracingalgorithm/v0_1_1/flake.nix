{
  description = ''RayTracing Algorith in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-RaytracingAlgorithm-v0_1_1.flake = false;
  inputs.src-RaytracingAlgorithm-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-RaytracingAlgorithm-v0_1_1.owner = "lorycontixd";
  inputs.src-RaytracingAlgorithm-v0_1_1.repo  = "RaytracingAlgorithm";
  inputs.src-RaytracingAlgorithm-v0_1_1.type  = "github";
  
  inputs."therapist".owner = "nim-nix-pkgs";
  inputs."therapist".ref   = "master";
  inputs."therapist".repo  = "therapist";
  inputs."therapist".dir   = "v0_2_0";
  inputs."therapist".type  = "github";
  inputs."therapist".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simplepng".owner = "nim-nix-pkgs";
  inputs."simplepng".ref   = "master";
  inputs."simplepng".repo  = "simplepng";
  inputs."simplepng".dir   = "source";
  inputs."simplepng".type  = "github";
  inputs."simplepng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplepng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-RaytracingAlgorithm-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-RaytracingAlgorithm-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}