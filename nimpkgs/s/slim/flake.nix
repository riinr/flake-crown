{
  description = ''nim package manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slim-v0_1_1".url = "path:./v0_1_1";
  inputs."slim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_2".url = "path:./v0_1_2";
  inputs."slim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_3".url = "path:./v0_1_3";
  inputs."slim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_5".url = "path:./v0_1_5";
  inputs."slim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_6".url = "path:./v0_1_6";
  inputs."slim-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_7".url = "path:./v0_1_7";
  inputs."slim-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_8".url = "path:./v0_1_8";
  inputs."slim-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_9".url = "path:./v0_1_9";
  inputs."slim-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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