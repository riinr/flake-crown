{
  description = ''Convert bytes to kilobytes, megabytes, gigabytes, etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bytes2human-master".dir   = "master";
  inputs."bytes2human-master".owner = "nim-nix-pkgs";
  inputs."bytes2human-master".ref   = "master";
  inputs."bytes2human-master".repo  = "bytes2human";
  inputs."bytes2human-master".type  = "github";
  inputs."bytes2human-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytes2human-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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