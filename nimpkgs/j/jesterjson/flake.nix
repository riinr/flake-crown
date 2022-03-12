{
  description = ''A Jester web plugin that embeds key information into a JSON object.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jesterjson-master".url = "path:./master";
  inputs."jesterjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterjson-v1_0_1".url = "path:./v1_0_1";
  inputs."jesterjson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterjson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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