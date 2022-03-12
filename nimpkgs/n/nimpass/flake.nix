{
  description = ''quickly generate cryptographically secure passwords and phrases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpass-master".url = "path:./master";
  inputs."nimpass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_1".url = "path:./v0_0_1";
  inputs."nimpass-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_2".url = "path:./v0_0_2";
  inputs."nimpass-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_3".url = "path:./v0_0_3";
  inputs."nimpass-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_4".url = "path:./v0_0_4";
  inputs."nimpass-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_5".url = "path:./v0_0_5";
  inputs."nimpass-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_6".url = "path:./v0_0_6";
  inputs."nimpass-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_7".url = "path:./v0_0_7";
  inputs."nimpass-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_8".url = "path:./v0_0_8";
  inputs."nimpass-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_9".url = "path:./v0_0_9";
  inputs."nimpass-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_1_0".url = "path:./v0_1_0";
  inputs."nimpass-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_1_1".url = "path:./v0_1_1";
  inputs."nimpass-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_2_0".url = "path:./v0_2_0";
  inputs."nimpass-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v1_2_1".url = "path:./v1_2_1";
  inputs."nimpass-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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