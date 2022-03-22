{
  description = ''Wrapper for the libu2f server and client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libu2f-0_1_1.flake = false;
  inputs.src-libu2f-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-libu2f-0_1_1.owner = "FedericoCeratto";
  inputs.src-libu2f-0_1_1.repo  = "nim-libu2f";
  inputs.src-libu2f-0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libu2f-0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libu2f-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}