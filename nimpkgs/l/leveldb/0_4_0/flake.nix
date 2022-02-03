{
  description = ''LevelDB bindings'';
  inputs.src-leveldb-0_4_0.flake = false;
  inputs.src-leveldb-0_4_0.type = "github";
  inputs.src-leveldb-0_4_0.owner = "zielmicha";
  inputs.src-leveldb-0_4_0.repo = "leveldb.nim";
  inputs.src-leveldb-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, src-leveldb-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-leveldb-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-leveldb-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}