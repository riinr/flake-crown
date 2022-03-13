{
  description = ''til-tool: Today I Learned tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."til-master".dir   = "master";
  inputs."til-master".owner = "nim-nix-pkgs";
  inputs."til-master".ref   = "master";
  inputs."til-master".repo  = "til";
  inputs."til-master".type  = "github";
  inputs."til-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."til-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."til-v0_0_1".dir   = "v0_0_1";
  inputs."til-v0_0_1".owner = "nim-nix-pkgs";
  inputs."til-v0_0_1".ref   = "master";
  inputs."til-v0_0_1".repo  = "til";
  inputs."til-v0_0_1".type  = "github";
  inputs."til-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."til-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."til-v0_0_2".dir   = "v0_0_2";
  inputs."til-v0_0_2".owner = "nim-nix-pkgs";
  inputs."til-v0_0_2".ref   = "master";
  inputs."til-v0_0_2".repo  = "til";
  inputs."til-v0_0_2".type  = "github";
  inputs."til-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."til-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."til-v0_0_3".dir   = "v0_0_3";
  inputs."til-v0_0_3".owner = "nim-nix-pkgs";
  inputs."til-v0_0_3".ref   = "master";
  inputs."til-v0_0_3".repo  = "til";
  inputs."til-v0_0_3".type  = "github";
  inputs."til-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."til-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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