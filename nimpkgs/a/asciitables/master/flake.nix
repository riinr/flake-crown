{
  description = ''terminal ascii tables for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asciitables-master.flake = false;
  inputs.src-asciitables-master.owner = "xmonader";
  inputs.src-asciitables-master.ref   = "refs/heads/master";
  inputs.src-asciitables-master.repo  = "nim-asciitables";
  inputs.src-asciitables-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asciitables-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asciitables-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}