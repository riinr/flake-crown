{
  description = ''POP3 client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pop3-master".dir   = "master";
  inputs."pop3-master".owner = "nim-nix-pkgs";
  inputs."pop3-master".ref   = "master";
  inputs."pop3-master".repo  = "pop3";
  inputs."pop3-master".type  = "github";
  inputs."pop3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pop3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pop3-0_1_1".dir   = "0_1_1";
  inputs."pop3-0_1_1".owner = "nim-nix-pkgs";
  inputs."pop3-0_1_1".ref   = "master";
  inputs."pop3-0_1_1".repo  = "pop3";
  inputs."pop3-0_1_1".type  = "github";
  inputs."pop3-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pop3-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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