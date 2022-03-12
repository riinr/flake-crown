{
  description = ''client for sonic search backend'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sonic-master.flake = false;
  inputs.src-sonic-master.owner = "xmonader";
  inputs.src-sonic-master.ref   = "refs/heads/master";
  inputs.src-sonic-master.repo  = "nim-sonic-client";
  inputs.src-sonic-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sonic-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sonic-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}