{
  description = ''Yet another PCRE library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nre-2_0_1.flake = false;
  inputs.src-nre-2_0_1.owner = "flaviut";
  inputs.src-nre-2_0_1.ref   = "2_0_1";
  inputs.src-nre-2_0_1.repo  = "nre.git";
  inputs.src-nre-2_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nre-2_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nre-2_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}