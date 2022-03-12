{
  description = ''objective-c runtime bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."objc_runtime-master".url = "path:./master";
  inputs."objc_runtime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."objc_runtime-v0_1_1".url = "path:./v0_1_1";
  inputs."objc_runtime-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."objc_runtime-v0_1_2".url = "path:./v0_1_2";
  inputs."objc_runtime-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."objc_runtime-v0_1_3".url = "path:./v0_1_3";
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