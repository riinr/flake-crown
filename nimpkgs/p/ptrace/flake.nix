{
  description = ''ptrace wrapper for Nim'';
  inputs."ptrace-master".url = "path:./master";
  inputs."ptrace-0_0_2".url = "path:./0_0_2";
  inputs."ptrace-0_0_3".url = "path:./0_0_3";
  inputs."ptrace-0_0_4".url = "path:./0_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}