{
  description = ''A Jester web plugin that embeds key information into a JSON object.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jesterjson-master".dir   = "master";
  inputs."jesterjson-master".owner = "nim-nix-pkgs";
  inputs."jesterjson-master".ref   = "master";
  inputs."jesterjson-master".repo  = "jesterjson";
  inputs."jesterjson-master".type  = "github";
  inputs."jesterjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterjson-v1_0_1".dir   = "v1_0_1";
  inputs."jesterjson-v1_0_1".owner = "nim-nix-pkgs";
  inputs."jesterjson-v1_0_1".ref   = "master";
  inputs."jesterjson-v1_0_1".repo  = "jesterjson";
  inputs."jesterjson-v1_0_1".type  = "github";
  inputs."jesterjson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterjson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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