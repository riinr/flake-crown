{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-c2nim-master.flake = false;
  inputs.src-c2nim-master.owner = "nim-lang";
  inputs.src-c2nim-master.ref   = "refs/heads/master";
  inputs.src-c2nim-master.repo  = "c2nim";
  inputs.src-c2nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-c2nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-c2nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}