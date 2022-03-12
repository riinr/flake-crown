{
  description = ''Library for parsing text/gemini'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-parsegemini-master.flake = false;
  inputs.src-parsegemini-master.owner = "autumngray";
  inputs.src-parsegemini-master.ref   = "refs/heads/master";
  inputs.src-parsegemini-master.repo  = "parsegemini";
  inputs.src-parsegemini-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-parsegemini-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-parsegemini-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}