{
  description = ''implements the cucumber BDD framework in the nim language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cucumber-master".url = "path:./master";
  inputs."cucumber-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_10".url = "path:./v0_0_10";
  inputs."cucumber-v0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_11".url = "path:./v0_0_11";
  inputs."cucumber-v0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_2".url = "path:./v0_0_2";
  inputs."cucumber-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_3".url = "path:./v0_0_3";
  inputs."cucumber-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_4".url = "path:./v0_0_4";
  inputs."cucumber-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_6".url = "path:./v0_0_6";
  inputs."cucumber-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_7".url = "path:./v0_0_7";
  inputs."cucumber-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_8".url = "path:./v0_0_8";
  inputs."cucumber-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_9".url = "path:./v0_0_9";
  inputs."cucumber-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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