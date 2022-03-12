{
  description = ''Cross platform system API for os and net.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xio-master.flake = false;
  inputs.src-xio-master.owner = "xflywind";
  inputs.src-xio-master.ref   = "refs/heads/master";
  inputs.src-xio-master.repo  = "async";
  inputs.src-xio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}