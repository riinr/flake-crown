{
  description = ''A Nim IDE.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aporia-v0_4_2.flake = false;
  inputs.src-aporia-v0_4_2.owner = "nim-lang";
  inputs.src-aporia-v0_4_2.ref   = "refs/tags/v0.4.2";
  inputs.src-aporia-v0_4_2.repo  = "Aporia";
  inputs.src-aporia-v0_4_2.type  = "github";
  
  inputs."gtk2".dir   = "nimpkgs/g/gtk2";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".ref   = "flake-pinning";
  inputs."gtk2".repo  = "flake-nimble";
  inputs."gtk2".type  = "github";
  inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dialogs".dir   = "nimpkgs/d/dialogs";
  inputs."dialogs".owner = "riinr";
  inputs."dialogs".ref   = "flake-pinning";
  inputs."dialogs".repo  = "flake-nimble";
  inputs."dialogs".type  = "github";
  inputs."dialogs".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dialogs".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aporia-v0_4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aporia-v0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}