{
  description = ''Central Bank of Argentina Gov API Client with debtor corporations info'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bcra-master".dir   = "master";
  inputs."bcra-master".owner = "nim-nix-pkgs";
  inputs."bcra-master".ref   = "master";
  inputs."bcra-master".repo  = "bcra";
  inputs."bcra-master".type  = "github";
  inputs."bcra-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcra-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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