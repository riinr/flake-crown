{
  description = ''UUIDs in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uuid4-main".url = "path:./main";
  inputs."uuid4-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_0".url = "path:./v0_9_0";
  inputs."uuid4-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_1".url = "path:./v0_9_1";
  inputs."uuid4-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_2".url = "path:./v0_9_2";
  inputs."uuid4-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_3".url = "path:./v0_9_3";
  inputs."uuid4-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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