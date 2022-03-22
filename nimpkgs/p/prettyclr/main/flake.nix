{
  description = ''Small library for working with colors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-prettyclr-main.flake = false;
  inputs.src-prettyclr-main.ref   = "refs/heads/main";
  inputs.src-prettyclr-main.owner = "prettybauble";
  inputs.src-prettyclr-main.repo  = "prettyclr";
  inputs.src-prettyclr-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-prettyclr-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-prettyclr-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}