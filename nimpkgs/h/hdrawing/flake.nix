{
  description = ''Simple shape drawing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hdrawing-master".dir   = "master";
  inputs."hdrawing-master".owner = "nim-nix-pkgs";
  inputs."hdrawing-master".ref   = "master";
  inputs."hdrawing-master".repo  = "hdrawing";
  inputs."hdrawing-master".type  = "github";
  inputs."hdrawing-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hdrawing-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hdrawing-0_1_1".dir   = "0_1_1";
  inputs."hdrawing-0_1_1".owner = "nim-nix-pkgs";
  inputs."hdrawing-0_1_1".ref   = "master";
  inputs."hdrawing-0_1_1".repo  = "hdrawing";
  inputs."hdrawing-0_1_1".type  = "github";
  inputs."hdrawing-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hdrawing-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hdrawing-0_1_2".dir   = "0_1_2";
  inputs."hdrawing-0_1_2".owner = "nim-nix-pkgs";
  inputs."hdrawing-0_1_2".ref   = "master";
  inputs."hdrawing-0_1_2".repo  = "hdrawing";
  inputs."hdrawing-0_1_2".type  = "github";
  inputs."hdrawing-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hdrawing-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hdrawing-0_1_3".dir   = "0_1_3";
  inputs."hdrawing-0_1_3".owner = "nim-nix-pkgs";
  inputs."hdrawing-0_1_3".ref   = "master";
  inputs."hdrawing-0_1_3".repo  = "hdrawing";
  inputs."hdrawing-0_1_3".type  = "github";
  inputs."hdrawing-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hdrawing-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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