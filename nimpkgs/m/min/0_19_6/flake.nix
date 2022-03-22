{
  description = ''A small but practical concatenative programming language and shell.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-min-0_19_6.flake = false;
  inputs.src-min-0_19_6.owner = "h3rald";
  inputs.src-min-0_19_6.ref   = "0_19_6";
  inputs.src-min-0_19_6.repo  = "min";
  inputs.src-min-0_19_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-min-0_19_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-min-0_19_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}