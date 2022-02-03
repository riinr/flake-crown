{
  description = ''Unified db access module, providing a single library module to access the db_sqlite, db_mysql and db_postgres modules.'';
  inputs.src-db-1_1_0.flake = false;
  inputs.src-db-1_1_0.type = "github";
  inputs.src-db-1_1_0.owner = "jlp765";
  inputs.src-db-1_1_0.repo = "db";
  inputs.src-db-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-db-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}