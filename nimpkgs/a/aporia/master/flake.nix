{
  description = ''A Nim IDE.'';
  inputs.src-aporia-master.flake = false;
  inputs.src-aporia-master.type = "github";
  inputs.src-aporia-master.owner = "nim-lang";
  inputs.src-aporia-master.repo = "Aporia";
  inputs.src-aporia-master.ref = "refs/heads/master";
  
  
  inputs."gtk2".type = "github";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".repo = "flake-nimble";
  inputs."gtk2".ref = "flake-pinning";
  inputs."gtk2".dir = "nimpkgs/g/gtk2";

  
  inputs."dialogs".type = "github";
  inputs."dialogs".owner = "riinr";
  inputs."dialogs".repo = "flake-nimble";
  inputs."dialogs".ref = "flake-pinning";
  inputs."dialogs".dir = "nimpkgs/d/dialogs";

  outputs = { self, nixpkgs, src-aporia-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aporia-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-aporia-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}