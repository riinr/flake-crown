{
  description = ''Proton template engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-proton-master.flake = false;
  inputs.src-proton-master.ref   = "refs/heads/master";
  inputs.src-proton-master.owner = "jasonrbriggs";
  inputs.src-proton-master.repo  = "proton-nim";
  inputs.src-proton-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-proton-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-proton-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}