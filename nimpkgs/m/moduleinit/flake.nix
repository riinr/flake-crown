{
  description = ''Nim module/thread initialisation ordering library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."moduleinit-master".url = "path:./master";
  inputs."moduleinit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_1_0".url = "path:./v0_1_0";
  inputs."moduleinit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_2_0".url = "path:./v0_2_0";
  inputs."moduleinit-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_3_0".url = "path:./v0_3_0";
  inputs."moduleinit-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_4_0".url = "path:./v0_4_0";
  inputs."moduleinit-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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