{
  description = ''threadsafe timerpool implementation for event purpose'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timerpool-master.flake = false;
  inputs.src-timerpool-master.owner = "mikra01";
  inputs.src-timerpool-master.ref   = "refs/heads/master";
  inputs.src-timerpool-master.repo  = "timerpool";
  inputs.src-timerpool-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timerpool-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-timerpool-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}