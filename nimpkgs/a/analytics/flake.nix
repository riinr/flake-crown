{
  description = ''Allows statistics to be sent to and recorded in Google Analytics.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."analytics-master".dir   = "master";
  inputs."analytics-master".owner = "nim-nix-pkgs";
  inputs."analytics-master".ref   = "master";
  inputs."analytics-master".repo  = "analytics";
  inputs."analytics-master".type  = "github";
  inputs."analytics-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."analytics-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."analytics-v0_2_0".dir   = "v0_2_0";
  inputs."analytics-v0_2_0".owner = "nim-nix-pkgs";
  inputs."analytics-v0_2_0".ref   = "master";
  inputs."analytics-v0_2_0".repo  = "analytics";
  inputs."analytics-v0_2_0".type  = "github";
  inputs."analytics-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."analytics-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."analytics-v0_3_0".dir   = "v0_3_0";
  inputs."analytics-v0_3_0".owner = "nim-nix-pkgs";
  inputs."analytics-v0_3_0".ref   = "master";
  inputs."analytics-v0_3_0".repo  = "analytics";
  inputs."analytics-v0_3_0".type  = "github";
  inputs."analytics-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."analytics-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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