{
  description = ''Thin lib to find if chrome exists on Windows, Mac, or Linux.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimchromepath-master".dir   = "master";
  inputs."nimchromepath-master".owner = "nim-nix-pkgs";
  inputs."nimchromepath-master".ref   = "master";
  inputs."nimchromepath-master".repo  = "nimchromepath";
  inputs."nimchromepath-master".type  = "github";
  inputs."nimchromepath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimchromepath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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