{
  description = ''proc to join (and leave) a multicast group'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."multicast-master".dir   = "master";
  inputs."multicast-master".owner = "nim-nix-pkgs";
  inputs."multicast-master".ref   = "master";
  inputs."multicast-master".repo  = "multicast";
  inputs."multicast-master".type  = "github";
  inputs."multicast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."multicast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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