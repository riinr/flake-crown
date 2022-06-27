{
  description = ''Test if an ip address is private'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-enthus1ast-nimisprivateip-master".dir   = "master";
  inputs."github-enthus1ast-nimisprivateip-master".owner = "nim-nix-pkgs";
  inputs."github-enthus1ast-nimisprivateip-master".ref   = "master";
  inputs."github-enthus1ast-nimisprivateip-master".repo  = "github-enthus1ast-nimisprivateip";
  inputs."github-enthus1ast-nimisprivateip-master".type  = "github";
  inputs."github-enthus1ast-nimisprivateip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-enthus1ast-nimisprivateip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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