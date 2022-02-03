{
  description = ''Nim modules for access to system Bluetooth resources.'';
  inputs.src-nimbluez-v0_1_2.flake = false;
  inputs.src-nimbluez-v0_1_2.type = "github";
  inputs.src-nimbluez-v0_1_2.owner = "Electric-Blue";
  inputs.src-nimbluez-v0_1_2.repo = "NimBluez";
  inputs.src-nimbluez-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nimbluez-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbluez-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbluez-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}