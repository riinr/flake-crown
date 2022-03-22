{
  description = ''Nim's official UI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ui-master.flake = false;
  inputs.src-ui-master.ref   = "refs/heads/master";
  inputs.src-ui-master.owner = "nim-lang";
  inputs.src-ui-master.repo  = "ui";
  inputs.src-ui-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}