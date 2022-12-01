{
  description = ''SMTP client implementation (originally in the stdlib).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."smtp-master".dir   = "master";
  inputs."smtp-master".owner = "nim-nix-pkgs";
  inputs."smtp-master".ref   = "master";
  inputs."smtp-master".repo  = "smtp";
  inputs."smtp-master".type  = "github";
  inputs."smtp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."smtp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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