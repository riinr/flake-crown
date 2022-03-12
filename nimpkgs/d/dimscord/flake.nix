{
  description = ''A Discord Bot & REST Library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dimscord-master".url = "path:./master";
  inputs."dimscord-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_0".url = "path:./v1_0_0";
  inputs."dimscord-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_1".url = "path:./v1_0_1";
  inputs."dimscord-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_6".url = "path:./v1_0_6";
  inputs."dimscord-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_7".url = "path:./v1_0_7";
  inputs."dimscord-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_0".url = "path:./v1_2_0";
  inputs."dimscord-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_1".url = "path:./v1_2_1";
  inputs."dimscord-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_4".url = "path:./v1_2_4";
  inputs."dimscord-v1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_5".url = "path:./v1_2_5";
  inputs."dimscord-v1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_3_0".url = "path:./v1_3_0";
  inputs."dimscord-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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