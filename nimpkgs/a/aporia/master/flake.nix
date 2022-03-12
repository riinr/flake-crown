{
  description = ''A Nim IDE.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aporia-master.flake = false;
  inputs.src-aporia-master.owner = "nim-lang";
  inputs.src-aporia-master.ref   = "refs/heads/master";
  inputs.src-aporia-master.repo  = "Aporia";
  inputs.src-aporia-master.type  = "github";
  
  inputs."gtk2".owner = "nim-nix-pkgs";
  inputs."gtk2".ref   = "master";
  inputs."gtk2".repo  = "gtk2";
  inputs."gtk2".type  = "github";
  inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dialogs".owner = "nim-nix-pkgs";
  inputs."dialogs".ref   = "master";
  inputs."dialogs".repo  = "dialogs";
  inputs."dialogs".type  = "github";
  inputs."dialogs".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dialogs".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aporia-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aporia-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}