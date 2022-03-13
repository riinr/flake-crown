{
  description = ''Engine-agnostic library for computing 2D raycasted lights'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."delight-master".dir   = "master";
  inputs."delight-master".owner = "nim-nix-pkgs";
  inputs."delight-master".ref   = "master";
  inputs."delight-master".repo  = "delight";
  inputs."delight-master".type  = "github";
  inputs."delight-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."delight-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."delight-0_1_0".dir   = "0_1_0";
  inputs."delight-0_1_0".owner = "nim-nix-pkgs";
  inputs."delight-0_1_0".ref   = "master";
  inputs."delight-0_1_0".repo  = "delight";
  inputs."delight-0_1_0".type  = "github";
  inputs."delight-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."delight-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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