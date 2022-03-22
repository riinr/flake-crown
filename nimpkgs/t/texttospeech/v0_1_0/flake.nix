{
  description = ''A client for the Google Cloud Text to Speech API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-texttospeech-v0_1_0.flake = false;
  inputs.src-texttospeech-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-texttospeech-v0_1_0.owner = "dom96";
  inputs.src-texttospeech-v0_1_0.repo  = "texttospeech";
  inputs.src-texttospeech-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-texttospeech-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-texttospeech-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}