{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';
  inputs."redisparser-master".url = "path:./master";
  inputs."redisparser-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}