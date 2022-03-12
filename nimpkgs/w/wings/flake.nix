{
  description = ''A simple cross language struct and enum file generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wings-v0_0_1-alpha".url = "path:./v0_0_1-alpha";
  inputs."wings-v0_0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_2-alpha".url = "path:./v0_0_2-alpha";
  inputs."wings-v0_0_2-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_2-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_3-alpha".url = "path:./v0_0_3-alpha";
  inputs."wings-v0_0_3-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_3-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_4-alpha".url = "path:./v0_0_4-alpha";
  inputs."wings-v0_0_4-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_4-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_5-alpha".url = "path:./v0_0_5-alpha";
  inputs."wings-v0_0_5-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_5-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_6-alpha".url = "path:./v0_0_6-alpha";
  inputs."wings-v0_0_6-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_6-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_7-alpha".url = "path:./v0_0_7-alpha";
  inputs."wings-v0_0_7-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_7-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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