{
  description = ''RayTracing Algorith in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-RaytracingAlgorithm-v0_1_0.flake = false;
  inputs.src-RaytracingAlgorithm-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-RaytracingAlgorithm-v0_1_0.owner = "lorycontixd";
  inputs.src-RaytracingAlgorithm-v0_1_0.repo  = "RaytracingAlgorithm";
  inputs.src-RaytracingAlgorithm-v0_1_0.type  = "github";
  
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
  inputs."simplepng".dir   = "master";
  inputs."simplepng".type  = "github";
  inputs."simplepng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplepng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-RaytracingAlgorithm-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-RaytracingAlgorithm-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}