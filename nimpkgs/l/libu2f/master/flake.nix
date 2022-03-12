{
  description = ''A wrapper for libu2f, a library for FIDO/U2F'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libu2f-master.flake = false;
  inputs.src-libu2f-master.owner = "FedericoCeratto";
  inputs.src-libu2f-master.ref   = "refs/heads/master";
  inputs.src-libu2f-master.repo  = "nim-libu2f";
  inputs.src-libu2f-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libu2f-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libu2f-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}