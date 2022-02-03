{
  description = ''Nim wrapper for the PARI library'';
  inputs.src-nimpari-master.flake = false;
  inputs.src-nimpari-master.type = "github";
  inputs.src-nimpari-master.owner = "BarrOff";
  inputs.src-nimpari-master.repo = "nim-pari";
  inputs.src-nimpari-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimpari-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpari-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpari-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}