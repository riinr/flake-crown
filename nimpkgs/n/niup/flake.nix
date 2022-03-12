{
  description = ''IUP FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."niup-master".url = "path:./master";
  inputs."niup-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_0".url = "path:./3_27_0";
  inputs."niup-3_27_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_1".url = "path:./3_27_1";
  inputs."niup-3_27_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_2".url = "path:./3_27_2";
  inputs."niup-3_27_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_3".url = "path:./3_27_3";
  inputs."niup-3_27_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_4".url = "path:./3_27_4";
  inputs."niup-3_27_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_5".url = "path:./3_27_5";
  inputs."niup-3_27_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_6".url = "path:./3_27_6";
  inputs."niup-3_27_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_7".url = "path:./3_27_7";
  inputs."niup-3_27_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_8".url = "path:./3_27_8";
  inputs."niup-3_27_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_28_0".url = "path:./3_28_0";
  inputs."niup-3_28_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_28_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_28_1".url = "path:./3_28_1";
  inputs."niup-3_28_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_28_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_28_2".url = "path:./3_28_2";
  inputs."niup-3_28_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_28_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_29_0".url = "path:./3_29_0";
  inputs."niup-3_29_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_29_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_29_1".url = "path:./3_29_1";
  inputs."niup-3_29_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_29_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_30_0".url = "path:./3_30_0";
  inputs."niup-3_30_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_30_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_30_1".url = "path:./3_30_1";
  inputs."niup-3_30_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_30_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_30_2".url = "path:./3_30_2";
  inputs."niup-3_30_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_30_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-v3_30_5".url = "path:./v3_30_5";
  inputs."niup-v3_30_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-v3_30_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-v3_30_6".url = "path:./v3_30_6";
  inputs."niup-v3_30_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-v3_30_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-v3_30_7".url = "path:./v3_30_7";
  inputs."niup-v3_30_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-v3_30_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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