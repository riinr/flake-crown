{
  description = ''A simple decimal library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simpledecimal-master.flake = false;
  inputs.src-simpledecimal-master.owner = "pigmej";
  inputs.src-simpledecimal-master.ref   = "refs/heads/master";
  inputs.src-simpledecimal-master.repo  = "nim-simple-decimal";
  inputs.src-simpledecimal-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simpledecimal-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simpledecimal-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}