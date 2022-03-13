{
  description = ''A package to get the MAC address of a local IP address'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."getmac-master".dir   = "master";
  inputs."getmac-master".owner = "nim-nix-pkgs";
  inputs."getmac-master".ref   = "master";
  inputs."getmac-master".repo  = "getmac";
  inputs."getmac-master".type  = "github";
  inputs."getmac-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getmac-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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