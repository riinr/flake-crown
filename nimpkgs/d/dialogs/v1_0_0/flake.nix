{
  description = ''wraps GTK+ or Windows' open file dialogs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dialogs-v1_0_0.flake = false;
  inputs.src-dialogs-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-dialogs-v1_0_0.owner = "nim-lang";
  inputs.src-dialogs-v1_0_0.repo  = "dialogs";
  inputs.src-dialogs-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dialogs-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dialogs-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}