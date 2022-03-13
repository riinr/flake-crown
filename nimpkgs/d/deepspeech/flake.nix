{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."deepspeech-master".dir   = "master";
  inputs."deepspeech-master".owner = "nim-nix-pkgs";
  inputs."deepspeech-master".ref   = "master";
  inputs."deepspeech-master".repo  = "deepspeech";
  inputs."deepspeech-master".type  = "github";
  inputs."deepspeech-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deepspeech-v0_7_0".dir   = "v0_7_0";
  inputs."deepspeech-v0_7_0".owner = "nim-nix-pkgs";
  inputs."deepspeech-v0_7_0".ref   = "master";
  inputs."deepspeech-v0_7_0".repo  = "deepspeech";
  inputs."deepspeech-v0_7_0".type  = "github";
  inputs."deepspeech-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deepspeech-v0_7_1".dir   = "v0_7_1";
  inputs."deepspeech-v0_7_1".owner = "nim-nix-pkgs";
  inputs."deepspeech-v0_7_1".ref   = "master";
  inputs."deepspeech-v0_7_1".repo  = "deepspeech";
  inputs."deepspeech-v0_7_1".type  = "github";
  inputs."deepspeech-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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