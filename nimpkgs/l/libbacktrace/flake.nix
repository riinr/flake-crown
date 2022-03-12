{
  description = ''Nim wrapper for libbacktrace'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libbacktrace-master".url = "path:./master";
  inputs."libbacktrace-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_2".url = "path:./v0_0_2";
  inputs."libbacktrace-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_3".url = "path:./v0_0_3";
  inputs."libbacktrace-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_4".url = "path:./v0_0_4";
  inputs."libbacktrace-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_5".url = "path:./v0_0_5";
  inputs."libbacktrace-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_6".url = "path:./v0_0_6";
  inputs."libbacktrace-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_7".url = "path:./v0_0_7";
  inputs."libbacktrace-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_8".url = "path:./v0_0_8";
  inputs."libbacktrace-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}