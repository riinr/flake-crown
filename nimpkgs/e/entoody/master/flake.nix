{
  description = ''A component/entity system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-entoody-master.flake = false;
  inputs.src-entoody-master.owner = "fowlmouth";
  inputs.src-entoody-master.ref   = "refs/heads/master";
  inputs.src-entoody-master.repo  = "entoody";
  inputs.src-entoody-master.type  = "bitbucket";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-entoody-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-entoody-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}