{
  description = ''A simple docx reader.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."docx-master".url = "path:./master";
  inputs."docx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_0_2".url = "path:./v0_0_2";
  inputs."docx-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_0".url = "path:./v0_1_0";
  inputs."docx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_2".url = "path:./v0_1_2";
  inputs."docx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_4".url = "path:./v0_1_4";
  inputs."docx-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_6".url = "path:./v0_1_6";
  inputs."docx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_8".url = "path:./v0_1_8";
  inputs."docx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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