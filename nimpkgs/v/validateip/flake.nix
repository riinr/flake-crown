{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."validateip-master".url = "path:./master";
  inputs."validateip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."validateip-0_1_0".url = "path:./0_1_0";
  inputs."validateip-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."validateip-0_1_1".url = "path:./0_1_1";
  inputs."validateip-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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