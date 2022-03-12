{
  description = ''Create files of the desired size'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fwrite-master".url = "path:./master";
  inputs."fwrite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fwrite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fwrite-v1_0_0".url = "path:./v1_0_0";
  inputs."fwrite-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fwrite-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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