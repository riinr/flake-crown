{
  description = ''An OpenAL wrapper.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openal-master".dir   = "master";
  inputs."openal-master".owner = "nim-nix-pkgs";
  inputs."openal-master".ref   = "master";
  inputs."openal-master".repo  = "openal";
  inputs."openal-master".type  = "github";
  inputs."openal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openal-0_1_1".dir   = "0_1_1";
  inputs."openal-0_1_1".owner = "nim-nix-pkgs";
  inputs."openal-0_1_1".ref   = "master";
  inputs."openal-0_1_1".repo  = "openal";
  inputs."openal-0_1_1".type  = "github";
  inputs."openal-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openal-v0_1_0".dir   = "v0_1_0";
  inputs."openal-v0_1_0".owner = "nim-nix-pkgs";
  inputs."openal-v0_1_0".ref   = "master";
  inputs."openal-v0_1_0".repo  = "openal";
  inputs."openal-v0_1_0".type  = "github";
  inputs."openal-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}