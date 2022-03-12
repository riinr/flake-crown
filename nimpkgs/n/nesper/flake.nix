{
  description = ''Nim wrappers for ESP-IDF (ESP32)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nesper-master".url = "path:./master";
  inputs."nesper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-0_5_0".url = "path:./0_5_0";
  inputs."nesper-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_2_0".url = "path:./v0_2_0";
  inputs."nesper-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_3_0".url = "path:./v0_3_0";
  inputs."nesper-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_4_0".url = "path:./v0_4_0";
  inputs."nesper-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_4_1".url = "path:./v0_4_1";
  inputs."nesper-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_6_0".url = "path:./v0_6_0";
  inputs."nesper-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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