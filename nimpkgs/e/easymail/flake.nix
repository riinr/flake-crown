{
  description = ''wrapper for the sendmail command'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."easymail-master".dir   = "master";
  inputs."easymail-master".owner = "nim-nix-pkgs";
  inputs."easymail-master".ref   = "master";
  inputs."easymail-master".repo  = "easymail";
  inputs."easymail-master".type  = "github";
  inputs."easymail-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easymail-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easymail-v0_1_0".dir   = "v0_1_0";
  inputs."easymail-v0_1_0".owner = "nim-nix-pkgs";
  inputs."easymail-v0_1_0".ref   = "master";
  inputs."easymail-v0_1_0".repo  = "easymail";
  inputs."easymail-v0_1_0".type  = "github";
  inputs."easymail-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easymail-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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