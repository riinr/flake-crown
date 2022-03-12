{
  description = ''Ping hosts using tcp packets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tcping-master".url = "path:./master";
  inputs."tcping-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tcping-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tcping-v1_0_0".url = "path:./v1_0_0";
  inputs."tcping-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tcping-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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