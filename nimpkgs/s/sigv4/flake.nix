{
  description = ''Amazon Web Services Signature Version 4'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sigv4-master".url = "path:./master";
  inputs."sigv4-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_0".url = "path:./1_0_0";
  inputs."sigv4-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_1".url = "path:./1_0_1";
  inputs."sigv4-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_10".url = "path:./1_0_10";
  inputs."sigv4-1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_11".url = "path:./1_0_11";
  inputs."sigv4-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_12".url = "path:./1_0_12";
  inputs."sigv4-1_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_13".url = "path:./1_0_13";
  inputs."sigv4-1_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_2".url = "path:./1_0_2";
  inputs."sigv4-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_3".url = "path:./1_0_3";
  inputs."sigv4-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_4".url = "path:./1_0_4";
  inputs."sigv4-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_5".url = "path:./1_0_5";
  inputs."sigv4-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_6".url = "path:./1_0_6";
  inputs."sigv4-1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_7".url = "path:./1_0_7";
  inputs."sigv4-1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_8".url = "path:./1_0_8";
  inputs."sigv4-1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_9".url = "path:./1_0_9";
  inputs."sigv4-1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_1_0".url = "path:./1_1_0";
  inputs."sigv4-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_2_0".url = "path:./1_2_0";
  inputs."sigv4-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_2_1".url = "path:./1_2_1";
  inputs."sigv4-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_3_0".url = "path:./1_3_0";
  inputs."sigv4-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_4_0".url = "path:./1_4_0";
  inputs."sigv4-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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