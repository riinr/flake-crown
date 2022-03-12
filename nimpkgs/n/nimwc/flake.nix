{
  description = ''A website management tool. Run the file and access your webpage.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimwc-master".url = "path:./master";
  inputs."nimwc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v0_6_5".url = "path:./v0_6_5";
  inputs."nimwc-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_0".url = "path:./v3_0_0";
  inputs."nimwc-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_1".url = "path:./v3_0_1";
  inputs."nimwc-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_2".url = "path:./v3_0_2";
  inputs."nimwc-v3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_3".url = "path:./v3_0_3";
  inputs."nimwc-v3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_1_0".url = "path:./v3_1_0";
  inputs."nimwc-v3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_2_0".url = "path:./v3_2_0";
  inputs."nimwc-v3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_3_0".url = "path:./v3_3_0";
  inputs."nimwc-v3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_0".url = "path:./v4_0_0";
  inputs."nimwc-v4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_1".url = "path:./v4_0_1";
  inputs."nimwc-v4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_10".url = "path:./v4_0_10";
  inputs."nimwc-v4_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_11".url = "path:./v4_0_11";
  inputs."nimwc-v4_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_3".url = "path:./v4_0_3";
  inputs."nimwc-v4_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_4".url = "path:./v4_0_4";
  inputs."nimwc-v4_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_5".url = "path:./v4_0_5";
  inputs."nimwc-v4_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_6".url = "path:./v4_0_6";
  inputs."nimwc-v4_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_7".url = "path:./v4_0_7";
  inputs."nimwc-v4_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_8".url = "path:./v4_0_8";
  inputs."nimwc-v4_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_9".url = "path:./v4_0_9";
  inputs."nimwc-v4_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_0_0".url = "path:./v5_0_0";
  inputs."nimwc-v5_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_1_0".url = "path:./v5_1_0";
  inputs."nimwc-v5_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_1_1".url = "path:./v5_1_1";
  inputs."nimwc-v5_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_5_0".url = "path:./v5_5_0";
  inputs."nimwc-v5_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_5_1".url = "path:./v5_5_1";
  inputs."nimwc-v5_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_5_2".url = "path:./v5_5_2";
  inputs."nimwc-v5_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_0".url = "path:./v6_0_0";
  inputs."nimwc-v6_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_1".url = "path:./v6_0_1";
  inputs."nimwc-v6_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_2".url = "path:./v6_0_2";
  inputs."nimwc-v6_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_3".url = "path:./v6_0_3";
  inputs."nimwc-v6_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_4".url = "path:./v6_0_4";
  inputs."nimwc-v6_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_6".url = "path:./v6_0_6";
  inputs."nimwc-v6_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_1_0".url = "path:./v6_1_0";
  inputs."nimwc-v6_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_1_1".url = "path:./v6_1_1";
  inputs."nimwc-v6_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_1_2".url = "path:./v6_1_2";
  inputs."nimwc-v6_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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