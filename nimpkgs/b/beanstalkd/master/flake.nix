{
  description = ''A beanstalkd work queue client library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-beanstalkd-master.flake = false;
  inputs.src-beanstalkd-master.owner = "tormaroe";
  inputs.src-beanstalkd-master.ref   = "refs/heads/master";
  inputs.src-beanstalkd-master.repo  = "beanstalkd.nim";
  inputs.src-beanstalkd-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-beanstalkd-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-beanstalkd-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}