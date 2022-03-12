{
  description = ''FastQ and Fasta readers for NIM'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fastx_reader-master.flake = false;
  inputs.src-fastx_reader-master.owner = "ahcm";
  inputs.src-fastx_reader-master.ref   = "refs/heads/master";
  inputs.src-fastx_reader-master.repo  = "fastx_reader";
  inputs.src-fastx_reader-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fastx_reader-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fastx_reader-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}