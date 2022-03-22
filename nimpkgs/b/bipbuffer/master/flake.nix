{
  description = ''Bi-partite buffer implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bipbuffer-master.flake = false;
  inputs.src-bipbuffer-master.ref   = "refs/heads/master";
  inputs.src-bipbuffer-master.owner = "MarcAzar";
  inputs.src-bipbuffer-master.repo  = "BipBuffer";
  inputs.src-bipbuffer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bipbuffer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bipbuffer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}