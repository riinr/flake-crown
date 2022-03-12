{
  description = ''A minimalistic connection pooling package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tinypool-master".url = "path:./master";
  inputs."tinypool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tinypool-0_2_0".url = "path:./0_2_0";
  inputs."tinypool-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tinypool-0_2_1".url = "path:./0_2_1";
  inputs."tinypool-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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