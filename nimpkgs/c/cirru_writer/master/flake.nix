{
  description = ''Cirru writer in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_writer-master.flake = false;
  inputs.src-cirru_writer-master.ref   = "refs/heads/master";
  inputs.src-cirru_writer-master.owner = "Cirru";
  inputs.src-cirru_writer-master.repo  = "writer.nim";
  inputs.src-cirru_writer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_writer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_writer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}