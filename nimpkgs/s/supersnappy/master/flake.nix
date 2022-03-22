{
  description = ''Nim implementation of Google's Snappy compression.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-supersnappy-master.flake = false;
  inputs.src-supersnappy-master.ref   = "refs/heads/master";
  inputs.src-supersnappy-master.owner = "guzba";
  inputs.src-supersnappy-master.repo  = "supersnappy";
  inputs.src-supersnappy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-supersnappy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}