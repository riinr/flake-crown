{
  description = ''A Jester web plugin that determines geographic information for each web request via API. Uses sqlite3 for a cache.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jestergeoip-master".url = "path:./master";
  inputs."jestergeoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestergeoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jestergeoip-v1_0_1".url = "path:./v1_0_1";
  inputs."jestergeoip-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestergeoip-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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