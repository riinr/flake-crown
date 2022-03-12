{
  description = ''Easy specification of text formats for structured data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."textformats-main".url = "path:./main";
  inputs."textformats-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-1_2_0".url = "path:./1_2_0";
  inputs."textformats-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_0_0".url = "path:./v1_0_0";
  inputs."textformats-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_1_0".url = "path:./v1_1_0";
  inputs."textformats-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_2_1".url = "path:./v1_2_1";
  inputs."textformats-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_2_2".url = "path:./v1_2_2";
  inputs."textformats-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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