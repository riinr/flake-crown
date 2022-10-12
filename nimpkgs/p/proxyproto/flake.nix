{
  description = ''PROXY Protocol enabler for aged programs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."proxyproto-master".dir   = "master";
  inputs."proxyproto-master".owner = "nim-nix-pkgs";
  inputs."proxyproto-master".ref   = "master";
  inputs."proxyproto-master".repo  = "proxyproto";
  inputs."proxyproto-master".type  = "github";
  inputs."proxyproto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proxyproto-0_1_0".dir   = "0_1_0";
  inputs."proxyproto-0_1_0".owner = "nim-nix-pkgs";
  inputs."proxyproto-0_1_0".ref   = "master";
  inputs."proxyproto-0_1_0".repo  = "proxyproto";
  inputs."proxyproto-0_1_0".type  = "github";
  inputs."proxyproto-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proxyproto-0_1_1".dir   = "0_1_1";
  inputs."proxyproto-0_1_1".owner = "nim-nix-pkgs";
  inputs."proxyproto-0_1_1".ref   = "master";
  inputs."proxyproto-0_1_1".repo  = "proxyproto";
  inputs."proxyproto-0_1_1".type  = "github";
  inputs."proxyproto-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proxyproto-0_1_2".dir   = "0_1_2";
  inputs."proxyproto-0_1_2".owner = "nim-nix-pkgs";
  inputs."proxyproto-0_1_2".ref   = "master";
  inputs."proxyproto-0_1_2".repo  = "proxyproto";
  inputs."proxyproto-0_1_2".type  = "github";
  inputs."proxyproto-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proxyproto-0_1_3".dir   = "0_1_3";
  inputs."proxyproto-0_1_3".owner = "nim-nix-pkgs";
  inputs."proxyproto-0_1_3".ref   = "master";
  inputs."proxyproto-0_1_3".repo  = "proxyproto";
  inputs."proxyproto-0_1_3".type  = "github";
  inputs."proxyproto-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proxyproto-0_1_4".dir   = "0_1_4";
  inputs."proxyproto-0_1_4".owner = "nim-nix-pkgs";
  inputs."proxyproto-0_1_4".ref   = "master";
  inputs."proxyproto-0_1_4".repo  = "proxyproto";
  inputs."proxyproto-0_1_4".type  = "github";
  inputs."proxyproto-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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