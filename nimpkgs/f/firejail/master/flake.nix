{
  description = ''Firejail wrapper for Nim, Isolate your Production App before its too late!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-firejail-master.flake = false;
  inputs.src-firejail-master.owner = "juancarlospaco";
  inputs.src-firejail-master.ref   = "refs/heads/master";
  inputs.src-firejail-master.repo  = "nim-firejail";
  inputs.src-firejail-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-firejail-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-firejail-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}