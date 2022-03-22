{
  description = ''Implements framework-agnostic native operating system dialogs calls'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-native_dialogs-master.flake = false;
  inputs.src-native_dialogs-master.ref   = "refs/heads/master";
  inputs.src-native_dialogs-master.owner = "SSPkrolik";
  inputs.src-native_dialogs-master.repo  = "nim-native-dialogs";
  inputs.src-native_dialogs-master.type  = "github";
  
  inputs."oldwinapi".owner = "nim-nix-pkgs";
  inputs."oldwinapi".ref   = "master";
  inputs."oldwinapi".repo  = "oldwinapi";
  inputs."oldwinapi".dir   = "v2_1_0";
  inputs."oldwinapi".type  = "github";
  inputs."oldwinapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gtk2".owner = "nim-nix-pkgs";
  inputs."gtk2".ref   = "master";
  inputs."gtk2".repo  = "gtk2";
  inputs."gtk2".dir   = "v1_3";
  inputs."gtk2".type  = "github";
  inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-native_dialogs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-native_dialogs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}