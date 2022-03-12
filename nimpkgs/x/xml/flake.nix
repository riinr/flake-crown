{
  description = ''Pure Nim XML parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xml-master".url = "path:./master";
  inputs."xml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_0".url = "path:./0_1_0";
  inputs."xml-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_1".url = "path:./0_1_1";
  inputs."xml-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_2".url = "path:./0_1_2";
  inputs."xml-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_3".url = "path:./0_1_3";
  inputs."xml-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_4".url = "path:./0_1_4";
  inputs."xml-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-devel".url = "path:./devel";
  inputs."xml-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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