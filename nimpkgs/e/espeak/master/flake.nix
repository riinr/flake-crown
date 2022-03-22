{
  description = ''Nim Espeak NG wrapper, for super easy Voice and Text-To-Speech'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-espeak-master.flake = false;
  inputs.src-espeak-master.owner = "juancarlospaco";
  inputs.src-espeak-master.ref   = "master";
  inputs.src-espeak-master.repo  = "nim-espeak";
  inputs.src-espeak-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-espeak-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-espeak-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}