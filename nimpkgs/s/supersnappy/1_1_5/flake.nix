{
  description = ''Nim implementation of Google's Snappy compression.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-supersnappy-1_1_5.flake = false;
  inputs.src-supersnappy-1_1_5.ref   = "refs/tags/1.1.5";
  inputs.src-supersnappy-1_1_5.owner = "guzba";
  inputs.src-supersnappy-1_1_5.repo  = "supersnappy";
  inputs.src-supersnappy-1_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-1_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-supersnappy-1_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}