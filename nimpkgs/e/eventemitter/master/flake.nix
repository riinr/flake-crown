{
  description = ''event emitter for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eventemitter-master.flake = false;
  inputs.src-eventemitter-master.ref   = "refs/heads/master";
  inputs.src-eventemitter-master.owner = "al-bimani";
  inputs.src-eventemitter-master.repo  = "eventemitter";
  inputs.src-eventemitter-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eventemitter-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eventemitter-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}