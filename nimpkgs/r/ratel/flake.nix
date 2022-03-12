{
  description = ''Zero-cost abstractions for microcontrollers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ratel-master".url = "path:./master";
  inputs."ratel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ratel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ratel-v0_2_0".url = "path:./v0_2_0";
  inputs."ratel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ratel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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