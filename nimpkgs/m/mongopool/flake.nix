{
  description = ''MongoDb pooled driver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mongopool-master".dir   = "master";
  inputs."mongopool-master".owner = "nim-nix-pkgs";
  inputs."mongopool-master".ref   = "master";
  inputs."mongopool-master".repo  = "mongopool";
  inputs."mongopool-master".type  = "github";
  inputs."mongopool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mongopool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mongopool-v1_0_0".dir   = "v1_0_0";
  inputs."mongopool-v1_0_0".owner = "nim-nix-pkgs";
  inputs."mongopool-v1_0_0".ref   = "master";
  inputs."mongopool-v1_0_0".repo  = "mongopool";
  inputs."mongopool-v1_0_0".type  = "github";
  inputs."mongopool-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mongopool-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mongopool-v1_0_1".dir   = "v1_0_1";
  inputs."mongopool-v1_0_1".owner = "nim-nix-pkgs";
  inputs."mongopool-v1_0_1".ref   = "master";
  inputs."mongopool-v1_0_1".repo  = "mongopool";
  inputs."mongopool-v1_0_1".type  = "github";
  inputs."mongopool-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mongopool-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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