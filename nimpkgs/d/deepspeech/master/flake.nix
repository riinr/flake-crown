{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deepspeech-master.flake = false;
  inputs.src-deepspeech-master.owner = "eagledot";
  inputs.src-deepspeech-master.ref   = "refs/heads/master";
  inputs.src-deepspeech-master.repo  = "nim-deepspeech";
  inputs.src-deepspeech-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deepspeech-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-deepspeech-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}