{
  description = ''DeepSpeech (Mozilla) bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deepspeech-v0_7_1.flake = false;
  inputs.src-deepspeech-v0_7_1.ref   = "refs/tags/v0.7.1";
  inputs.src-deepspeech-v0_7_1.owner = "eagledot";
  inputs.src-deepspeech-v0_7_1.repo  = "nim-deepspeech";
  inputs.src-deepspeech-v0_7_1.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deepspeech-v0_7_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-deepspeech-v0_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}