{
  description = ''Easy to use Nim/Nimscript interop, for scripting logic in compiled binaries.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimscripter-master".dir   = "master";
  inputs."nimscripter-master".owner = "nim-nix-pkgs";
  inputs."nimscripter-master".ref   = "master";
  inputs."nimscripter-master".repo  = "nimscripter";
  inputs."nimscripter-master".type  = "github";
  inputs."nimscripter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimscripter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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