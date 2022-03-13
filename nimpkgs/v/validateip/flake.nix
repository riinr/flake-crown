{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."validateip-master".dir   = "master";
  inputs."validateip-master".owner = "nim-nix-pkgs";
  inputs."validateip-master".ref   = "master";
  inputs."validateip-master".repo  = "validateip";
  inputs."validateip-master".type  = "github";
  inputs."validateip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."validateip-0_1_0".dir   = "0_1_0";
  inputs."validateip-0_1_0".owner = "nim-nix-pkgs";
  inputs."validateip-0_1_0".ref   = "master";
  inputs."validateip-0_1_0".repo  = "validateip";
  inputs."validateip-0_1_0".type  = "github";
  inputs."validateip-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."validateip-0_1_1".dir   = "0_1_1";
  inputs."validateip-0_1_1".owner = "nim-nix-pkgs";
  inputs."validateip-0_1_1".ref   = "master";
  inputs."validateip-0_1_1".repo  = "validateip";
  inputs."validateip-0_1_1".type  = "github";
  inputs."validateip-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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