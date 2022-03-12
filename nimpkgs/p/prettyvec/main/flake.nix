{
  description = ''Small library for working with vectors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-prettyvec-main.flake = false;
  inputs.src-prettyvec-main.owner = "prettybauble";
  inputs.src-prettyvec-main.ref   = "refs/heads/main";
  inputs.src-prettyvec-main.repo  = "prettyvec";
  inputs.src-prettyvec-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-prettyvec-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-prettyvec-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}