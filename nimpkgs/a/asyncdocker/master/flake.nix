{
  description = ''Asynchronous docker client written by Nim-lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncdocker-master.flake = false;
  inputs.src-asyncdocker-master.owner = "tulayang";
  inputs.src-asyncdocker-master.ref   = "refs/heads/master";
  inputs.src-asyncdocker-master.repo  = "asyncdocker";
  inputs.src-asyncdocker-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncdocker-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asyncdocker-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}