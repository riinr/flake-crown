{
  description = ''DeepSpeech (Mozilla) bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deepspeech-v0_7_0.flake = false;
  inputs.src-deepspeech-v0_7_0.owner = "eagledot";
  inputs.src-deepspeech-v0_7_0.ref   = "v0_7_0";
  inputs.src-deepspeech-v0_7_0.repo  = "nim-deepspeech";
  inputs.src-deepspeech-v0_7_0.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deepspeech-v0_7_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-deepspeech-v0_7_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}