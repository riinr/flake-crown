{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimib-main".url = "path:./main";
  inputs."nimib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1".url = "path:./v0_1";
  inputs."nimib-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_1".url = "path:./v0_1_1";
  inputs."nimib-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_2".url = "path:./v0_1_2";
  inputs."nimib-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_3".url = "path:./v0_1_3";
  inputs."nimib-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_4".url = "path:./v0_1_4";
  inputs."nimib-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_5".url = "path:./v0_1_5";
  inputs."nimib-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_6".url = "path:./v0_1_6";
  inputs."nimib-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_0".url = "path:./v0_2_0";
  inputs."nimib-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_1".url = "path:./v0_2_1";
  inputs."nimib-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_2".url = "path:./v0_2_2";
  inputs."nimib-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_3".url = "path:./v0_2_3";
  inputs."nimib-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_4".url = "path:./v0_2_4";
  inputs."nimib-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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