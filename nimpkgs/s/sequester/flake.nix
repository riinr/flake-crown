{
  description = ''Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.'';
  inputs."sequester-master".url = "path:./master";
  inputs."sequester-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}