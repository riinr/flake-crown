{
  description = ''A Jester web plugin that determines geographic information for each web request via API. Uses sqlite3 for a cache.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jestergeoip-master".dir   = "master";
  inputs."jestergeoip-master".owner = "nim-nix-pkgs";
  inputs."jestergeoip-master".ref   = "master";
  inputs."jestergeoip-master".repo  = "jestergeoip";
  inputs."jestergeoip-master".type  = "github";
  inputs."jestergeoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestergeoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jestergeoip-v1_0_1".dir   = "v1_0_1";
  inputs."jestergeoip-v1_0_1".owner = "nim-nix-pkgs";
  inputs."jestergeoip-v1_0_1".ref   = "master";
  inputs."jestergeoip-v1_0_1".repo  = "jestergeoip";
  inputs."jestergeoip-v1_0_1".type  = "github";
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