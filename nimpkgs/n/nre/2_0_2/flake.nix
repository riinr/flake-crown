{
  description = ''A better regular expression library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nre-2_0_2.flake = false;
  inputs.src-nre-2_0_2.owner = "flaviut";
  inputs.src-nre-2_0_2.ref   = "refs/tags/2.0.2";
  inputs.src-nre-2_0_2.repo  = "nre";
  inputs.src-nre-2_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nre-2_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nre-2_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}