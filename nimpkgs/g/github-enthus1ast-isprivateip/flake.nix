{
  description = ''Test if an ip address is private'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."isprivateip-master".dir   = "master";
  inputs."isprivateip-master".owner = "nim-nix-pkgs";
  inputs."isprivateip-master".ref   = "master";
  inputs."isprivateip-master".repo  = "isprivateip";
  inputs."isprivateip-master".type  = "github";
  inputs."isprivateip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isprivateip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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