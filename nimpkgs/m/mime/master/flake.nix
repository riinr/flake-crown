{
  description = ''mime generator (email with attachments)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mime-master.flake = false;
  inputs.src-mime-master.ref   = "refs/heads/master";
  inputs.src-mime-master.owner = "enthus1ast";
  inputs.src-mime-master.repo  = "nimMime";
  inputs.src-mime-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mime-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mime-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}