{
  description = ''Marc21 parser for Nimlang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimmarc-master".dir   = "master";
  inputs."nimmarc-master".owner = "nim-nix-pkgs";
  inputs."nimmarc-master".ref   = "master";
  inputs."nimmarc-master".repo  = "nimmarc";
  inputs."nimmarc-master".type  = "github";
  inputs."nimmarc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmarc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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