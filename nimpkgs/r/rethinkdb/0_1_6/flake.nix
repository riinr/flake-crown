{
  description = ''RethinkDB driver for Nim'';
  inputs.src-rethinkdb-0_1_6.flake = false;
  inputs.src-rethinkdb-0_1_6.type = "github";
  inputs.src-rethinkdb-0_1_6.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-0_1_6.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-0_1_6.ref = "refs/tags/0.1.6";
  
  
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  outputs = { self, nixpkgs, src-rethinkdb-0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rethinkdb-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}