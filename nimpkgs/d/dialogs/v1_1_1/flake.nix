{
  description = ''wraps GTK+ or Windows' open file dialogs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dialogs-v1_1_1.flake = false;
  inputs.src-dialogs-v1_1_1.owner = "nim-lang";
  inputs.src-dialogs-v1_1_1.ref   = "refs/tags/v1.1.1";
  inputs.src-dialogs-v1_1_1.repo  = "dialogs";
  inputs.src-dialogs-v1_1_1.type  = "github";
  
  inputs."gtk2".dir   = "nimpkgs/g/gtk2";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".ref   = "flake-pinning";
  inputs."gtk2".repo  = "flake-nimble";
  inputs."gtk2".type  = "github";
  inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dialogs-v1_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dialogs-v1_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}