{
  description = ''objective-c runtime bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."objc_runtime-master".dir   = "master";
  inputs."objc_runtime-master".owner = "nim-nix-pkgs";
  inputs."objc_runtime-master".ref   = "master";
  inputs."objc_runtime-master".repo  = "objc_runtime";
  inputs."objc_runtime-master".type  = "github";
  inputs."objc_runtime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."objc_runtime-v0_1_1".dir   = "v0_1_1";
  inputs."objc_runtime-v0_1_1".owner = "nim-nix-pkgs";
  inputs."objc_runtime-v0_1_1".ref   = "master";
  inputs."objc_runtime-v0_1_1".repo  = "objc_runtime";
  inputs."objc_runtime-v0_1_1".type  = "github";
  inputs."objc_runtime-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."objc_runtime-v0_1_2".dir   = "v0_1_2";
  inputs."objc_runtime-v0_1_2".owner = "nim-nix-pkgs";
  inputs."objc_runtime-v0_1_2".ref   = "master";
  inputs."objc_runtime-v0_1_2".repo  = "objc_runtime";
  inputs."objc_runtime-v0_1_2".type  = "github";
  inputs."objc_runtime-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."objc_runtime-v0_1_3".dir   = "v0_1_3";
  inputs."objc_runtime-v0_1_3".owner = "nim-nix-pkgs";
  inputs."objc_runtime-v0_1_3".ref   = "master";
  inputs."objc_runtime-v0_1_3".repo  = "objc_runtime";
  inputs."objc_runtime-v0_1_3".type  = "github";
  inputs."objc_runtime-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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