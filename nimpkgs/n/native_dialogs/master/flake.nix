{
  description = ''Implements framework-agnostic native operating system dialogs calls'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-native_dialogs-master.flake = false;
  inputs.src-native_dialogs-master.owner = "SSPkrolik";
  inputs.src-native_dialogs-master.ref   = "refs/heads/master";
  inputs.src-native_dialogs-master.repo  = "nim-native-dialogs";
  inputs.src-native_dialogs-master.type  = "github";
  
  inputs."oldwinapi".dir   = "nimpkgs/o/oldwinapi";
  inputs."oldwinapi".owner = "riinr";
  inputs."oldwinapi".ref   = "flake-pinning";
  inputs."oldwinapi".repo  = "flake-nimble";
  inputs."oldwinapi".type  = "github";
  inputs."oldwinapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-native_dialogs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-native_dialogs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}