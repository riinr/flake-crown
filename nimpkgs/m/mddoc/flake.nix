{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mddoc-master".url = "path:./master";
  inputs."mddoc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_1".url = "path:./0_0_1";
  inputs."mddoc-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_2".url = "path:./0_0_2";
  inputs."mddoc-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_3".url = "path:./0_0_3";
  inputs."mddoc-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_4".url = "path:./0_0_4";
  inputs."mddoc-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-v0_0_4".url = "path:./v0_0_4";
  inputs."mddoc-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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