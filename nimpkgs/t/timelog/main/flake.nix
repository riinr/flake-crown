{
  description = ''Simple nimble package to log monotic timings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timelog-main.flake = false;
  inputs.src-timelog-main.owner = "Clonkk";
  inputs.src-timelog-main.ref   = "refs/heads/main";
  inputs.src-timelog-main.repo  = "timelog";
  inputs.src-timelog-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timelog-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-timelog-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}