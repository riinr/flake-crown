{
  description = ''A Jester web plugin that gets a pooled MongoDB connection for each web query.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jestermongopool-master".url = "path:./master";
  inputs."jestermongopool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestermongopool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jestermongopool-v1_0_1".url = "path:./v1_0_1";
  inputs."jestermongopool-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestermongopool-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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