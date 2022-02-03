{
  description = ''Implements framework-agnostic native operating system dialogs calls'';
  inputs.src-native_dialogs-master.flake = false;
  inputs.src-native_dialogs-master.type = "github";
  inputs.src-native_dialogs-master.owner = "SSPkrolik";
  inputs.src-native_dialogs-master.repo = "nim-native-dialogs";
  inputs.src-native_dialogs-master.ref = "refs/heads/master";
  
  
  inputs."oldwinapi".url = "path:../../../o/oldwinapi";
  inputs."oldwinapi".type = "github";
  inputs."oldwinapi".owner = "riinr";
  inputs."oldwinapi".repo = "flake-nimble";
  inputs."oldwinapi".ref = "flake-pinning";
  inputs."oldwinapi".dir = "nimpkgs/o/oldwinapi";

  
  inputs."gtk2".url = "path:../../../g/gtk2";
  inputs."gtk2".type = "github";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".repo = "flake-nimble";
  inputs."gtk2".ref = "flake-pinning";
  inputs."gtk2".dir = "nimpkgs/g/gtk2";

  outputs = { self, nixpkgs, src-native_dialogs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-native_dialogs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-native_dialogs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}