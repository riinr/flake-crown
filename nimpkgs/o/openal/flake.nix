{
  description = ''An OpenAL wrapper.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openal-master".url = "path:./master";
  inputs."openal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openal-0_1_1".url = "path:./0_1_1";
  inputs."openal-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openal-v0_1_0".url = "path:./v0_1_0";
  inputs."openal-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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