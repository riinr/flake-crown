{
  description = ''Nim implementation of Google's Snappy compression.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-supersnappy-1_1_2.flake = false;
  inputs.src-supersnappy-1_1_2.ref   = "refs/tags/1.1.2";
  inputs.src-supersnappy-1_1_2.owner = "guzba";
  inputs.src-supersnappy-1_1_2.repo  = "supersnappy";
  inputs.src-supersnappy-1_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-1_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-supersnappy-1_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}