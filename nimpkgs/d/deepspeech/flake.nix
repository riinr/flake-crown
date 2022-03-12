{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."deepspeech-master".url = "path:./master";
  inputs."deepspeech-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deepspeech-v0_7_0".url = "path:./v0_7_0";
  inputs."deepspeech-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deepspeech-v0_7_1".url = "path:./v0_7_1";
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