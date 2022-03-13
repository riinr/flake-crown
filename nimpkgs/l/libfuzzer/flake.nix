{
  description = ''Thin interface for libFuzzer, an in-process, coverage-guided, evolutionary fuzzing engine.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libfuzzer-master".dir   = "master";
  inputs."libfuzzer-master".owner = "nim-nix-pkgs";
  inputs."libfuzzer-master".ref   = "master";
  inputs."libfuzzer-master".repo  = "libfuzzer";
  inputs."libfuzzer-master".type  = "github";
  inputs."libfuzzer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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