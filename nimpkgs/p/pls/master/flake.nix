{
  description = ''A simple but powerful task runner that lets you define your own commands by editing a YAML configuration file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pls-master.flake = false;
  inputs.src-pls-master.owner = "h3rald";
  inputs.src-pls-master.ref   = "refs/heads/master";
  inputs.src-pls-master.repo  = "pls";
  inputs.src-pls-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pls-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pls-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}