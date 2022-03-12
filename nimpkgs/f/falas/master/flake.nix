{
  description = ''fragment-aware assembler for short reads'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-falas-master.flake = false;
  inputs.src-falas-master.owner = "brentp";
  inputs.src-falas-master.ref   = "refs/heads/master";
  inputs.src-falas-master.repo  = "falas";
  inputs.src-falas-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-falas-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-falas-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}