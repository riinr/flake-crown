{
  description = ''compare two number'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-qeu-master.flake = false;
  inputs.src-qeu-master.ref   = "refs/heads/master";
  inputs.src-qeu-master.owner = "hyu1996";
  inputs.src-qeu-master.repo  = "qeu";
  inputs.src-qeu-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-qeu-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-qeu-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}