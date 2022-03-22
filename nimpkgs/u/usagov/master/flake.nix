{
  description = ''USA Code.Gov MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-usagov-master.flake = false;
  inputs.src-usagov-master.ref   = "refs/heads/master";
  inputs.src-usagov-master.owner = "juancarlospaco";
  inputs.src-usagov-master.repo  = "nim-usagov";
  inputs.src-usagov-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-usagov-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-usagov-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}