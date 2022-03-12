{
  description = ''A truly minimal concatenative programming language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mn-master".url = "path:./master";
  inputs."mn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mn-v0_1_0".url = "path:./v0_1_0";
  inputs."mn-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mn-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mn-v0_2_0".url = "path:./v0_2_0";
  inputs."mn-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mn-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}