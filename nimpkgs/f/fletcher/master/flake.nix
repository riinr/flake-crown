{
  description = ''Implementation of the Fletcher checksum algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fletcher-master.flake = false;
  inputs.src-fletcher-master.ref   = "refs/heads/master";
  inputs.src-fletcher-master.owner = "Akito13";
  inputs.src-fletcher-master.repo  = "nim-fletcher";
  inputs.src-fletcher-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fletcher-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fletcher-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}