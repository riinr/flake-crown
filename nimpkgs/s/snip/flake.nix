{
  description = ''Text editor to speed up testing code snippets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."snip-master".dir   = "master";
  inputs."snip-master".owner = "nim-nix-pkgs";
  inputs."snip-master".ref   = "master";
  inputs."snip-master".repo  = "snip";
  inputs."snip-master".type  = "github";
  inputs."snip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snip-v0_1_0".dir   = "v0_1_0";
  inputs."snip-v0_1_0".owner = "nim-nix-pkgs";
  inputs."snip-v0_1_0".ref   = "master";
  inputs."snip-v0_1_0".repo  = "snip";
  inputs."snip-v0_1_0".type  = "github";
  inputs."snip-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snip-v0_2_0".dir   = "v0_2_0";
  inputs."snip-v0_2_0".owner = "nim-nix-pkgs";
  inputs."snip-v0_2_0".ref   = "master";
  inputs."snip-v0_2_0".repo  = "snip";
  inputs."snip-v0_2_0".type  = "github";
  inputs."snip-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snip-v0_2_1".dir   = "v0_2_1";
  inputs."snip-v0_2_1".owner = "nim-nix-pkgs";
  inputs."snip-v0_2_1".ref   = "master";
  inputs."snip-v0_2_1".repo  = "snip";
  inputs."snip-v0_2_1".type  = "github";
  inputs."snip-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snip-v0_2_2".dir   = "v0_2_2";
  inputs."snip-v0_2_2".owner = "nim-nix-pkgs";
  inputs."snip-v0_2_2".ref   = "master";
  inputs."snip-v0_2_2".repo  = "snip";
  inputs."snip-v0_2_2".type  = "github";
  inputs."snip-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snip-v0_2_3".dir   = "v0_2_3";
  inputs."snip-v0_2_3".owner = "nim-nix-pkgs";
  inputs."snip-v0_2_3".ref   = "master";
  inputs."snip-v0_2_3".repo  = "snip";
  inputs."snip-v0_2_3".type  = "github";
  inputs."snip-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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