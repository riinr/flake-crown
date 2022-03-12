{
  description = ''Library for shell scripting in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimshell-master.flake = false;
  inputs.src-nimshell-master.owner = "vegansk";
  inputs.src-nimshell-master.ref   = "refs/heads/master";
  inputs.src-nimshell-master.repo  = "nimshell";
  inputs.src-nimshell-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimshell-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimshell-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}