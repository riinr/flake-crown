{
  description = ''Convert numbers to words'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-numToWord-master.flake = false;
  inputs.src-numToWord-master.ref   = "refs/heads/master";
  inputs.src-numToWord-master.owner = "thisago";
  inputs.src-numToWord-master.repo  = "numToWord";
  inputs.src-numToWord-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-numToWord-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-numToWord-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}