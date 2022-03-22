{
  description = ''Porting some Python / Kotlin features to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pykot-master.flake = false;
  inputs.src-pykot-master.ref   = "refs/heads/master";
  inputs.src-pykot-master.owner = "jabbalaci";
  inputs.src-pykot-master.repo  = "nimpykot";
  inputs.src-pykot-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pykot-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pykot-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}