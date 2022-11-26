{
  description = ''RayTracing Algorith in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-RaytracingAlgorithm-v2_1_0.flake = false;
  inputs.src-RaytracingAlgorithm-v2_1_0.ref   = "refs/tags/v2.1.0";
  inputs.src-RaytracingAlgorithm-v2_1_0.owner = "lorycontixd";
  inputs.src-RaytracingAlgorithm-v2_1_0.repo  = "RaytracingAlgorithm";
  inputs.src-RaytracingAlgorithm-v2_1_0.type  = "github";
  
  inputs."simplepng".owner = "nim-nix-pkgs";
  inputs."simplepng".ref   = "master";
  inputs."simplepng".repo  = "simplepng";
  inputs."simplepng".dir   = "master";
  inputs."simplepng".type  = "github";
  inputs."simplepng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplepng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_32";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stacks".owner = "nim-nix-pkgs";
  inputs."stacks".ref   = "master";
  inputs."stacks".repo  = "stacks";
  inputs."stacks".dir   = "0_4_2";
  inputs."stacks".type  = "github";
  inputs."stacks".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-RaytracingAlgorithm-v2_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-RaytracingAlgorithm-v2_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}