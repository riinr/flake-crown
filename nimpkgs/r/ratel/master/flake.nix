{
  description = ''Zero-cost abstractions for microcontrollers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ratel-master.flake = false;
  inputs.src-ratel-master.owner = "PMunch";
  inputs.src-ratel-master.ref   = "refs/heads/master";
  inputs.src-ratel-master.repo  = "ratel";
  inputs.src-ratel-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ratel-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ratel-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}