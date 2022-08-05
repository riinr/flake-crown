{
  description = ''Pub/Sub engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."suber-main".dir   = "main";
  inputs."suber-main".owner = "nim-nix-pkgs";
  inputs."suber-main".ref   = "master";
  inputs."suber-main".repo  = "suber";
  inputs."suber-main".type  = "github";
  inputs."suber-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-0_9_9".dir   = "0_9_9";
  inputs."suber-0_9_9".owner = "nim-nix-pkgs";
  inputs."suber-0_9_9".ref   = "master";
  inputs."suber-0_9_9".repo  = "suber";
  inputs."suber-0_9_9".type  = "github";
  inputs."suber-0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-1_0_0".dir   = "1_0_0";
  inputs."suber-1_0_0".owner = "nim-nix-pkgs";
  inputs."suber-1_0_0".ref   = "master";
  inputs."suber-1_0_0".repo  = "suber";
  inputs."suber-1_0_0".type  = "github";
  inputs."suber-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-2_0_0".dir   = "2_0_0";
  inputs."suber-2_0_0".owner = "nim-nix-pkgs";
  inputs."suber-2_0_0".ref   = "master";
  inputs."suber-2_0_0".repo  = "suber";
  inputs."suber-2_0_0".type  = "github";
  inputs."suber-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-2_0_1".dir   = "2_0_1";
  inputs."suber-2_0_1".owner = "nim-nix-pkgs";
  inputs."suber-2_0_1".ref   = "master";
  inputs."suber-2_0_1".repo  = "suber";
  inputs."suber-2_0_1".type  = "github";
  inputs."suber-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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