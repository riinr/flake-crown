{
  description = ''View nim packages in your browser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlist-master".url = "path:./master";
  inputs."nimlist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_1".url = "path:./v0_1_1";
  inputs."nimlist-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_2".url = "path:./v0_1_2";
  inputs."nimlist-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_3".url = "path:./v0_1_3";
  inputs."nimlist-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_4".url = "path:./v0_1_4";
  inputs."nimlist-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_5".url = "path:./v0_1_5";
  inputs."nimlist-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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