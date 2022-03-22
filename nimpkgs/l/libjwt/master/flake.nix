{
  description = ''Nim binding for libjwt'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libjwt-master.flake = false;
  inputs.src-libjwt-master.ref   = "refs/heads/master";
  inputs.src-libjwt-master.owner = "nimscale";
  inputs.src-libjwt-master.repo  = "nim-libjwt";
  inputs.src-libjwt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libjwt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libjwt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}