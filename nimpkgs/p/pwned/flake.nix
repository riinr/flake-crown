{
  description = ''A client for the Pwned passwords API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pwned-master".dir   = "master";
  inputs."pwned-master".owner = "nim-nix-pkgs";
  inputs."pwned-master".ref   = "master";
  inputs."pwned-master".repo  = "pwned";
  inputs."pwned-master".type  = "github";
  inputs."pwned-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwned-v0_1_0".dir   = "v0_1_0";
  inputs."pwned-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pwned-v0_1_0".ref   = "master";
  inputs."pwned-v0_1_0".repo  = "pwned";
  inputs."pwned-v0_1_0".type  = "github";
  inputs."pwned-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwned-v1_0_0".dir   = "v1_0_0";
  inputs."pwned-v1_0_0".owner = "nim-nix-pkgs";
  inputs."pwned-v1_0_0".ref   = "master";
  inputs."pwned-v1_0_0".repo  = "pwned";
  inputs."pwned-v1_0_0".type  = "github";
  inputs."pwned-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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