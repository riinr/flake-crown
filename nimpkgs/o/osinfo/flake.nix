{
  description = ''Modules providing information about the OS.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."osinfo-master".url = "path:./master";
  inputs."osinfo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo-v0_2_0".url = "path:./v0_2_0";
  inputs."osinfo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo-v0_3_1".url = "path:./v0_3_1";
  inputs."osinfo-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo-v0_3_2".url = "path:./v0_3_2";
  inputs."osinfo-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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